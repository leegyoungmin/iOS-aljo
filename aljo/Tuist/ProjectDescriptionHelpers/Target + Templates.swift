import ProjectDescription
import EnvironmentPlugin
import AljoPlugins

public extension Target {
  static func interface(
    module: ModulePaths,
    dependencies: @escaping () -> [TargetDependency] = { [] }
  ) -> Target {
    return TargetSpec(sources: .interface, dependencies: dependencies())
      .toTarget(with: module.targetName(type: .interface), product: .framework)
  }
  
  static func implements(
    module: ModulePaths,
    product: Product = .staticLibrary,
    dependencies: @escaping () -> [TargetDependency] = { [] }
  ) -> Target {
    return TargetSpec(sources: .sources, dependencies: dependencies())
      .toTarget(with: module.targetName(type: .sources), product: product)
  }
  
  static func demo(
    module: ModulePaths,
    dependencies: @escaping () -> [TargetDependency] = { [] }
  ) -> Target {
    return TargetSpec(sources: .demo, dependencies: dependencies())
      .toTarget(with: module.targetName(type: .demo), product: .app)
  }
}
