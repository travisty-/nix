{
  config,
  pkgs,
  ...
}: {
  programs.zoxide = {
    enable = true;
    options = ["--cmd cd"];
  };
}
