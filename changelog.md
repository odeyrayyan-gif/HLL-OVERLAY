# HLL Command Hub — Changelog
## v1.0.4
- Fixed where soviets did not highlight when selected
- Added instructions for editing and deleting current saved URL's

## v1.0.3
- Added Sniper category to Team Comparison and Map Overlay
- Added Total Kills row to Team Comparison
- Added Tank Scoreboard overlay — Allied vs Axis armor crews with vehicle kills, infantry kills and K/D
- Added Top 10 Scroll Banner overlay
- Renamed Bottom Ticker to Top 5 Scroll Banner in hub
- Fixed 150mm Howitzer (German SPG) not being counted as artillery
- Fixed 105mm Howitzer (Sherman SPA) being double-counted as both armor and artillery
- Fixed SPG crews appearing in Top 5, Top 10, Map Overlay infantry lists
- Fixed artillery kills now correctly counted toward artillery category only
- Artillery crews now excluded from Kill Streak alerts
- Tank scoreboard detection now uses broad keyword matching for vehicle names
- Tank scoreboard sorts by infantry kills
- Tank scoreboard artillery hard-excluded via howitzer/150mm/105mm keywords
- Kill Feed entries fade after 10 seconds
- Kill Feed polls every 1 second
- Kill Feed layout centered with equal columns for killer and victim
- Kill Feed victim names inferred from death delta matching
- Weapon abbreviations added to Kill Feed
- Kill Streak baseline fixed — no spam on OBS load
- Kill Streak polls every 1 second

## v1.0.2
- Added Kill Feed overlay
- Added saved servers dropdown to hub
- Added faction selector (US Army / British / Soviets)
- Added auto-updater with changelog display
- Fixed server root URL redirecting to hub
- Fixed legacy filename redirects for old OBS sources
- DO_NOT_EDIT prefix added to all files
- Phone view syncs with PC hub bidirectionally

## v1.0.1
- Fixed team comparison showing wrong stats after faction selector added
- Fixed armor/artillery exclusion across all overlays
- All overlays poll config every 1 second for instant hub changes
- Server switched to ThreadingHTTPServer for stability

## v1.0.0
- Initial release
- Local server system — no internet required during streams
- Hub control panel with phone support
- Team Comparison, AT Leaderboard, Player Spotlight overlays
- Command Dashboard, Kill Streak Alerts overlays
- Auto-updater via GitHub
