import * as React from 'react';
import Svg, { SvgProps, Circle, Path } from 'react-native-svg';
import { memo } from 'react';
const SvgComponent = (props: SvgProps) => (
  <Svg viewBox="0 0 1000 1000" {...props}>
    <Circle cx={500} cy={500} r={500} fill="#45CD85" />
    <Path
      fill="#FFF"
      d="M445 780c98 0 181-63 212-150h-61c-27 56-85 94-151 94-93 0-169-76-169-169 0-66 38-124 94-151v-61c-87 31-150 114-150 212 0 124 101 225 225 225zm188-215c33 0 64-9 90-25v-52c-25 19-55 31-89 31-48 0-86-23-104-61h133l12-40H518c-1-6-1-11-1-17s0-12 1-18h168l12-40H529c18-39 55-62 105-62 27 0 53 7 77 20l14-45c-27-14-59-21-91-21-75 0-134 43-156 107h-44l-12 38h48c-1 7-1 14-1 21s0 13 1 20h-36l-12 38h57c21 64 79 106 154 106z"
    />
  </Svg>
);
const Memo = memo(SvgComponent);
export default Memo;
