import * as React from 'react';
import Svg, { SvgProps, Circle, Path } from 'react-native-svg';
import { memo } from 'react';
const SvgComponent = (props: SvgProps) => (
  <Svg width={500} height={500} fill="none" {...props}>
    <Circle cx={250} cy={250} r={250} fill="#A5E5F7" />
    <Path
      fill="#000"
      fillRule="evenodd"
      d="M194.252 159.008c-48.585 16.741-83.49 62.86-83.49 117.131 0 68.405 55.453 123.859 123.858 123.859 53.835 0 99.648-34.346 116.722-82.321h-36.824c-15.012 28.817-45.157 48.494-79.898 48.494-49.723 0-90.032-40.309-90.032-90.032 0-35.209 20.211-65.697 49.664-80.497v-36.634Z"
      clipRule="evenodd"
    />
    <Path
      fill="#000"
      d="M269.485 100.002h-38.434v187.37h38.434v-63.24l13.665-13.664 49.322 76.904h30.57l-61.993-94.804 11.098-11.097 66.947 105.901h30.571l-79.623-123.797 61.368-61.368h-54.335l-67.59 67.577v-69.782Z"
    />
  </Svg>
);
const Memo = memo(SvgComponent);
export default Memo;
