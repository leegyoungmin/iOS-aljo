import ProjectDescription
import ProjectDescriptionHelpers

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(to: "AuthDomain") {
  [
    .target("UserDomain", to: .framework) {
      [
        .project(target: "BaseDomain", path: "../BaseDomain"),
        .project(target: "UserDomainInterface", path: "")
      ]
    },
    .target("UserDomainInterface", to: .interface) { [] }
  ]
}
