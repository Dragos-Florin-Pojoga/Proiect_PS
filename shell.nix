{ pkgs ? import <nixpkgs> {} }:

let
    jupyter = import (pkgs.fetchFromGitHub {
        owner = "tweag";
        repo = "jupyenv";
        rev = "269999caa8d506e93ff56c8643cecb91ded2fdef";
        sha256 = "08iig872ay8d711n2gbfzrf496m9x9a9xwr0xca9hn7j61c3xr43";
        fetchSubmodules = true;
    }) {};

    kernels = jupyter.kernels;

    irkernel = kernels.iRWith {
        name = "nixpkgs";
        packages = p: with p; [
            # ex: ggplot2
        ];
    };

    jupyterEnvironment = (jupyter.jupyterlabWith {
        kernels = [
            irkernel
        ];
    });
in
    pkgs.mkShell rec {
        buildInputs = [
            jupyterEnvironment
        ];

        shellHook = ''
            jupyter-lab
            exit
        '';
    }
