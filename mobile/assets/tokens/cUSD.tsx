import * as React from 'react';
import Svg, { SvgProps, Circle, Path } from 'react-native-svg';
import { memo } from 'react';
const SvgComponent = (props: SvgProps) => (
  <Svg viewBox="0 0 1000 1000" {...props}>
    <Circle cx={500} cy={500} r={500} fill="#45CD85" />
    <Path
      fill="#FFF"
      d="M479 762c98 0 181-63 212-150h-61c-27 56-85 94-151 94-93 0-169-76-169-169 0-66 38-124 94-151v-61c-87 31-150 114-150 212 0 124 101 225 225 225zm129-275v-82c28 7 50 16 50 40 0 22-19 38-50 42zm-38 76h40v-31c59-7 97-41 97-87 0-64-51-78-99-87v-85c23 2 48 9 71 20v-50c-22-8-46-13-69-14v-30h-40v30c-61 7-96 41-96 84 0 65 50 80 98 89v85c-29-4-60-16-96-35v53c31 15 63 25 94 27v31zm2-209c-28-6-49-16-49-41 0-23 18-37 49-40v81z"
    />
  </Svg>
);
const Memo = memo(SvgComponent);
export default Memo;
