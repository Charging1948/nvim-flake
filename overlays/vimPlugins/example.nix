# INFO: This file has been renamed, to only exist as an example

{ channels, ... }:

final: prev: {
  vimPlugins = prev.vimPlugins.extend (self: super: {
    inherit (channels.unstable.vimPlugins) comment-box-nvim;
  });
}
