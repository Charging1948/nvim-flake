{ helpers, ... }:
{
  keymaps = [
    {
      mode = "n";
      action = "<cmd>Oil<CR>";
      key = "-";
      options = {
        desc = "Open Oil.nvim";
        silent = true;
        noremap = true;
      };
    }
  ];

  plugins.oil = {
    enable = true;
  };
}
