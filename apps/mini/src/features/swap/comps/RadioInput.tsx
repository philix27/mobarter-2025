import { Field } from 'formik'

// import styles from 'src/components/input/RadioInput.module.css'

interface Props {
  name: string
  value: string
  label: string
}

export function RadioInput({ name, value, label }: Props) {
  return (
    <label className={''}>
      <div className="text-sm tracking-tight">{label}</div>
      <Field type="radio" name={name} value={value} />
      <span className={''}></span>
    </label>
  )
}
