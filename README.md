puml - PlantUML Container
==========

Docker container with Alpine Linux, Java and [PlantUML](http://plantuml.com/).

## Installation

Pull container from docker hub.

```sh
$ docker pull aozk/puml
```

Or, build container image from Dockerfile that on this project.

```sh
$ docker build .
```

## Usage

Full manually execute on shell.

```sh
$ docker run -v ${PWD}:/work -w /work --rm aozk/puml [PLANTUML ARGUMENTS]
```

Or, use image execute script `puml` that on this project.

```sh
$ puml [PLANTUML ARGUMENTS]
```

### Execute example

```sh
$ puml -tpng -charset utf-8 usecase.uml
```

## Get help of plantuml

```sh
$ puml -h
```

## Test

This container tested by testtool [container-structure-test](https://github.com/GoogleContainerTools/container-structure-test). Test settings is `test/puml_test_config.yaml`. After setup testtool, you can test this container by

```sh
$ container-structure-test test --image aozk/puml --config ./test/puml_test_config.yaml
```

## License
The MIT License.
