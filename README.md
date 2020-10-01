<h1 align="center"> committed/ui-test </h1>
<br>
<p align="center">
  <img src="https://committed.software/Logo.svg" width="128px" alt="Project Logo"/>
</p>
<p align="center">
  <img src="https://gauge.org/Gauge_Badge.svg" width="128px" alt="Gauge Badge"/>
</p>

<p align="center">
  Docker image for running UI tests in Chrome
</p>

[![Committed Badge](https://img.shields.io/endpoint?url=https%3A%2F%2Fcommitted.software%2Fbadge)](https://committed.io)
[![Docker Build Status](https://img.shields.io/docker/cloud/build/committed/ui-test?style=flat-square)](https://hub.docker.com/r/committed/ui-test)
[![Docker Pulls](https://img.shields.io/docker/pulls/committed/ui-test?style=flat-square)](https://hub.docker.com/r/committed/ui-test)

This docker image uses [`gauge`](https://gauge.org/) and [`takio`](https://taiko.dev/) to run UI tests in Chrome. This can be used to run the tests locally without installing the dependencies and in CI builds.

## 🚀 Quickstart

Bind your whole gauge directory and call the `gauge` command or your relevant `yarn` script, for example, in your gauge directory:

```
docker run --rm -v ${PWD}:/gauge committed/ui-test gauge run specs/
```

or

```
docker run --rm -v ${PWD}:/gauge committed/ui-test yarn test
```

The results will be returned in the console and a report written to `${PWD}/reports/html-report`. Logs will be written to `${PWD}/logs`.

## 📁 Contents

Installs requirements for UI testing:

- [`node`](https://nodejs.org/)
- [`yarn`](https://yarnpkg.com/)
- [`takio`](https://taiko.dev/)
- [`gauge`](https://gauge.org/)
- [`chrome`](https://www.google.com/intl/en_uk/chrome/)

## Further details

The docker image contains a standard Gauge project layout from `gauge init js` so you can just bind your `specs` and `tests` and `reports` directories and get the standard settings.

If you want to run against something running on `localhost` you will need to use `docker.host.internal` instead and if running on linux then the docker run will need the additional parameter `-add-host=host.docker.internal:host-gateway`.

## 💻 Development

To build the docker image run:

```bash
./build.sh
```

### Testing

To test the docker image run the docker image with appropriate command e.g.:

```docker
docker run --rm  committed/ui-test test.sh
```

A test file `./test.sh` uses the version commands of each tool to check it is installed.

## 👏 Credits

This is based on the original Dockerfile from [Gauge js template](https://github.com/getgauge/gauge-js).

## ©️ License

The Dockerfiles and associated scripts are licensed under the [MIT](/LICENSE) license.
