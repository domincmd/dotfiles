# multi-themed rice placeholder
this repo contains a placeholder structure for a multi-themed rice

## rice selection
the currently selected rice is stored at .cache/theme, in plaintext

convention for this repo is that the rice's name is dictaded by the wallpaper's name.

all of the wallpapers have the same file type, for simplicity

## file structure

### on this repo

```
/dotfiles
  /core (basic, universal configs that do not change per theme)
  /_template (template for a new theme)
  /scripts (scripts to clone that manage theme-changing)
```

### on the machine

```
/home
  /Downloads
  /Pictures
    /wallpapers
    /screenshots
  /Scripts
    /themes
```

for convention, it has been established that directories directly below /home shall start with a capital letter.

## interactive elements
the elements that directly change with the theme changes are
  - waybar
  - fastfetch
  - rofi
  - swaybg
  - zsh

more elements can easily be added later

## setup process

1) install packages
2) move oh-my-zsh to `.config`