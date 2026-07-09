{
  host,
  hostId,
  options,
  ...
}: {
  # Defensive assertion for hostname validity (clearer message at eval time)
  assertions = [
    {
      assertion = builtins.match "^[[:alnum:]]([[:alnum:]_-]{0,61}[[:alnum:]])?$" host != null;
      message = "Invalid hostname '${host}'. Must be 1-63 chars, start/end alphanumeric; allowed middle chars: letters, digits, '-' or '_'.";
    }
  ];

  networking = {
    hostName = "${host}";
    hostId = hostId;
    networkmanager.enable = true;
    timeServers = options.networking.timeServers.default ++ ["pool.ntp.org"];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        59010
        59011
        8080
      ];
      allowedTCPPortRanges = [
        {
          from = 1714;
          to = 1764;
        }
      ];
      allowedUDPPorts = [
        5353
        54925
        59010
        59011
      ];
      allowedUDPPortRanges = [
        {
          from = 1714;
          to = 1764;
        }
      ];
    };
  };
}
