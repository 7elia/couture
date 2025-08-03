{
  programs.git = {
    enable = true;
    config = {
      init.defaultBranch = "master";

      user = {
        name = "7elia";
        email = "176603882+7elia@users.noreply.github.com";
      };

      core = {
        compression = 9;
        whitespace = "error";
        preloadindex = true;
      };

      advice = {
        addEmptyPathspec = false;
        pushNonFastForward = false;
        statusHints = false;
      };

      url = {
        "https://github.com/" = {
          insteadOf = [
            "gh:"
          ];
        };
      };

      status = {
        branch = true;
        showStash = true;
        showUntrackedFiles = "all";
      };

      diff = {
        context = 3;
        renames = "copies";
        interHunkContext = 10;
      };

      credential = {
        helper = "manager";
        "https://github.com".username = "7elia";
        credentialStore = "cache";
      };
    };
  };
}
