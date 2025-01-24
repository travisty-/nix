{
  config,
  pkgs,
  ...
}: {
  # Disable the PulseAudio sound server.
  hardware.pulseaudio.enable = false;

  # Enable system services for real-time scheduling.
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;

    # Uncomment this if you want to use JACK applications.
    # jack.enable = true;

    # Use the example session manager (no others are packaged yet, so this
    # is enabled by default. No need to redfine it in your config for now.)
    # media-session.enable = true;
  };
}
