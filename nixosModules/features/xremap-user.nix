{pkgs, ...}: {
  hardware.uinput.enable = true;
  users.groups.uinput.members = ["jpacheco"];
  users.groups.input.members = ["jpacheco"];
}
