// Basic Server-Driven UI (SDUI) boilerplate with Zustand and dynamic renderer

import React, { useEffect } from 'react'
import { View, Text, TextInput, Button, ScrollView } from 'react-native'
import { create } from 'zustand'
import axios from 'axios'

// ---------- STATE MANAGEMENT ----------
const useUIStore = create((set) => ({
  schema: null,
  formData: {},
  setSchema: (schema) => set({ schema }),
  setFormValue: (key, value) =>
    set((state) => ({
      formData: { ...state.formData, [key]: value },
    })),
}))

// ---------- SCHEMA FETCHER ----------
const fetchSchema = async () => {
  const response = await axios.get('https://your-api.com/ui-schema')
  return response.data
}


// ---------- DYNAMIC RENDERER ----------
const DynamicRenderer = () => {
  const { schema } = useUIStore()
  if (!schema || !Array.isArray(schema.components)) return null

  return (
    <ScrollView>
      {schema.components.map((comp, idx) => (
        <ComponentMapper key={idx} component={comp.type} props={comp.props} />
      ))}
    </ScrollView>
  )
}

// ---------- MAIN APP ----------
const App = () => {
  const { setSchema } = useUIStore()

  useEffect(() => {
    fetchSchema().then((data) => setSchema(data))
  }, [])

  return (
    <View style={{ flex: 1, paddingTop: 50 }}>
      <DynamicRenderer />
    </View>
  )
}

export default App
