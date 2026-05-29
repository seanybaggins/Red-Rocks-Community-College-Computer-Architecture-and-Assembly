{
  description = "Top level flake for Red Rocks Community College computer architecture and assembly course";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }@inputs:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {

      nixosConfigurations.rrcc-comp-arch-and-assembly-vm = inputs.nixpkgs.lib.nixosSystem {
        inherit pkgs;
        system = "x86_64-linux";
        modules = [
          "${inputs.nixpkgs}/nixos/modules/virtualisation/virtualbox-image.nix"
          ./nixos/configuration.nix
        ];

        specialArgs = { inherit inputs; };
      };

      packages.x86_64-linux = {
        default =
          inputs.self.nixosConfigurations.rrcc-comp-arch-and-assembly-vm.config.system.build.virtualBoxOVA;
      };

      checks.x86_64-linux = inputs.self.packages.x86_64-linux;

      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          mdbook
        ];
      };
    };
}
