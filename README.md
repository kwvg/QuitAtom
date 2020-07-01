<img src="https://raw.githubusercontent.com/kittywhiskers/QuitAtom/master/logo.png" width="200" style="display: block; margin-left: auto; margin-right: auto; width: 50%;" />

## QuitAtom

A tiny `AppleScript` based program that helps you Quit Atom on macOS when it doesn't want to. Based on my comment on [Atom Issue #17672](https://github.com/atom/atom/issues/17672), available [here](https://github.com/atom/atom/issues/17672#issuecomment-651799097) 

### How to first time setup

```
git clone https://github.com/kittywhiskers/QuitAtom && cd QuitAtom
./init.sh
```

### Recommended Use Case but with the old logo :(

![RUC for QuitAtom](https://user-images.githubusercontent.com/63189531/86133138-87745480-bb05-11ea-890c-b3bb50427140.png)

### Warnings

`kill -9` is used instead of `kill` because using regular `kill` gives "The editor has crashed" and doesn't actually quit the application. It's a hacky solution until the issue's resolved.

**WARNING: This script uses `SIGKILL` which will  pretty much nuke any unsaved work without confirmation because Atom  doesn't get a request to quit, it'll be made to quit (this is necessary  because requesting it will make Atom try and repair itself instead of  quitting). If you just don't want to see Atom but want in the  background, use Cmd + W instead** (*Also, `killall atom` doesn't work for whatever reason*)

### Additional Information

The script embedded within `Quit Atom.app` is given below:

```
try
	do shell script "kill -9 $(/usr/local/bin/pidof atom)"
on error errmsg
	display dialog "Atom is already closed :)"
end try
```

You can modify it by editing `Quit\ Atom.app/Contents/Resources/Scripts/main.scpt` with an editor of your choice

### License

Released under [The Unlicense](https://github.com/kittywhiskers/QuitAtom/blob/master/LICENSE).
