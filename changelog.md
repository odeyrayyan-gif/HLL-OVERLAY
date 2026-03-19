v1.0.2
──────────────────────────────────────────────────────
• Added Tank Scoreboard overlay — two side panels showing
  Allied and Axis armor crews ranked by vehicle kills,
  with detected tank type and K/D ratio
• Added Top 10 Scroll Banner overlay (identical to Top 5
  but shows 10 players)
• Renamed Bottom Ticker to Top 5 Scroll Banner in hub
• Kill Feed now fades entries after 10 seconds
• Kill Feed polls every 1 second for faster updates
• Kill Feed layout centered — killer and victim balanced
  on either side of the weapon badge
• Kill Feed victim names inferred from death delta matching
• Weapon abbreviations added to Kill Feed (K98, Thompson,
  Sherman 75, Tiger 88, Stickie etc.)
• Kill Streak baseline fixed — no more spam on OBS load
• Kill Streak polls every 1 second for faster detection
• Auto-updater now shows changelog in terminal on update
• Auto-updater supports changelog.md on GitHub
• Saved servers dropdown in hub
• Faction selector added (US Army / British / Soviets)
• Phone view syncs swap and spotlight with PC hub
• Player spotlight excludes arty/armor from auto fallback

v1.0.1
──────────────────────────────────────────────────────
• Fixed team comparison showing identical stats after
  faction selector was added
• Fixed armor/artillery exclusion across top 10 list,
  top 5 ticker, and player spotlight fallback
• All overlays now poll config every 1 second for instant
  hub changes (swap, faction, API URL)
• Swap toggle triggers immediate overlay update
• Player spotlight triggers immediate update on name change
• Hub input debounce lowered to 150ms for faster response
• Phone mode auto-detected via screen width
• Server switched to ThreadingHTTPServer to handle phone
  screen lock without dropping connections
• Root URL redirects to hub automatically
• Legacy filename redirects so old OBS sources still work
• DO_NOT_EDIT prefix added to all files

v1.0.0
──────────────────────────────────────────────────────
• Initial release — local server system
• Hub control panel with phone support
• Team Comparison overlay
• AT Leaderboard overlay
• Player Spotlight overlay
• Command Dashboard overlay
• Kill Streak Alerts overlay
• Kill Feed overlay
• Auto-updater via GitHub
