# Contributing

## Prerequisates
1. You have a system that is running x86_64-linux

## Getting Started
1. If not running nixos, install the nix package manager by executing the
   following command and following the prompts.
```
curl --proto '=https' --tlsv1.2 -sSf -L 'https://install.determinate.systems/nix/tag/v3.14.0' \
    | sh -s -- install \
    --prefer-upstream-nix 
```
2. source nix into your current shell (this will not need to be repeated once
   the system has been restarted)
   ```
   . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
   ```
3. Install direnv 
```
nix profile install nixpkgs#direnv
```
4. Run the following to integrate direnv into your shell
```
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
```
5. reboot your system
6. Clone the repository
7. cd into the repo and run `direnv allow` to bring development tools onto your path

## Development steps
1. Make changes to files in `src/`
2. Test locally with `mdbook serve`
3. Use your browser to go to the url provided by mdbook serve

