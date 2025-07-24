{
  description = "Devenv templates";

  outputs = { self }: {
    templates = {
      default = {
        path = ./default;
        description = "Basic devenv flake for creating new templates";
      };

      c = {
        path = ./c;
        description = "Basic C devenv";
      };

      clojure = {
        path = ./clojure;
        description = "Basic Clojure devenv";
      };

      go = {
        path = ./go;
        description = "Basic Go devenv";
      };

      javascript = {
        path = ./typescript;
        description = "Basic Typescript devenv";
      };

      lua = {
        path = ./lua;
        description = "Basic lua devenv";
      };

      python = {
        path = ./python;
        description = "Basic Javascript devenv with uv";
      };

      rust = {
        path = ./rust;
        description = "Basic Rust devenv";
      };

      typescript = {
        path = ./typescript;
        description = "Basic Typescript devenv";
      };
    };
  };
}
