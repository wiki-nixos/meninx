{
  config,
  pkgs,
  inputs,
  ...
}: {
  # Get the agenix module
  imports = [inputs.agenix.nixosModules.default];

  # Get the agenix tool
  environment.systemPackages = [inputs.agenix.packages.x86_64-linux.default];

  # Configure secrets
  age.secrets = {
    sonar.file = ../../secrets/sonar.age;
    cerebrum.file = ../../secrets/cerebrum.age;
    encephalon.file = ../../secrets/encephalon.age;
    mullvad.file = ../../secrets/mullvad.age;
  };
}
