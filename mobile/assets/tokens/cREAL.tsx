import * as React from 'react';
import Svg, { SvgProps, Circle, Path } from 'react-native-svg';
import { memo } from 'react';
const SvgComponent = (props: SvgProps) => (
  <Svg viewBox="0 0 1000 1000" {...props}>
    <Circle cx={500} cy={500} r={500} fill="#45CD85" />
    <Path
      fill="#FFF"
      d="M435 779c98 0 181-63 212-150h-61c-27 56-85 94-151 94-93 0-169-76-169-169 0-66 38-124 94-151v-61c-87 31-150 114-150 212 0 124 101 225 225 225zm-15-222h50V432h4c7 0 15-1 21-1l42 126h55l-56-139c26-14 45-46 45-86 0-59-37-91-108-91h-53v316zm50-167V284h8c37 0 53 16 53 53 0 36-16 53-53 53h-8zm216 118 10-81c16 8 26 20 26 39 0 23-12 40-36 42zm-39 78h34l4-34c48-3 81-40 81-89 0-37-18-68-62-84l10-87c12 3 25 9 38 18v-50c-10-6-21-10-32-12l5-36h-34l-3 34c-48 4-78 39-78 87 0 47 28 74 59 86l-10 85c-14-4-30-11-48-22v51c14 7 28 13 41 16l-5 37zm30-216c-16-8-23-21-23-39 0-24 11-39 33-42l-10 81z"
    />
  </Svg>
);
const Memo = memo(SvgComponent);
export default Memo;
