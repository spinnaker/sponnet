{
  application():: {
    // set default values
    dataSources: {
      disabled: [],
      enabled: [],
    },
    platformHealthOnly: false,
    platformHealthOnlyShowOverride: false,
    providerSettings: {
      aws: {
        useAmiBlockDeviceMappings: false,
      },
      gce: {
        associatePublicIpAddress: false,
      },
    },
    trafficGuards: [],
    // set overrides
    withAccounts(accounts):: self + if std.type(accounts) == 'array' then { accounts: accounts } else { accounts: [accounts] },
    withAliases(aliases):: self + { aliases: aliases },
    withClusters(clusters):: self + if std.type(clusters) == 'array' then { clusters: clusters } else { clusters: [clusters] },
    withCloudProviders(cloudProviders):: self + { cloudProviders: cloudProviders },
    withDataSourcesDisabled(dataSourcesDisabled):: self + { dataSources+: if std.type(dataSourcesDisabled) == 'array' then { disabled: dataSourcesDisabled } else { disabled: [dataSourcesDisabled] } },
    withDataSourcesEnabled(dataSourcesEnabled):: self + { dataSources+: if std.type(dataSourcesEnabled) == 'array' then { enabled: dataSourcesEnabled } else { enabled: [dataSourcesEnabled] } },
    withDescription(description):: self + { description: description },
    withEmail(email):: self + { email: email },
    withAwsUseAmiBlockDeviceMappings(awsUseAmiBlockDeviceMappings):: self + { providerSettings+: { aws+: { useAmiBlockDeviceMappings: awsUseAmiBlockDeviceMappings } } },
    withGceAssociatePublicIpAdddress(gceAssociatePublicIpAddress):: self + { providerSettings+: { gce+: { associatePublicIpAddress: gceAssociatePublicIpAddress } } },
    withInstancePort(port):: self + { instancePort: port },
    withName(name):: self + { name: name },
    withPlatformHealthOnly(platformHealthOnly):: self + { platformHealthOnly: platformHealthOnly },
    withPlatformHealthOnlyShowOverride(platformHealthOnlyShowOverride):: self + { platformHealthOnlyShowOverride: platformHealthOnlyShowOverride },
    withTrafficGuards(trafficGuards):: self + if std.type(trafficGuards) == 'array' then { trafficGuards: trafficGuards } else { trafficGuards: [trafficGuards] },
    withUser(user):: self + { user: user },
    withRepoProjectKey(repoProjectKey):: self + { repoProjectKey: repoProjectKey },
    withRepoSlug(repoSlug):: self + { repoSlug: repoSlug },
    withRepoType(repoType):: self + { repoType: repoType },
    withPermissions(permissions):: self + { permissions: permissions },
  },
  permissions():: {
    withRead(read):: self + if std.type(read) == 'array' then { READ+: read } else { READ+: [read] },
    withWrite(write):: self + if std.type(write) == 'array' then { WRITE+: write } else { WRITE+: [write] },
    withExecute(execute):: self + if std.type(execute) == 'array' then { EXECUTE+: execute } else { EXECUTE+: [execute] },
  },
}
