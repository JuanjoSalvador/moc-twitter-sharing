# moc-twitter-sharing
### #NowPlaying Twitter Sharing for MOC Player

I want to share what I'm playing at this moment with MOC. But, MOC doesn't support Twitter sharing yet. So, I made this.

#### Dependences

* [T (Twitter CLI client)](http://sferik.github.io/t/)
* Ruby

#### How to

###### Install T

* Install Ruby
* Install T with `gem install`
* Configure T for your account ([instructions here](http://sferik.github.io/t/))
* When you create a new Twitter App for T, I use `moc-twitter-sharing` as name and GitHub repo URL as App website. Feel free to make any change.

###### Set up the script

* Download `moc-twitter-sharing` from GitHub

`git clone https://github.com/JuanjoSalvador/moc-twitter-sharing.git && cd moc-twitter-sharing`

* Copy it to `~/.moc`

`cp now-playing.sh ~/.moc`

* Open with your favourite text editor (e.g. vim) `~/.moc/config`. 
Go to `#ExecCommand1` variable, uncomment it (remove the #) and add  `~/.moc/now-playing.sh` to it.

Line must be like `ExecCommand1 = ~/.moc/now-playing.sh`. Save

Now you're ready to share your "#NowPlaying" with MOC.

#### Contributions

Feel free to make any change if you think it works better.

If you are experimenting any problem with this, [send me an email](mailto:juanjosalvador@openmailbox.org) or reply into the MOC forum.

#### License

This software is free software. You have permission to copy, distribute and modify the software according GNU GPLv2 License. For more information, see LICENSE file.
