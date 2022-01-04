{ config, ... }:
{
  cluster."org.vpsadminos/containers/int.bb.nixos01" = rec {
    spin = "nixos";
    swpins.channels = [ "nixos-stable" "os-staging" "os-runtime-deps" ];
    host = { name = "nixos01"; domain = "bb.int.vpsadminos.org"; };
    addresses.primary = { address = "172.16.4.21"; prefix = 32; };
    services.node-exporter = {};
  };
}
