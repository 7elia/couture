{ pkgs, lib, ... }:

{
  hj = {
    packages = with pkgs; [
      fastfetchMinimal
    ];

    files.".config/fastfetch/config.jsonc" =
      let
        breakModule = {
          type = "break";
        };
      in
      {
        generator = lib.generators.toJSON { };
        value = {
          modules = [
            {
              type = "title";
              format = "{6}{7}{8}";
            }
            breakModule
            {
              type = "os";
              format = "{3}";
            }
            {
              type = "wm";
              format = "{2} {5}";
            }
            {
              type = "terminal";
              format = "{1} {6}";
            }
            breakModule
            {
              type = "board";
              format = "{2} {1}";
            }
            {
              type = "cpu";
              format = "{1} ({3} cores, {4} threads)";
            }
            {
              type = "gpu";
              format = "{1} {2}";
            }
            {
              type = "memory";
              format = "{2}";
            }
            {
              type = "display";
              compactType = "original-with-refresh-rate";
            }
          ];
        };
      };
  };
}
