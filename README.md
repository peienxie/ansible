# Ansible

this is an ansible playbook to setup my development workspace.

## i3 Desktop Enviroment issues

After install i3 with Xubuntu 22.04, there are couple of issues below:

### i3 system tray missing

the system tray in i3bar is missing, here are two solutions:

1. disable `ayatana-application-indicator`

   1. Open `xfce4-settings-manager`
   2. Open `Session and Startup`
   3. Select `Application Autostart` tab
   4. Uncheck `Ayatana Indicator Application` program
   5. Reboot

2. execute every system tray applet with `dbus-launch`

   ```
   exec --no-startup-id dbus-launch nm-applet
   ```

### Volume change not longer popup notification

fixed by install xfce4-volumed

```
$ sudo apt install -y xfce4-volumed
```
