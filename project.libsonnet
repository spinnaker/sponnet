{
  project():: {
    // set default values
    config : {
      applications: [],
      clusters: [],
      pipelineConfigs: [],
    },
    // set overrides
    withApplications(applications):: self + { config+: { applications+: if std.type(applications) == 'array' then applications else [applications] } },
    withClusters(clusters):: self + { config+: { clusters+: if std.type(clusters) == 'array' then clusters else [clusters] } },
    withPipelineConfigs(pipelineConfigs):: self + { config+: { pipelineConfigs+: if std.type(pipelineConfigs) == 'array' then pipelineConfigs else [pipelineConfigs] } },
    withEmail(email):: self + { email: email },
    withId(id):: self + { id: id },
    withName(name):: self + { name: name },
    withUser(user):: self + { user: user },
  },
}
