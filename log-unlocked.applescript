--  launchd to run on start
--  launchd to run script preiodically

-- check if unlocked 

-- if idle
-- https://www.macscripter.net/t/on-idle-handler/60470
-- on idle 
-- end idle

do shell script "echo $(date '+%Y-%m-%d %H:%M:%S') >> ~/.accesslog"

-- cleanup script to periodically/manually go through and clean logs by summing the times by date