// Learn more https://docs.expo.io/guides/customizing-metro
const { getDefaultConfig } = require('expo/metro-config');
const {
  wrapWithReanimatedMetroConfig,
} = require('react-native-reanimated/metro-config');

/** @type {import('expo/metro-config').MetroConfig} */
// const config = getDefaultConfig(__dirname);

// module.exports = wrapWithReanimatedMetroConfig(config);
//! somethng
// const { getDefaultConfig } = require('metro-config');
module.exports = (async () => {
  const config = getDefaultConfig(__dirname);
  const animatedConfig = wrapWithReanimatedMetroConfig(config);

  const sourceExts = animatedConfig.resolver.sourceExts;
  const assetExts = animatedConfig.resolver.assetExts;

  return {
    transformer: {
      babelTransformerPath: require.resolve('react-native-svg-transformer'),
    },
    resolver: {
      assetExts: assetExts.filter(ext => ext !== 'svg'),
      sourceExts: [...sourceExts, 'svg'],
    },
    ...wrapWithReanimatedMetroConfig(config),
  };
})();
