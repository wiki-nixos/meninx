{
  config,
  lib,
  pkgs,
  ...
}: {
  # Encephalon-specific packages
  environment.systemPackages = with pkgs; [
    # Tools
    dconf2nix

    # Themes
    adwsteamgtk
    adw-gtk3

    # Desktop applications
    adwsteamgtk
    bottles
    heynote
    komikku
    libreoffice-fresh
    mediawriter
    obsidian
    pika-backup
    tangram
    textpieces
    thunderbird
    #transmission_4-gtk
    switcheroo
    vesktop
  ];
}
