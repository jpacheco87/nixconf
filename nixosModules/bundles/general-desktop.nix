{
  pkgs,
  lib,
  ...
}: {
  myNixOS.sddm.enable = lib.mkDefault false;
  myNixOS.autologin.enable = lib.mkDefault true;
  myNixOS.xremap-user.enable = lib.mkDefault true;
  myNixOS.system-controller.enable = lib.mkDefault false;
  myNixOS.virtualisation.enable = lib.mkDefault true;
  myNixOS.stylix.enable = lib.mkDefault true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
  # Enable sound with pipewire.
  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  fonts.packages = with pkgs; [
    (pkgs.nerdfonts.override {fonts = ["JetBrainsMono" "Iosevka" "FiraCode"];})
    cm_unicode
    corefonts
  ];

  # fonts.enableDefaultPackages = true;
  # fonts.fontconfig = {
  #   defaultFonts = {
  #     monospace = ["JetBrainsMono Nerd Font Mono"];
  #     sansSerif = ["JetBrainsMono Nerd Font"];
  #     serif = ["JetBrainsMono Nerd Font"];
  #   };
  # };

  # battery
  services.upower.enable = true;
}
