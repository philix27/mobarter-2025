import React from 'react';
import { StyleSheet } from 'react-native';
import { Dropdown } from 'react-native-element-dropdown';
import AntDesign from '@expo/vector-icons/AntDesign';
import { useColor } from '@/hooks/useColor';
import { TView } from '../TView';
import { TText } from '../TText';
import Label from './Label';
import ErrMsg from './ErrMsg';

type IProps = {
  label?: string;
  value?: string | undefined;
  placeholder?: string | undefined;
  error?: string | undefined;
  search?: boolean | undefined;
  onChange: (item: { _index: 0; label: string; value: string }) => void;
  data: {
    label: string;
    value: string;
  }[];
};

export default function InputDropdown({
  search,
  data,
  value,
  ...props
}: IProps) {
  const theme = useColor();
  const renderItem = (item: { label: string; value: null }) => {
    return (
      <TView style={[styles.item, { backgroundColor: theme.accent }]}>
        <TText style={styles.textItem}>{item.label}</TText>
        {item.value === value && (
          <AntDesign
            style={styles.icon}
            color={theme.muted}
            name="Safety"
            size={20}
          />
        )}
      </TView>
    );
  };

  return (
    <TView style={{ marginVertical: 8 }}>
      {props.label && <Label label={props.label} />}
      <Dropdown
        style={[
          styles.dropdown,
          {
            backgroundColor: theme.background,
            borderColor: theme.border,
            borderWidth: 1,
          },
        ]}
        placeholderStyle={[
          styles.placeholderStyle,
          { backgroundColor: theme.background, color: theme.muted },
        ]}
        selectedTextStyle={[
          styles.selectedTextStyle,
          { backgroundColor: theme.background, color: theme.text },
        ]}
        inputSearchStyle={[
          styles.inputSearchStyle,
          { color: theme.text, borderRadius: 8 },
        ]}
        iconStyle={[
          styles.iconStyle,
          {
            backgroundColor: theme.background,
            borderColor: theme.muted,
            borderRadius: 8,
          },
        ]}
        itemContainerStyle={{
          backgroundColor: theme.background,
          borderRadius: 8,
        }}
        containerStyle={{ backgroundColor: theme.background, borderRadius: 8 }}
        data={data}
        search
        maxHeight={300}
        labelField="label"
        valueField="value"
        placeholder={props.placeholder}
        searchPlaceholder="Search..."
        value={value}
        onChange={props.onChange}
        renderLeftIcon={() => (
          <AntDesign
            style={styles.icon}
            color={theme.muted}
            name="Safety"
            size={20}
          />
        )}
        renderItem={renderItem}
      />
      {props.error && <ErrMsg msg={props.error} />}
    </TView>
  );
}

const styles = StyleSheet.create({
  dropdown: {
    height: 50,
    borderRadius: 5,
    paddingHorizontal: 10,
    paddingVertical: 12,
    padding: 12,
    // shadowColor: "#000",
    // shadowOffset: {
    //   width: 0,
    //   height: 1,
    // },
    // shadowOpacity: 0.2,
    // shadowRadius: 1.41,

    elevation: 2,
  },
  icon: {
    marginRight: 5,
  },
  item: {
    paddingVertical: 8,
    paddingHorizontal: 10,
    marginBottom: 2,
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  textItem: {
    flex: 1,
    fontSize: 14,
  },
  placeholderStyle: {
    fontSize: 16,
  },
  selectedTextStyle: {
    fontSize: 16,
  },
  iconStyle: {
    width: 20,
    height: 20,
  },
  inputSearchStyle: {
    height: 40,
    fontSize: 16,
  },
});
