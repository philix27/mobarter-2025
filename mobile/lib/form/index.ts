import { useState } from 'react';

export function useAppForm<FormData>(defaultValues: FormData) {
  const [formData, setFormData] = useState<FormData>(defaultValues!);
  // const [errors, setErrors] = useState<FormData>(defaultValues!);

  const [_err, _setErrors] = useState<Record<keyof FormData, string>>();
  // const [_err, _setErrors] = useState<object>();
  const setErr = (key: keyof FormData, msg: string) => {
    _setErrors({ ..._err, [key]: msg });
    // _setErrors({ ..._err, [key]: msg });
  };

  const handleChange = (field: keyof typeof formData, value: string) => {
    setFormData({ ...formData!, [field]: value });
    // setErrors({ ...errors!, [field]: '' }); // Clear error when typing
    setErr(field, '');
  };

  return {
    formData,
    setFormData,
    errors: _err,
    handleChange,
    setErrors: setErr,
  };
}
