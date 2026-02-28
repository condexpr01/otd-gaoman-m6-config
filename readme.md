

# required plugins

|required plugins|
|---|
|Scroll Bindings|
|Windows ink plugins(windows)|
|driver(windows)  git@github.com:X9VoiD/vmulti-bin.git|


# presets

|name|describe|scene|
|---|---|---|
|abs|absolute mode presets|games tools like osu!std, blender, etc.|
|mouse|relative mode presets|games like mc, ttf2, cs2, etc.|
|art|linux artist mode presets  |krita, blender, etc.|
|ink|windows artist mode presets|krita, blender, etc.|

# quick switch presets

> Provides a command `t`, equivalent to `otd loadsettings $presets`
> change presets like

```shell
t abs
t art
t mouse
t ink
```

# install
```shell
makepkg -si
```

# see also
> Run otd-daemon as administrator for better experience on windows,
> so that you can play games, like `cs2` `minecraft` and so on with `mouse mode`

> How: To keep all operators in a same window,
> run shell(such as msys2 supported) as administrator,
> then run `otd-daemon` with `&`,
> use `t` to switch preset, like `t art`,`t mouse`,`t art` ,`t ink`






