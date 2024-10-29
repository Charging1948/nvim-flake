{
  plugins.auto-session = {
    enable = true;

    settings = {
      auto_restore = true;
      auto_save = true;
      auto_session = true;
      auto_create = true;
      use_git_branch = true;
      bypass_save_filetypes = [
        "dashboard"
        "nvim-tree"
      ];
    };

  };

  keymaps = [
    {
      mode = "n";
      action = "<cmd>Telescope session-lens<cr>";
      key = "<leader>fs";
      options = {
        desc = "Find Session";
      };
    }
  ];
}
