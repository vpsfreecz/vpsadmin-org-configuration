{ config, ... }:
{
  cluster."org.vpsadminos/containers/int.bb.master" = rec {
    spin = "nixos";
    swpins.channels = [ "nixos-stable" "os-staging" "os-runtime-deps" ];
    host = { name = "master"; domain = "bb.int.vpsadminos.org"; };
    addresses.primary = { address = "172.16.4.20"; prefix = 32; };
    services = {
      buildbot-master = {};
      node-exporter = {};
    };
  };
}
