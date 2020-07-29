# Sponnet demo

You will need the following:

* The `libsonnet` files:

  ```bash
  curl -LO https://storage.googleapis.com/spinnaker-artifacts/sponnet/$(curl -s https://storage.googleapis.com/spinnaker-artifacts/sponnet/latest)/sponnet.tar.gz

  tar -xzvf sponnet.tar.gz && rm sponnet.tar.gz
  ```

* The `jsonnet` executable

  ```bash
  # this is the linux link -- substitute with darwin for macos
  curl -LO https://storage.googleapis.com/jsonnet/$(curl -s https://storage.googleapis.com/jsonnet/latest)/linux/amd64/jsonnet

  chmod +x jsonnet

  sudo mv jsonnet /usr/local/bin/jsonnet
  ```

To build the demo project, run:

```bash
jsonnet demo-project.jsonnet
```

To build the demo application, run:

```bash
jsonnet demo-app.jsonnet
```

If you have the [Spinnaker CLI
installed](https://www.spinnaker.io/guides/spin/cli/) (`spin`), you can save
this application in Spinnaker by running:

```bash
jsonnet demo-app.jsonnet > demo-app.json && spin application save --file demo-app.json
```

To build the demo pipeline, run:

```bash
jsonnet demo-pipeline.jsonnet
```

If you have the [Spinnaker CLI
installed](https://www.spinnaker.io/guides/spin/cli/) (`spin`), you can save
this pipeline in Spinnaker by running:

```bash
jsonnet demo-pipeline.jsonnet > demo-pipeline.json && spin pipeline save --file demo-pipeline.json
```
