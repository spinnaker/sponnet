local projects = import '../project.libsonnet';


projects.project()
.withName('my-project')
.withEmail('example@example.com')
.withUser('youremail@example.com')
.withApplications("app")
.withClusters("dev")
.withPipelineConfigs("dev-pipeline-id")
