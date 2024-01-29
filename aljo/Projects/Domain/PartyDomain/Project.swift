import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(
  to: "PartyDomain",
  targets: [
    .interface(module: .domain(.PartyDomain)),
    .implements(
      module: .domain(.PartyDomain),
      dependencies: [
        .domain(target: .BaseDomain),
        .domain(target: .PartyDomain, type: .interface)
      ]
    )
  ]
)
