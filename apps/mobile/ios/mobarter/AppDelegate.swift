#import <react_native_particle_connect/react_native_particle_connect-Swift.h>

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
  if ([ParticleConnectSchemeManager handleUrl:url] == YES) {
    return YES;
  } else {
    // Other methods
  }
  return YES;
}