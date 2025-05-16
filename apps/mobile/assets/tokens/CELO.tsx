import * as React from 'react';
import Svg, { SvgProps, Circle, Path } from 'react-native-svg';
import { memo } from 'react';

const SvgComponent = (props: SvgProps) => (
  <Svg viewBox="0 0 100 100" {...props}>
    <Circle cx={50} cy={50} r={50} fill="#FBCC5C" />
    <Path
      fill="#FFF"
      d="M78.6 44a22.5 22.5 0 0 0-43.3-8.6 22.5 22.5 0 1 0 29.6 29.3A22.7 22.7 0 0 0 78.6 44zM44.1 73a17 17 0 0 1-10.5-30.1V44a22.5 22.5 0 0 0 22.5 22.5h1.4A17 17 0 0 1 44.1 73zm16.4-12.7a17 17 0 0 1-20.7-20.5 17 17 0 0 1 21.3 16.3c-.1 1.5-.3 2.9-.6 4.2zm6.1-3.1v-1.1a22.5 22.5 0 0 0-22.5-22.5h-1.4a17 17 0 1 1 23.9 23.6z"
    />
  </Svg>
);
const Memo = memo(SvgComponent);
export default Memo;
