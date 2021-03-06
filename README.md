My fork of
[the fork](https://github.com/LukeSmithxyz/st) of the [suckless terminal (st)](https://st.suckless.org/)

There are some minor changes to cursor theme and custom shell.nix which is very helpful for building, testing, and patching st by myself.

The main reason for this fork is the possibility to add the changes i need and use this repo as src for nixpkgs st override.

## Look and feel
<p align="center">
<span><img src="https://user-images.githubusercontent.com/49302467/118409768-c1563700-b694-11eb-92d3-665be9ad4747.png" /></span>
<span><img src="https://user-images.githubusercontent.com/49302467/118411276-5d377100-b69c-11eb-8cd6-5852a1f0d5af.png" /></span>
</p>

## Unique features (using dmenu)

- **follow urls** by pressing `alt-l`
- **copy urls** in the same way with `alt-y`
- **copy the output of commands** with `alt-o`

## Bindings for

- **scrollback** with `alt-↑/↓` or `alt-pageup/down` or `shift` while scrolling the mouse
- OR **vim-bindings**: scroll up/down in history with `alt-k` and `alt-j`. Faster with `alt-u`/`alt-d`.
- **zoom/change font size**: same bindings as above, but holding down shift as well. `alt-home` returns to default
- **copy text** with `alt-c`, **paste** is `alt-v` or `shift-insert`

## Pretty stuff

+ Compatibility with `Xresources` and `pywal` for dynamic colors.
+ Default [gruvbox](https://github.com/morhetz/gruvbox) colors otherwise.
+ Transparency/alpha, which is also adjustable from your `Xresources`.
+ Default font is system "mono" at 12pt, meaning the font will match your system font.

## Other st patches

+ Boxdraw
+ Ligatures
+ font2
+ updated to latest version 0.8.4

## How to configure dynamically with Xresources

For many key variables, this build of `st` will look for X settings set in either `~/.Xdefaults` or `~/.Xresources`. You must run `xrdb` on one of these files to load the settings.

For example, you can define your desired fonts, transparency or colors:

```
*.font:	Liberation Mono:pixelsize=12:antialias=true:autohint=true;
*.alpha: 0.9
*.color0: #111
...
```

The `alpha` value (for transparency) goes from `0` (transparent) to `1` (opaque).

### Colors

To be clear about the color settings:

- This build will use gruvbox colors by default and as a fallback.
- If there are Xresources colors defined, those will take priority.
- But if `wal` has run in your session, its colors will take priority.

Note that when you run `wal`, it will negate the transparency of existing windows, but new windows will continue with the previously defined transparency.
