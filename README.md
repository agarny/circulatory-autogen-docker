# Circulatory Autogen Docker

A simple [Docker](https://www.docker.com/) file for [Finbar Argus](https://github.com/FinbarArgus)' [Circulatory Autogen](https://github.com/FinbarArgus/circulatory_autogen) project on the [x86-64](https://en.wikipedia.org/wiki/X86-64) version of [Ubuntu 22.04 LTS](https://en.wikipedia.org/wiki/Ubuntu_version_history#2204).

## Prerequisites

 - [Docker](https://www.docker.com/).

## Shell scripts

You might want to add to your `PATH` the `bin` directory in this repository, so that you can access the following scripts:

 - `buildcircauto`: this builds the Circulatory Autogen Docker image;
 - `cleancircauto`: this removes both the Circulatory Autogen Docker image and its container;
 - `rebuildcircauto`: this calls `cleancircauto` and then `buildcircauto`;
 - `reruncircauto`: this removes the Circulatory Autogen Docker container and then calls `runcircauto`; and
 - `runcircauto`: this creates, if needed, and starts the Circulatory Autogen Docker container.
