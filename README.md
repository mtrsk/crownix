# Crownix

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org) [![Build Status](https://travis-ci.org/mtrsk/crownix.svg?branch=master)](https://travis-ci.org/mtrsk/crownix)

An experiment with C++, [crow](https://github.com/ipkn/crow) and [Nix](https://nixos.org/nix/download.html).

## Building the project

* With Nix

    ```
    $ nix-build release.nix -A project
    $ ./result/bin/main
    ```

* With Docker

    ```
    $ docker image build -t crownix .
    $ docker container run --rm -p 10000:10000 crownix
    ```

