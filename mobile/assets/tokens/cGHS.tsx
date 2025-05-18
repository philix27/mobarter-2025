import * as React from 'react';
import Svg, { SvgProps, Rect, Path } from 'react-native-svg';
import { memo } from 'react';
const SvgComponent = (props: SvgProps) => (
  <Svg width={500} height={500} fill="none" {...props}>
    <Rect width={500} height={500} fill="#A5E5F7" rx={250} />
    <Path
      fill="#02010A"
      fillRule="evenodd"
      d="M203.92 157.508c-48.585 16.741-83.49 62.86-83.49 117.131 0 68.405 55.453 123.859 123.858 123.859 53.835 0 99.648-34.346 116.722-82.321h-36.824c-15.012 28.817-45.157 48.494-79.898 48.494-49.723 0-90.032-40.309-90.032-90.032 0-35.209 20.211-65.697 49.664-80.497v-36.634Z"
      clipRule="evenodd"
    />
    <Path fill="#02010A" d="M294.891 306.266V101.5h18.98v204.766h-18.98Z" />
    <Path
      fill="#02010A"
      fillRule="evenodd"
      d="M349.097 229.911c-8.415 17.041-24.734 27.521-42.437 27.521-25.654 0-48.4-22.006-48.4-54.094s22.746-54.094 48.4-54.094c17.372 0 33.411 10.092 41.956 26.573h30.651c-10.314-32.068-38.311-55.044-72.607-55.044-43.503 0-76.871 36.966-76.871 82.565s33.368 82.565 76.871 82.565c34.633 0 62.843-23.43 72.906-55.992h-30.469Z"
      clipRule="evenodd"
    />
  </Svg>
);
const Memo = memo(SvgComponent);
export default Memo;
