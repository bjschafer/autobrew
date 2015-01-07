Autobrew is a script to automatically check Homebrew (on Mac) for updates.  If it finds updates, it will notify you using Notification Center (so requires ≥ 10.8).

Right now you place the `.command` file in `/usr/local/bin` and the `.plist` file in `~/Library/LaunchAgents`, then run `launchctl load com.bjschafer.autobrew`

It checks once a day at 12:03.
