{ systemInformation, ... }:
{
  home-manager.users."${systemInformation.userName}" = { ... }: {
    programs.helix = {
      enable = true;

      settings = {
        editor = {
          line-number = "relative";
          cursor-shape = {
            insert = "bar";
            normal = "block";
            select = "underline";
          };
          lsp.display-inlay-hints = true;
          auto-format = true;
        };
      };
    };
  };
}
