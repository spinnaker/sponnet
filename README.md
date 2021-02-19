# sponnet

<img src="https://jsonnet.org/img/isologo.svg" height="100"> <img src="https://spinnaker.io/assets/images/spinnaker-logo-inline.svg" height="100">

A [Jsonnet](https://jsonnet.org/) library specifically for Spinnaker.

## Example

```js
local sponnet = import 'pipeline.libsonnet';

local parameters = [
  {
    name: "image_tag",
    required: true,
  }
];

local patchKubernetesDeployment = sponnet.stages
    .patchManifest("Update deployment")
    .withAccount("my-k8s-cluster")
    .withApplication("my-app")
    .withNamespace("default")
    .withManifestName("deployment", "my-app")
    .withPatchBody([
      {
        "spec": {
          "template": {
            "spec": {
              "containers": [
                {
                  "image": "my-app-docker-image:${parameters.image_tag}",
                  "name": "app"
                }
              ]
            }
          }
        }
      }
    ]);

sponnet.pipeline()
.withParameters(parameters)
.withStages(patchKubernetesDeployment)
```

More examples can be found in [demo](demo)

Can also be combined with a Jsonnet [Terraform provider](https://registry.terraform.io/providers/alxrem/jsonnet/latest/docs) to allow the management of Spinnaker resources using [Terraform](https://www.terraform.io/).
