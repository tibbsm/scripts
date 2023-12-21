# scripts

a repo for various/random scripts. 

## TODO
- blog scripts
- more pen on paper thinking
- whisper to pdf 
- OCR to pdf
- picture (of note/diagrams) to git
    - OCR
- server setup 
- https://github.com/shadcn-ui/ui
- nice to have: show as note while working / floating window
- improve url logs (just take domain)
    - but this can be managed later? not sure which is better.
- Create docs...
    - add launchd to docs
- https://blog.logrocket.com (worth reading)
- little finished programs every day
    - find small tutorials
    - little ideas
- infinite programs
- Personal Feed
    - [GitHub - facundoolano/feedi: A personal news aggregator and Mastodon client](https://github.com/facundoolano/feedi)
    - [GitHub - mozilla/readability: A standalone version of the readability lib](https://github.com/mozilla/readability)
    - [Jobs — urlwatch 2.28 documentation](https://urlwatch.readthedocs.io/en/latest/jobs.html)
    - [Automate | Feed me up, Scotty!](https://feed-me-up-scotty.vincenttunru.com/docs/automate)
- research other peoples scripts
    - [Ask HN: Small scripts, hacks and automations you're proud of? | Hacker News](https://news.ycombinator.com/item?id=35122780)
    - [Ask HN: Share a shell script you like | Hacker News](https://news.ycombinator.com/item?id=37112991)
    - [Ask HN: Can I see your scripts? | Hacker News](https://news.ycombinator.com/item?id=32467957)
    - [Ask HN: Small scripts, hacks and automations you're proud of? | Hacker News](https://news.ycombinator.com/item?id=35122780&p=2)
    - [Ask HN: What are your best shell scripts that you use? | Hacker News](https://news.ycombinator.com/item?id=21918584)

## Inspo
- https://news.ycombinator.com/item?id=32467957
- https://news.ycombinator.com/item?id=35122780

## launchd
- https://www.launchd.info/
- https://gist.github.com/johndturn/09a5c055e6a56ab61212204607940fa0

#### Useful commands for launchd
- `launchctl list`
- `sudo launchctl print user/XXX`

#### Where to store the plist files (launchd.info)
- User Agents	~/Library/LaunchAgents	Currently logged in user
- Global Agents	/Library/LaunchAgents	Currently logged in user
- Global Daemons	/Library/LaunchDaemons	root or the user specified with the key UserName
- System Agents	/System/Library/LaunchAgents	Currently logged in user
- System Daemons	/System/Library/LaunchDaemons	root or the user specified with the key UserName
