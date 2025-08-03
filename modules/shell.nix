{
  pkgs,
  inputs,
  ...
}:

{
  hj.packages = [
    inputs.quickshell.packages.${pkgs.system}.default
  ];

  environment.sessionVariables = {
    QS_CONFIG_PATH = builtins.toString ./../shell;
  };
}
