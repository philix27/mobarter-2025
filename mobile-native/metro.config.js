// Learn more https://docs.expo.io/guides/customizing-metro
const { getDefaultConfig } = require('expo/metro-config')
const { wrapWithReanimatedMetroConfig } = require('react-native-reanimated/metro-config')

// /** @type {import('expo/metro-config').MetroConfig} */
// const config = getDefaultConfig(__dirname)
// config.resolver.unstable_conditionNames = ['browser', 'require', 'react-native']
// module.exports = config

/** @type {import('expo/metro-config').MetroConfig} */
// const config = getDefaultConfig(__dirname);

// module.exports = wrapWithReanimatedMetroConfig(config);
//! something
// const { getDefaultConfig } = require('metro-config');
module.exports = (async () => {
  const config = getDefaultConfig(__dirname)
  config.resolver.unstable_enablePackageExports = true
  config.resolver.unstable_conditionNames = ['browser', 'require', 'react-native']
  // const animatedConfig = wrapWithReanimatedMetroConfig(config)
  config.resolver.extraNodeModules = {
    crypto: require.resolve('react-native-quick-crypto'),
    buffer: require.resolve('@craftzdog/react-native-buffer'),
  }

  const animatedConfig = config

  const sourceExts = animatedConfig.resolver.sourceExts
  const assetExts = animatedConfig.resolver.assetExts

  return {
    transformer: {
      //   babelTransformerPath: require.resolve('react-native-svg-transformer'),
      experimentalImportSupport: false,
      inlineRequires: true,
    },
    resolver: {
      assetExts: assetExts.filter((ext) => ext !== 'svg'),
      sourceExts: [...sourceExts, 'svg'],
    },
    ...wrapWithReanimatedMetroConfig(config),
  }
})()
