{
  helpers,
  lib,
  ...
}: let
  theme = lib.plusultra.theme.nord;
in {
  plugins.lualine = {
    enable = true;

    settings = {
      options.globalstatus = true;

      disabled_filetypes = {
        statusline = [
          "dashboard"
          "NvimTree"
          "Trouble"
        ];
        winbar = [
          "dashboard"
          "NvimTree"
          "Trouble"
        ];
      };

      ignore_focus = [
        "dashboard"
        "NvimTree"
        "Trouble"
      ];

      component_separators = {
				left = " ";
				right = " ";
			};

      section_separators = {
        left = "";
        right = "";
      };

      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            separators = {
              left = "";
            };
            right_padding = 2;
          }
        ];
        lualine_b = [
          "filename"
        ];
        lualine_c = [
          "%=" # Add centered components below this line
          {
            __unkeyed-1 = "branch";
            icon = "";
            separator = {
              left = "";
              right = "";
            };
          }
        ];
        lualine_x = [
					""
        ];
        lualine_y = [
          "filetype"
          "progress"
        ];
        lualine_z = [
          {
            __unkeyed-1 = "location";
            separator = {
              right = "";
            };
            left_padding = 2;
          }
        ];
      };

      winbar = {
        lualine_a = [""];
        lualine_b = [""];
        lualine_c = [
          {
            __unkeyed-1 = helpers.mkRaw ''
              require('nvim-navic').get_location
            '';
            cond = helpers.mkRaw ''
              require('nvim-navic').is_available
            '';
            dense = true;
            dense_sep = ".";
          }
        ];
        lualine_x = [""];
        lualine_y = [""];
        lualine_z = [
          {
            __unkeyed-1 = "filetype";
            colored = false;
            icon_only = true;

						separator = {
							left = "";
						};
						padding = 0;
          }
          {
            __unkeyed-1 = "filename";
            file_status = true;
            shorting_target = 25;
            path = 1;

            symbols = {
              modified = "";
              readonly = "";
              unnamed = " ";
              newfile = " ";
            };
          }
        ];
      };

      inactiveWinbar = {
        lualine_a = [""];
        lualine_b = [""];
        lualine_c = [""];
        lualine_x = [""];
        lualine_y = [""];
        lualine_z = [
          {
            __unkeyed-1 = "filename";
            file_status = true;
            path = 1;
            shorting_target = 25;

            symbols = {
              modified = "";
              readonly = "";
              unnamed = " ";
              newfile = " ";
            };
          }
          {
            __unkeyed-1 = "filetype";
            colored = false;
            icon_only = true;

						separators = {
							left = "";
						};
          }
        ];
      };
    };
  };

  highlight = with theme; {
    StatusLine = {
      bg = nord0;
    };

    lualine_b_windows_active = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_windows_inactive = {
      fg = nord6;
      bg = nord1;
    };
    lualine_b_diff_modified_terminal = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_modified_inactive = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_removed_terminal = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_removed_inactive = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_modified_replace = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_modified_command = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_removed_replace = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_removed_command = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_modified_visual = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_modified_normal = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_modified_insert = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_removed_visual = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_removed_normal = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_removed_insert = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_added_terminal = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_added_inactive = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_added_replace = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_added_command = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_added_visual = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_added_normal = {
      fg = nord6;
      bg = nord10;
    };
    lualine_b_diff_added_insert = {
      fg = nord6;
      bg = nord10;
    };
  };
}
