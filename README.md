# moc-twitter-sharing
### Share #NowPlaying on Twitter from MOC Player

I want to share the music I'm listening at the moment with MOC. But, MOC doesn't support Twitter sharing yet. So, I made this.

![moc-twitter-sharing image](http://i.imgur.com/JCQwILb.png)

[Twitter @FreakViking](http://twitter.com/FreakViking)

#### Dependences

* [T (Twitter CLI client)](http://sferik.github.io/t/)
* Ruby

#### How to

###### Install T

* Install Ruby
* Install T with `gem install`
* Configure T for your account ([instructions here](http://sferik.github.io/t/))
* When creating a new Twitter App for T, I used `moc-twitter-sharing` as name and GitHub repo URL as App website. Feel free to make any changes.

###### Set up the script

* Download `moc-twitter-sharing` from GitHub.
```shell
  git clone https://github.com/JuanjoSalvador/moc-twitter-sharing.git
  cd moc-twitter-sharing`
  ```

* Copy it into `~/.moc/scripts`

```shell
  mkdir ~/.moc/scripts
  cp now-playing.sh ~/.moc/scripts
```

* Open with your favourite text editor (e.g. vim) `~/.moc/config`. 
Go to `#ExecCommand1` variable, uncomment it (remove the #) and add  `~/.moc/now-playing.sh` to it.

Line must be `ExecCommand1 = ~/.moc/scripts/now-playing.sh`. Then, save the file and close it.

Now you're ready to share your "#NowPlaying" with MOC.

###### Use

To share what you are listening, only press `F1` by default (if you are using `ExecCommand1` config). If you're using another ExecCommand, keys by default are these.

    ExecCommand1  = F1 
    ExecCommand2  = F2
    ExecCommand3  = F3
    ExecCommand4  = F4
    ExecCommand5  = F5
    ExecCommand6  = F6
    ExecCommand7  = F7
    ExecCommand8  = F8
    ExecCommand9  = F9
    ExecCommand10 = F10

To use another key, you can modify the keymap file. This repair an issue that open Help Menu of the terminal emulator.

###### Custom keymap

The keymap included with this script is the same as the original MOC, but replaces access keys to `ExecCommand` by CTRL-NUM. For example, key for `ExecCommand1`, instead of being F1 on the keyboard, it is now CTRL-1.

To use it:
* Move the `custom_keymap` file to `~/.moc/`.
* Edit your `~/.moc/config` file. Search for the `Keymap`variable, uncomment it, and add the path to `custom_keymap` (by default, `~/.moc/custom_keymap`).

A detailed list of new keys:

    ExecCommand1  = CTRL-1 
    ExecCommand2  = CTRL-2
    ExecCommand3  = CTRL-3
    ExecCommand4  = CTRL-4
    ExecCommand5  = CTRL-5
    ExecCommand6  = CTRL-6
    ExecCommand7  = CTRL-7
    ExecCommand8  = CTRL-8
    ExecCommand9  = CTRL-9
    ExecCommand10 = CTRL-0

#### Contributions

Feel free to make any changes if you think it works better.

If you are experiencing any problem with this, [send me an email](mailto:juanjosalvador@openmailbox.org) or leave a reply in [the MOC forum](http://moc.daper.net/node/1430).

#### License

This is a free software. You have permission to copy, distribute and modify the software according GNU GPLv2 License. For more information, see LICENSE file.
