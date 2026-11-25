# Third-party media and lifestyle integrations for a dating-app "MySpace" profile (state as of 2026-11-25)

Method caveat: WebFetch could not resolve developer.spotify.com, techrepublic.com or other hosts in this session (network allowlist). All findings come from WebSearch result summaries, not from reading primary pages end to end. Anything marked "unverified" must be checked on the primary site before the report relies on it. About 15 tool calls were used, so many sources in scope (Deezer, Tidal, SoundCloud, Riot, PSN/Xbox, Tripadvisor/Airbnb, IMDb, Are.na, StoryGraph, Trakt, TMDB, Apple Health) have little or no verified coverage and are listed under Gaps.

## Spotify: what the Web API allows in 2026

### Takeaway
Spotify is effectively closed to a new consumer app without Extended Quota Mode. Since 11 Feb 2026, new Development Mode apps need a Premium-holding owner, one Client ID, and at most 5 authorized users, with a reduced endpoint set. Existing dev-mode apps were moved to the same rules on 9 March 2026 (one source says Spotify postponed this for existing integrations, so the date is contested). Extended access is reserved for established, scalable, impactful apps and is reported to need roughly 250k MAU (unverified).

### Cited Findings
- Feb 2026 change: Development Mode now requires a Spotify Premium account (the app stops working if the owner's Premium lapses). It is limited to one Client ID per developer and 5 authorized users per Client ID (previously 25), and to a smaller set of endpoints. New dev-mode apps got this from 11 Feb 2026; existing ones were migrated 9 March 2026. — [TechCrunch, 6 Feb 2026](https://techcrunch.com/2026/02/06/spotify-changes-developer-mode-api-to-require-premium-accounts-limits-test-users/); [Spotify blog, 6 Feb 2026](https://developer.spotify.com/blog/2026-02-06-update-on-developer-access-and-platform-security); [Spotify migration guide](https://developer.spotify.com/documentation/web-api/tutorials/february-2026-migration-guide); [Neowin](https://www.neowin.net/news/spotify-now-requires-premium-accounts-for-developer-mode-api-access/)
- Spotify says dev mode is intentionally limited and should not be relied on as a foundation for building or scaling a business. — [Techzine](https://www.techzine.eu/news/devops/138608/spotify-puts-the-brakes-on-developer-mode-with-stricter-api-rules)
- Apps already in Extended Quota Mode are exempt from the Feb 2026 dev-mode changes (per migration guide and a Spotify staff forum reply). — [Spotify migration guide](https://developer.spotify.com/documentation/web-api/tutorials/february-2026-migration-guide); [Spotify community thread](https://community.spotify.com/t5/Spotify-for-Developers/February-2026-Spotify-for-Developers-update-thread/m-p/7361070)
- Removed for dev-mode apps in Feb 2026 (per GitHub issues citing the changelog): artist top-tracks, batch album fetches, browse categories, new releases, available markets, bulk track metadata, other users' profile details; 15 endpoints removed in total per one source. ISRC and popularity fields reportedly stripped (secondary source, unverified). — [rspotify issue #550](https://github.com/ramsayleung/rspotify/issues/550); [spotiglass issue #237](https://github.com/isaaclins/spotiglass/issues/237); [TechCrunch](https://techcrunch.com/2026/02/06/spotify-changes-developer-mode-api-to-require-premium-accounts-limits-test-users/)
- Extended access: since April 2025 Spotify reserves it for apps with "established, scalable, and impactful use cases"; Spotify said over 95% of applications failed basic security, privacy and licensing standards. Moving from dev mode to extended requires an approved Partner Application form sent from a company email. — [Spotify blog, Apr 2025](https://developer.spotify.com/blog/2025-04-15-updating-the-criteria-for-web-api-extended-access); [Quota modes doc](https://developer.spotify.com/documentation/web-api/concepts/quota-modes)
- A ~250,000 MAU threshold for extended access is repeated in forum posts and a Medium article; not found in Spotify's official docs in these results. — [Medium](https://medium.com/@apollinereymond/spotifys-api-lock-down-the-end-of-open-data-for-the-music-business-0a9bf07dba27); [Spotify community](https://community.spotify.com/t5/Spotify-for-Developers/Web-API-Limitations/td-p/7511737)
- Nov 2024: Spotify removed access for new/dev-mode apps to recommendations, related artists, audio features/analysis, featured/category playlists and similar; extended-mode apps existing before then were unaffected. — [TechCrunch, Nov 2024](https://techcrunch.com/2024/11/27/spotify-cuts-developer-access-to-several-of-its-recommendation-features)
- Developer policy: Spotify content may not be used to train ML/AI models, and the policy says to avoid storing data the app can fetch on the fly. A forum reply said combining Spotify API data with other services' data would likely conflict with the terms (not an official ruling). Receiptify/Obscurify-type "insights" apps were said to be hit by the analysis restriction. — [Spotify community thread](https://community.spotify.com/t5/Spotify-for-Developers/Concerns-About-Implementing-Chartmetric-API-on-a-Spotify/td-p/7322158); [Spotify developer policy](https://developer.spotify.com/policy/complying/); [Spotify Developer Terms](https://developer.spotify.com/terms) (page found shows v9 2023; a May 15, 2025 update is reported, so the current version is unverified)

### Inferences
- A launch-stage dating app cannot get Spotify user data at scale: dev mode (5 users) is unusable and extended mode has an MAU bar. Use embeds/share links and user-uploaded data instead.
- Matching on Spotify-derived taste vectors likely violates the policy (no ML use, no combining), so Spotify data is "display only" at best.

### Gaps
- Not verified: whether top tracks/artists (`/me/top`) and recently-played remain in dev mode after Feb 2026 (search results were silent); exact current Developer Terms text on caching, branding and attribution; official extended-mode MAU requirement; embed ToS (iFrame embed is public and needs no API key, but I did not retrieve its terms).
- Tinder "Spotify anthem", Hinge, Bumble Spotify features: no search result covered them; I have no verified details on how they were built (likely legacy extended or partnership access).

## Apple Music (MusicKit), YouTube, SoundCloud, Last.fm, Deezer, Tidal

### Takeaway
Apple Music/MusicKit is available but needs a paid Apple Developer Program membership and a signed developer token, and user data needs Apple Music subscriber permission. YouTube Data API is open with 10,000 units/day default and an audit for more. Last.fm is free for non-commercial only; a dating app needs a commercial agreement. Deezer, Tidal, SoundCloud: not verified.

### Cited Findings
- MusicKit/Apple Music API use requires a paid Developer Program account (per Apple forum), every request needs a signed developer token, and authenticated subscribers can expose library, recommendations and recently played with user permission. — [Apple developer forum](https://developer.apple.com/forums/thread/661313); [Apple MusicKit](https://developer.apple.com/musickit)
- A developer reports the heavy-rotation endpoint returns an empty array. Single anecdotal report. — [Apple forum](https://developer.apple.com/forums/tags/apple-music-api?page=9)
- YouTube Data API: default 10,000 quota units/day; more quota needs a compliance audit and the audit/extension form; periodic audits occur. — [YouTube quota and compliance audits](https://developers.google.com/youtube/v3/guides/quota_and_compliance_audits?hl=en)
- Last.fm API: commercial or research use requires contacting Last.fm and a commercial use agreement first; using data commercially without one is a material breach. — [Last.fm API ToS](https://www.last.fm/api/tos)

### Inferences
- Last.fm gives scrobble history (strong long-term taste signal) but only helps as MVP if you obtain a commercial agreement; users with Last.fm are a small, music-nerd segment.
- Apple Music requires subscriber consent and a $99-class membership (fee not confirmed in results); worth it for iOS-heavy markets, less so for India where Android dominates.

### Gaps
- Deezer, Tidal, SoundCloud: no results returned; current developer access, new-app registration status unknown.
- Apple Music rate limits, MusicKit license terms on storing data, YouTube Music (no official API exists as far as I know; not verified), and YouTube ToS storage rules were not retrieved.

## Film / TV / books / games

### Takeaway
Letterboxd API is by-request only and effectively not open; Goodreads closed new keys in Dec 2020; Steam Web API is easy but privacy-bound; Discord rich presence is real-time and public rather than a profile-import API; Twitch Helix is free. Hardcover is the open book option (unverified).

### Cited Findings
- Letterboxd: API access is by request (email api@letterboxd.com per third-party docs), the official page points to TMDB for general film metadata, and the Dec 2025 terms ban robots/scrapers. A 2026 third-party guide says the waitlist is effectively closed. — [Letterboxd API page](https://letterboxd.com/api-beta/); [Letterboxd terms](https://letterboxd.com/terms); [logiover guide](https://logiover.pages.dev/guides/letterboxd-no-api-export-film-review-data/)
- Goodreads: stopped issuing new API keys as of 8 Dec 2020 and deactivated old keys. — [InfoDocket](https://www.infodocket.com/2020/12/13/report-goodreads-plans-to-retire-api-access-disables-existing-api-keys/); [Open Library blog](https://blog.openlibrary.org/2020/12/13/importing-your-goodreads-accessing-them-with-open-librarys-apis/)
- Hardcover started in 2021 after Goodreads' shutdown; a third-party directory lists a GraphQL endpoint (api.hardcover.app/v1/graphql), bearer auth, and 60 req/min (unverified, not official). — [Disassociated](https://disassociated.com/hardcover-goodreads-like-online-social-catalogue-books/); [directory listing](https://moltdirectory.pages.dev/web-frontend-development/hardcover)
- Steam Web API: key-based; the terms page found is dated 2010; secondary sources cite 100,000 calls/day; private/friends-only profiles are not returned. — [Steam Web API Terms](https://steamcommunity.com/dev/apiterms); [Valve wiki](https://developer.valvesoftware.com/wiki/Steam_Web_API)
- Discord: Rich Presence is shown publicly on the user's Discord profile, is desktop and Android only (not iOS/console/web), and the Social SDK needs presence OAuth scopes. This is game-to-Discord outbound, not a way to read a user's profile. — [Discord Rich Presence docs](https://docs.discord.com/developers/platform/rich-presence); [Social SDK rich presence](https://docs.discord.com/developers/discord-social-sdk/development-guides/setting-rich-presence)
- Twitch: official changelog shows active 2026 Helix development; third-party pages say free. — [Twitch change log](https://dev.twitch.tv/docs/change-log/)

### Inferences
- For films and books, user data uploads (Letterboxd CSV export, Goodreads CSV export, Hardcover import) are the realistic path; TMDB for posters/metadata (attribution required, not verified).
- Steam library/playtime is a clean gaming signal but only for users with public profiles.

### Gaps
- Trakt (only a 2023 directory entry found), TMDB terms and commercial licence, IMDb (no official consumer API found), StoryGraph (no API confirmed; forum says on roadmap), PlayStation, Xbox, Riot: not verified.

## Fitness / travel / food / places

### Takeaway
Strava tightened terms in Nov 2024 (no showing a user's data to other users) and again reportedly in 2026, which makes it poor for a public profile. Garmin approvals appear paused. Health Connect is gated by Play policy. Google place_id is storable; Yelp and Foursquare are paid.

### Cited Findings
- Strava (Nov 2024): third-party apps may only show a user's activity data to that user, and AI use of API data is prohibited. — [Strava support](https://support.strava.com/hc/en-us/articles/31798729397773-API-Agreement-Update-How-Data-Appears-on-3rd-Party-Apps); [DC Rainmaker](https://dcrainmaker.com/2024/11/stravas-changes-to-kill-off-apps.html)
- Strava June 2026: one outlet reports subscription requirements for Standard-tier developers and tighter routing/display rules; unconfirmed. A deauthorization endpoint is dated 1 June 2026 in the changelog. — [TechRepublic](https://www.techrepublic.com/article/news-strava-api-scraping-crackdown/); [Strava changelog](https://developers.strava.com/docs/changelog/)
- Garmin Connect Developer Program: free for approved business use; a forum thread and a Sept 2026 report say new access requests are paused. — [Garmin FAQ](https://developer.garmin.com/gc-developer-program/program-faq); [the5krunner, Sept 2026](https://the5krunner.com/2026/09/14/garmin-developer-api-access-paused/); [Garmin forum](https://forums.garmin.com/apps-software/mobile-apps-web/f/garmin-connect-mobile-andriod/441607/garmin-connect-api-access-paused-for-months-what-are-startups-supposed-to-do)
- Health Connect: needs Play Console health declaration, minimum data types, and an approved use case; tightened March 2025. — [Play Health Connect policy FAQ](https://support.google.com/googleplay/android-developer/answer/12991134)
- Google Places: place_id exempt from caching limits, refresh if over 12 months old. — [Google place ID docs](https://developers.google.com/maps/documentation/places/web-service/place-id)
- Yelp Fusion: free access ended in 2024; reports conflict on price (about $229/month entry per TechCrunch vs per-1000 pricing elsewhere). — [TechCrunch](https://techcrunch.com/2024/08/02/yelps-lack-of-transparency-around-api-charges-angers-developers)
- Foursquare Places: pay-as-you-go with a reported $200/month credit; figures differ across third-party sites. — [Foursquare pricing](https://foursquare.com/pricing/)
- Untappd: v4 API, 100 calls/hour/key, OAuth for user data; one app listing claims new access was closed (unverified). — [Untappd API docs](https://untappd.com/api/docs)
- Pinterest: Trial access 1,000 req/day; Standard needs approval, with mid-2026 forum reports of weeks-to-months waits and denials. — [Pinterest access tiers](https://developers.pinterest.com/docs/key-concepts/access-tiers/); [Pinterest community](https://community.pinterest.biz/t/standard-access-upgrade-pending-since-nov-5-app-id-1634913/53383.md)

### Inferences
- Strava is not viable as a public-profile data source under current terms; a user-shared Strava link/image is safer.
- Health data brings sensitive-data/DPDP Act (India) considerations; not researched here.

### Gaps
- Apple Health (no server API; HealthKit is on-device), Airbnb/Tripadvisor, Are.na: not verified. Yelp/Foursquare display and caching rules, and India regional limits for any platform, were not retrieved.

## Embeds, export uploads and other indirect options

### Takeaway
This area is largely unverified; no sources were retrieved for embeds or for other apps' integrations.

### Cited Findings
- None verified beyond Spotify's developer policy advising against storing data fetchable on the fly (see Spotify section).

### Inferences
- Likely lowest-friction MVP: oEmbed/iFrame embeds (Spotify, YouTube, SoundCloud), user-pasted share links, and GDPR/CSV export uploads (Letterboxd, Goodreads, Last.fm scrobbles, Spotify "Extended streaming history" request) plus manual entry. These are my assumptions from background knowledge, not verified in this session.
- Priority guess: MVP = Spotify/YouTube embeds, manual entry, CSV uploads, TMDB metadata; Later = Last.fm (commercial deal), Steam, Apple Music, Twitch, Google Places; Avoid = Strava public display, Goodreads, Letterboxd API, Garmin, Untappd, Yelp for cost reasons.

### Gaps
- Embed terms (Spotify, YouTube, SoundCloud), Tinder/Hinge/Bumble integration mechanics, Receiptify/Stats.fm/Musicboard current status, and data-export formats are unverified.
