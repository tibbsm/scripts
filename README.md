# scripts

a repo for scripts. 

## launchd
- https://www.launchd.info/
- https://gist.github.com/johndturn/09a5c055e6a56ab61212204607940fa0

#### TODO
- learn more. the script is inconsistent. hasn't run today
- get it to run once on open
- nice to have: show as note while working / floating window
- a lil flaky, seems to be after sleep 

#### Where to store the plist files (launchd.info)
- User Agents	~/Library/LaunchAgents	Currently logged in user
- Global Agents	/Library/LaunchAgents	Currently logged in user
- Global Daemons	/Library/LaunchDaemons	root or the user specified with the key UserName
- System Agents	/System/Library/LaunchAgents	Currently logged in user
- System Daemons	/System/Library/LaunchDaemons	root or the user specified with the key UserName