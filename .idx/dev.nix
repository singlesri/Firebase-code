# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    # pkgs.go
    # pkgs.python311
    # pkgs.python311Packages.pip
    # pkgs.nodejs_20
    # pkgs.nodePackages.nodemon
  ];

  # Sets environment variables in the workspace
  env = {};

  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # "vscodevim.vim"
      "google.gemini-cli-vscode-ide-companion"
    ];

    # Enable previews and define ports
    previews = {
      enable = true;
      previews = {
        # web = {
        #   # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
        #   # and show it in IDX's web preview panel
        #   command = ["npm" "run" "dev" "--" "--port" "$PORT"];
        #   manager = "web";
        # };
      };
    };

    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # welcome-message = "echo 'Workspace created!'";
      };
      # Runs every time the workspace is (re)started
      onStart = {
        # start-message = "echo 'Workspace started!'";
      };
    };
  };
}
