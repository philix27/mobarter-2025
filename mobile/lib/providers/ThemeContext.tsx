import React, { createContext, useState, useEffect, ReactNode } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useColorScheme } from "react-native";

type ThemeMode = "dark" | "light";
export const ThemeContext = createContext<{
  theme: ThemeMode;
  toggleTheme: () => void;
  useSystemTheme: () => void;
}>({
  theme: "dark",
  toggleTheme: () => {},
  useSystemTheme: () => {},
});

export const ThemeProvider = ({ children }: { children: ReactNode }) => {
  const colorScheme = useColorScheme();
  const [theme, setTheme] = useState<ThemeMode>("light");

  useEffect(() => {
    // Load saved theme from storage
    const getTheme = async () => {
      try {
        const savedTheme = await AsyncStorage.getItem("theme");
        if (savedTheme) {
          setTheme(savedTheme as ThemeMode);
        }
      } catch (error) {
        console.log("Error loading theme:", error);
      }
    };
    getTheme();
  }, []);

  useEffect(() => {
    // set theme to system selected theme
    if (colorScheme) {
      setTheme(colorScheme);
    }
  }, [colorScheme]);

  const useSystemTheme = () => {
    setTheme(colorScheme as ThemeMode);
    AsyncStorage.setItem("theme", colorScheme as ThemeMode);
  };

  const toggleTheme = () => {
    const newTheme = theme === "light" ? "dark" : "light";
    setTheme(newTheme);
    AsyncStorage.setItem("theme", newTheme);
  };

  return (
    <ThemeContext.Provider value={{ theme, toggleTheme, useSystemTheme }}>
      {children}
    </ThemeContext.Provider>
  );
};
