# moc-twitter-sharing
### Share #NowPlaying on Twitter from MOC Player

I want to share the music I'm listening at the moment with MOC. But MOC doesn't support Twitter sharing yet. So I made this.

![moc-twitter-sharing image](http://i.imgur.com/JCQwILb.png)

[Twitter @FreakViking](http://twitter.com/FreakViking)

#### Dependences

* Ruby 2.1.5 or newer

#### How to

###### Install Ruby

* Debian, Ubuntu, and derivates

  `# apt-get install ruby-full`

* Fedora, CentOS

  `# yum install ruby`

* Arch Linux

  `# pacman -S ruby`

###### Install the script

* Download `moc-twitter-sharing` from GitHub.

```shell
  git clone https://github.com/JuanjoSalvador/moc-twitter-sharing.git
  cd moc-twitter-sharing
```

* Copy it into `~/.moc/scripts`

```shell
  mkdir ~/.moc/scripts
  cp now-playing.rb ~/.moc/scripts
```

* Open with your favourite text editor (e.g. vim) `~/.moc/config`.
Go to `#ExecCommand1` variable, uncomment it (remove the #) and add  `/home/<YOUR_USER>/.moc/scripts/now-playing.rb` to it.

Line must be `ExecCommand1 = /home/<YOUR_USER>/.moc/scripts/now-playing.rb`. Then, save the file and close it.

Now you're ready to share your "#NowPlaying" with MOC. Time to configure Twitter token and API keys.

###### Use

To share what you are listening, only press `F1` by default (if you are using `ExecCommand1` config). If you're using another ExecCommand, these are the keys by default:.

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

To use another key, you can modify the keymap file.

#### Known issues

###### F1 won't execute the script

Some terminal emulators (like `xfce4-terminal`) use F1 key to show help. This make useless to use `F1` for this purpose. The solution is changing `ExecCommand1` by `ExecCommand2` and using to share what you're listening to.

#### Contributions

Feel free to make any changes if you think it works better.

If you are experiencing any problem with this, [send me an email](mailto:juanjosalvador@openmailbox.org) or leave a reply in [the MOC forum](http://moc.daper.net/node/1430).

#### License

This is a free software. You have permission to copy, distribute and modify the software according GNU GPLv2 License. For more information, see LICENSE file.
