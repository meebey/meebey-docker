FROM nixos/nix
RUN nix-env --install --attr nixpkgs.nmap --verbose
ENTRYPOINT ["/root/.nix-profile/bin/nmap"]
