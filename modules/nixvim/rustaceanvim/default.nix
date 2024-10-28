{ pkgs, ... }: {
  extraPackages = [
    pkgs.vscode-extensions.vadimcn.vscode-lldb.adapter
  ];
  plugins.rustaceanvim = {
    enable = true;
  };
}
