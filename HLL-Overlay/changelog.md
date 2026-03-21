# HLL Command Hub — Changelog

## v1.1.2
- Fixed infantry kill counting in Team Comparison and Map Overlay — previously only kills from explicitly listed weapon keywords were counted, missing grenades, shovels, pistols and any unlisted weapon
- Infantry now counted as total kills minus vehicle kills minus other tracked categories (MG, sniper, AT, satchel, artillery) — matches the same logic used by the Top 5 and Top 10 scroll banners
- This means infantry totals in team comparison will now be consistent with the ticker leaderboards

## v1.1.1
- All 6 artillery and SPA weapons now correctly identified and excluded across every overlay
  - Allied fixed: 155mm Howitzer (M114), 122mm Howitzer (M-30)
  - Axis fixed: 150mm Howitzer (sFH 18)
  - Allied SPA: Sherman SPA 105mm, KV-2 152mm
  - Axis SPA: Brummbar (Strumpanzer IV) — shows as "Brummbar SPA" in kill feed
- Fixed German artillery players (sFH 18, Brummbar) being misassigned to Allied team when CRCON team field is absent — kills now count toward correct Axis artillery total in team comparison and map overlay
- Added 122mm and 152mm to exclusion lists across all overlays so Soviet artillery is never counted as infantry
- KV-2 and Sherman SPA now show correct names in kill feed
- Tank scoreboard now correctly excludes KV-2, Sherman SPA and all SPA variants from armor panels

## v1.1.0
- Top 5 and Top 10 scroll banners now use JS-driven scrolling (requestAnimationFrame) instead of CSS animation — completely seamless, never resets or jumps when stats or messages update
- All overlays now send a proper browser User-Agent header with API requests — fixes OPNsense WAP firewall blocks that some server admins may have
- Brummbar (Strumpanzer IV) now correctly identified as artillery and excluded from infantry lists across all overlays
- Brummbar shows as "Brummbar SPA" in kill feed
- Panzer IV and Panther no longer falsely detected as Sherman — bracket-priority weapon lookup added
- Tiger correctly matched via sd.kfz.181 bracket name
- Sherman Jumbo (M4A3E2) now shows as "Green Bean" in tank scoreboard and kill feed

## v1.0.9
- Added Message Banner overlay — transparent 1920x1080 overlay that bounces in (Pixar lamp style) and slowly fades out
- Message Banner shows custom messages from hub Box 5 — completely separate from the scroll banners
- Added "Show In" selector in Box 5 — choose between Scroll Banners or Message Banner per message
- Scroll Banners get loop-based and short time frequencies (every loop, 3/5/10 loops, 2/5 min)
- Message Banner gets longer time frequencies (2/5/10/15/30 min) and a ⚡ Test mode (every 5 sec) for positioning in OBS
- Preview strip in hub updates to match the selected destination — shows scrolling ticker for banners, card-style preview for message banner
- Ticker scroll animation no longer resets when stats update — seamless continuous scroll
- Fixed ticker messages not appearing for users with messages saved on PC but viewing from phone
- Messages synced from server every 2 seconds to all devices

## v1.0.8
- Added Ticker Messages system to hub (Box 5)
- Add custom messages to Top 5 and Top 10 scroll banners between player entries
- Choose platform icon per message: General, Twitch, YouTube, TikTok, X, Discord, Instagram (proper SVG brand icons)
- Set show frequency per message: every loop, every 3/5/10 loops, every 2/5 minutes
- Toggle individual messages on/off without deleting them
- Live preview strip shows exactly how messages look in the ticker before going live
- Phone view (Box 4) shows all saved messages — toggle on/off and change frequency from your phone
- Messages saved on PC automatically sync to phone view within 2 seconds
- Messages must be created on PC first, phone controls existing messages only
- Fixed ticker scroll banners using stale endpoint — now uses cached config for reliability

## v1.0.8
- Replaced emoji platform icons with proper SVG brand icons (Twitch, YouTube, TikTok, X, Discord, Instagram)
- Fixed ticker messages not appearing in Top 5 and Top 10 scroll banners
- Hub now pushes ticker messages to server every 5 seconds to keep overlays in sync
- SVG icons now render correctly in hub, preview strip, phone view, and ticker overlays

## v1.0.7
- Added Ticker Messages system to hub (Box 5)
- Add multiple custom messages to the Top 5 and Top 10 scroll banners
- Choose platform icon per message: General, Twitch, YouTube, TikTok, X, Discord, Instagram
- Set frequency per message: every loop, every 3/5/10 loops, every 2/5 minutes
- Toggle individual messages on/off without deleting them
- Live preview strip in hub shows exactly how messages look in the ticker
- Messages persist between sessions and sync to overlays instantly
- Phone view (Box 4) shows saved messages from desktop — toggle on/off and change frequency per message from your phone mid-stream
- Messages must be created on the PC hub first before they appear on the phone view
- Updated README with ticker messages section

## v1.0.6
- Fixed auto-updater downloading files to wrong folder on some systems
- Server now always runs from its own folder regardless of where start.bat is launched from

## v1.0.5
- Added Melee Leaderboard overlay — Top 5 knife and shovel killers, faction color coded, 3840x2160
- Added Soviets faction pill highlight fix in hub
- Added hint label under saved servers dropdown explaining how to edit/delete
- Fixed 150mm Howitzer not being counted as artillery in Team Comparison and Map Overlay
- Fixed 105mm Howitzer (Sherman SPA) being double-counted as armor and artillery
- Fixed SPG crews appearing in infantry lists across all overlays
- Artillery kills now locked to artillery category only — cannot bleed into armor or infantry
- Artillery crews excluded from Kill Streak alerts

## v1.0.4
- Fixed auto-updater version loop — server.py no longer auto-updates itself
- Users can now drag all files into GitHub without causing update conflicts
- HTML overlays still auto-update as normal

## v1.0.3
- Added Sniper category to Team Comparison and Map Overlay
- Added Total Kills row to Team Comparison
- Added Tank Scoreboard overlay — Allied vs Axis armor crews with vehicle kills, infantry kills and K/D
- Added Top 10 Scroll Banner overlay
- Renamed Bottom Ticker to Top 5 Scroll Banner in hub
- Fixed 150mm Howitzer not being counted as artillery
- Fixed 105mm Howitzer being double-counted as armor and artillery
- Fixed SPG crews appearing in Top 5, Top 10, Map Overlay infantry lists
- Artillery kills now correctly counted toward artillery category only
- Artillery crews excluded from Kill Streak alerts
- Tank scoreboard broad keyword detection for vehicle names
- Tank scoreboard sorts by infantry kills
- Kill Feed entries fade after 10 seconds
- Kill Feed polls every 1 second
- Kill Feed centered layout, victim names inferred from death delta
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
