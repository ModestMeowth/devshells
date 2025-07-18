{
  inputs = {
    nixpkgs.url = "nixpkgs";
    parts.url = "flake-parts";
    devenv.url = "github:cachix/devenv";
  };

  outputs = { ... }@inputs:
    inputs.parts.lib.mkFlake { inherit inputs; } {
      imports = [ inputs.devenv.flakeModule ];

      systems = inputs.nixpkgs.lib.systems.flakeExposed;

      perSystem = { config, self', inputs', pkgs, system, ... } : {
        devenv.shells.default = {
          imports = [ ];

          languages.javascript = {
            enable = true;
            npm.enable = true;
          };
        };
      };
    };
}
