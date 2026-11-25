# Professional, Social and Identity Data Integrations for a Dating-App "MySpace" Profile Space (as of 2026-11-25)

Method note: ~15 tool calls; many results were search-engine summaries of secondary sources. learn.microsoft.com could not be fetched (host not in session network allowlist), so LinkedIn doc claims come via search snippets, not full-page reads. Items without a URL are not asserted as fact.

## 1. LinkedIn: what a third-party consumer app can actually get; is profile import feasible without partner status?

### Takeaway
Self-serve LinkedIn access is essentially "Sign In with LinkedIn (OIDC)" (identity, name, photo, email) plus the new self-serve "Verified on LinkedIn" API (verification badges). Rich profile import (positions, education, headline) is not part of the self-serve product, and LinkedIn actively litigates scrapers, so an MVP should use OIDC sign-in for identity/verification only and use resume/PDF upload, manual entry or work-email-domain verification for employer/job data.

### Cited Findings
- Sign In with LinkedIn is OpenID Connect-based with scopes `openid`, `profile`, `email`; `profile` returns a "lite profile" (id, name, picture); userinfo endpoint is `https://api.linkedin.com/v2/userinfo`. Old `r_liteprofile` / `r_emailaddress` flow deprecated 1 Aug 2023. — [Microsoft Learn: Sign In with LinkedIn using OIDC](https://learn.microsoft.com/en-gb/linkedin/consumer/integrations/self-serve/sign-in-with-linkedin-v2)
- Sources differ on whether `profile` includes headline (one LinkedIn page says "name, headline, and photo"; the OIDC doc says id, name, picture). Treat headline as unconfirmed. — [getting access](https://learn.microsoft.com/en-us/linkedin/shared/authentication/getting-access)
- Product is requested in the Developer Portal (My Apps > Products); broader profile fields (headline/company etc.) need specific, gated LinkedIn API permissions (search-synthesised; not verified in primary doc). — [Microsoft Learn](https://learn.microsoft.com/en-us/linkedin/shared/authentication/getting-access)
- "Verified on LinkedIn" is a self-serve API (launched 2025) letting third-party apps display verified identity and workplace info; tiers: Development (free, devs only, 5,000 req/day), Lite (free for all LinkedIn members, 5,000/day), Plus (enterprise, custom pricing, needs LinkedIn Business Development approval; bulk validation up to 500 members/request). Consent via OAuth 2.0, members can revoke; only completed verification categories are returned; unverified members are sent to LinkedIn to verify. — [Verified on LinkedIn overview](https://learn.microsoft.com/en-us/linkedin/consumer/integrations/verified-on-linkedin/overview), [launch news](https://news.linkedin.com/2025/Verified_on_LinkedIn)
- LinkedIn states the API is for trust enhancement, not regulatory compliance or eligibility decisions; badge must follow branding guidelines (no altering icon/wording, no showing before API confirms). Existing partners include Adobe, G2, UserTesting, TrustRadius, Zoom, Furnished Finder, User Interviews, PeerSpot. — [Verified on LinkedIn news](https://news.linkedin.com/2025/Verified_on_LinkedIn), [branding guidelines](https://learn.microsoft.com/en-gb/linkedin/consumer/integrations/verified-on-linkedin/branding-ux-guidelines)
- LinkedIn passed 100M verified members (2025). — [LinkedIn news](https://news.linkedin.com/2025/verified--linkedin-crosses-100m-member-milestone)
- Scraping litigation: LinkedIn sued Proxycurl (Jan 2025); Proxycurl shut down July 2025 and LinkedIn announced a resolution requiring deletion of unlawfully obtained data. LinkedIn also sued ProAPIs (N.D. Cal. 3:25-cv-8393), alleging millions of fake accounts and customers paying up to $15,000/month; a Dec 2025 filing indicated both sides were exploring early resolution (final outcome not found). — [LinkedIn news: legal action](https://news.linkedin.com/2025/linkedin-takes-legal-action-to-defend-member-privacy), [LinkedIn wins](https://news.linkedin.com/2025/LinkedInWinsLegalBattleToProtectMemberData), [Bloomberg Law](https://news.bloomberglaw.com/artificial-intelligence/linkedins-war-against-bot-scrapers-ramps-up-as-ai-gets-smarter)
- Dating-context sentiment: Zety survey (vendor, résumé company; directional only) says 48% trust LinkedIn profile info more than dating-app info, 21% of workers have looked up a date on LinkedIn. — [Zety](https://zety.com/blog/linkedin-romance-report)
- Fortune (31 Aug 2026) reports singles using LinkedIn to vet matches ("private investigators"); only excerpt read. — [Fortune](https://fortune.com/2026/08/31/singles-have-become-their-own-private-investigators-daters-are-using-linkedin-to-screen-matches/)
- The League and The Inner Circle screen applicants by LinkedIn profile; The League ran a LinkedIn creator campaign with 10 creators who were League members. — [Global Dating Insights](https://www.globaldatinginsights.com/news/the-league-tests-linkedin-for-dating-app-marketing/), [Digiday](https://digiday.com/marketing/why-brands-like-the-league-are-making-the-first-move-to-take-advantage-of-linkedins-creator-appeal/)

### Inferences
- Without partner status, "import my LinkedIn" is not feasible; a "Verified" badge (Lite tier) is feasible and fits the dating trust use case, but the "not for eligibility decisions" clause means it should be a display badge, not a gating mechanism, and must be checked against LinkedIn's API terms before launch.
- Scraper-based import (Proxycurl-style vendors) carries legal and reputational risk; avoid.
- Employer/title is better sourced via user-entered text plus optional work-email-domain OTP (no API needed); LinkedIn URL as a plain user-pasted link is zero-API (but do not scrape it).
- LinkedIn in dating: signal is "seriousness/legitimacy" but context mismatch (career-status sorting, vetting/stalking by lookup) is a risk; lean toward showing less (industry/role band, verified badge) than full employer.

### Gaps
- Exact current LinkedIn API Terms on storing/displaying profile data and on matching/dating use were not read (domain blocked); could not confirm whether Verified on LinkedIn prohibits dating-app use.
- Whether Verified on LinkedIn exposes employer/school or only identity/workplace-verified flags in Lite tier not confirmed.
- ProAPIs final resolution unknown. No primary evidence found of Bumble BFF/Bizz LinkedIn integration history (search found nothing); Bumble Bizz/LinkedIn history unverified.

## 2. Social and creator platforms (Meta, TikTok, X, Snap, Reddit, Spotify, Bluesky/Mastodon, GitHub, etc.)

### Takeaway
Consumer-facing API access has contracted sharply: Instagram's personal-account API is gone, X is pay-per-use, Reddit requires approval/contract for commercial use, Spotify extended access is hard to get. Cheapest, most reliable "MySpace" integrations are user-pasted links/embeds and open protocols (Bluesky, Mastodon, GitHub public data), with OAuth login only where scopes are light (TikTok, Snap).

### Cited Findings
- Instagram: Meta ended Basic Display API on 4 Dec 2024; "there will no longer be a set of Instagram APIs for consumer developer apps"; replacement (Instagram API with Instagram Login) is for professional (business/creator) accounts and needs app review; one source (Smash Balloon) claims personal accounts supported, which conflicts with Meta's framing. — [Meta blog](https://developers.facebook.com/blog/post/2024/09/04/update-on-instagram-basic-display-api), [TechCrunch](https://techcrunch.com/2024/12/06/instagram-locks-out-developers-of-third-party-consumer-apps), [DEV article](https://dev.to/nick_johnson/instagram-basic-display-api-is-dead-build-what-works-instead-4ifm), [Meta changelog](https://developers.facebook.com/docs/instagram-platform/changelog)
- X API: official docs say pay-per-usage, credits bought in Developer Console, no subscriptions/minimums; reported formally released Feb 2026 with legacy free users moved to pay-per-use ($10 voucher); third-party reports of 3M post-read monthly cap and legacy Basic/Pro tier retirement dates conflict. — [X docs pricing](https://docs.x.com/x-api/getting-started/pricing), [Gigazine](https://gigazine.net/gsc_news/en/20260209-x-api-pay-per-use), [TechCrunch Oct 2025](https://techcrunch.com/2025/10/21/x-is-testing-a-pay-per-use-pricing-model-for-its-api)
- TikTok: Login Kit baseline `user.info.basic` (avatar + display name) added by default; username, bio, profile link, `is_verified` sit in `user.info.profile`, which must be requested/approved (scopes with "Submit for review" need TikTok review); no explicit 2026 confirmation of review requirement for `user.info.profile` found. — [TikTok Login Kit](https://developers.tiktok.com/docs/en/login-kit-overview), [scopes](https://developers.tiktok.com/docs/en/scopes-overview), [scope migration bulletin](https://developers.tiktok.com/bulletin/user-info-scope-migration)
- Snap: Bitmoji Kit and Story Kit removed March 2022; Login Kit still documented, limited scopes (display name, Bitmoji, user ID); 2026 status not confirmed. — [Snap Kit changelog](https://developers.snap.com/snap-kit/changelog), [Snap eng blog](https://eng.snap.com/snap_tool_kit)
- Reddit: per search summaries (vendor blogs, unverified), new Data API clients need approval since Nov 2025; commercial use needs written approval/contract; no public rate card; free tier for approved non-commercial use. — [Citybiz](https://www.citybiz.co/article/868288/reddit-api-pricing-in-2026-what-youll-actually-pay-at-every-tier/), [TechCrunch 2024 content policy](https://techcrunch.com/2024/05/09/reddit-locks-down-its-public-data-in-new-content-policy-says-use-now-requires-a-contract)
- Spotify: since 15 May 2025 extended Web API access limited to established, scalable use cases (reported: registered business, 250k MAU, community-sourced not official); Development Mode apps limited to small authorized user set, Premium requirement; Feb and July 2026 changes reported but not read. — [Spotify blog](https://developer.spotify.com/blog/2025-04-15-updating-the-criteria-for-web-api-extended-access), [community thread](https://community.spotify.com/t5/Spotify-for-Developers/Web-API-quota-updates-for-Development-Mode/td-p/7508852)
- Bluesky: AT Protocol OAuth exists with public client-id metadata documents; minimal scope `atproto` for sign-in; public-client sessions reportedly max 14 days (third-party guide); one library claims AppView rejects OAuth tokens (unverified). — [atproto OAuth guide](https://atproto.com/guides/oauth), [Bluesky docs](https://docs.bsky.app/docs/advanced-guides/oauth-client)

### Inferences
- MVP: let users paste profile URLs/handles for Instagram, Spotify, TikTok, X, Substack, Medium, Behance, Dribbble, GitHub, Notion public pages and render via official oEmbed/embeds or link cards (no API key, no storage of third-party content), consistent with how Hinge/Bumble treat Instagram/Spotify (see Section 4 gap).
- OAuth "connect" worth doing early: Spotify only if you can qualify (unlikely at launch; fall back to link/embed), Bluesky/Mastodon/GitHub (open, cheap, public data). TikTok `user.info.profile` later after review. X: avoid reading feeds (cost); link only. Reddit: avoid (commercial approval, doxxing risk). Snap: low value; later at best.
- Instagram verification-by-OAuth is unavailable for personal accounts; use a bio-code challenge (user places a code in bio, app checks public page) only after legal review, as this borders on scraping (unverified legal view).

### Gaps
- Not searched or not found: Pinterest, Threads API, Substack (no public API known; unverified), Medium (API reportedly closed to new integrations; unverified), Notion public API/OAuth, Google Photos (Library API scope reduction in 2025 is from my background knowledge, unverified here), Mastodon OAuth specifics, GitHub OAuth, Behance/Dribbble API status (Behance API reportedly closed to new apps, unverified).
- No ToS text on storage/display/matching read for any platform; TikTok/Meta platform terms for dating use not checked.

## 3. Identity and verification layers (India focus), trust without doxxing

### Takeaway
Selfie/liveness checks are now table stakes (Tinder Face Check mandatory for new users in India; Hinge Face Check expanding; Bumble ID verification). Government-ID verification in India is possible via DigiLocker "requester" onboarding or UIDAI OVSE registration, but there is a legal/privacy overhang around Aadhaar use by private apps; show only a boolean "verified" badge and never the underlying identifiers.

### Cited Findings
- Tinder launched Face Check (video selfie, Photo Verified badge) in India Oct 2025 and rolled out mandatory face verification for new users in India; also requires selfie verification for new US users (Oct 2025). — [Business Today](https://www.businesstoday.in/technology/news/story/tinder-launches-face-check-in-india-to-fight-bots-and-make-online-dating-more-authentic-497422-2025-10-09), [Global Dating Insights](https://www.globaldatinginsights.com/featured/tinder-rolls-out-mandatory-face-verification-for-new-users-in-india/), [TechCrunch](https://techcrunch.com/2025/10/22/tinder-will-require-new-users-in-the-us-to-verify-their-identity-with-a-selfie/)
- Bumble launched government-ID verification with profile badge in March 2025. — [TechCrunch](https://techcrunch.com/2025/03/17/bumble-heightens-safety-measures-with-new-id-verification-feature/)
- Hinge: optional Selfie Verification templates deleted within 24 hours; Face Check testing expanded in additional markets Q1 2026; Hinge claims selfie-verified users get more dates (self-reported). — [Hinge newsroom](https://hinge.co/newsroom/Safer-Internet-Day-2026), [datingadvice.com](https://www.datingadvice.com/online-dating/how-profile-verification-works-in-online-dating)
- DigiLocker: businesses act as "requesters" via Requester Meri Pehchaan API spec (v2.4 cited), onboarding through API Setu; Indian registered mobile and India-hosted server required; Aadhaar data limited (last four digits reported). Matrimony app Dhol uses DigiLocker API for verification. — [Didit overview](https://didit.me/blog/digilocker-api/), [DigiLocker onboarding FAQ](https://www.digilocker.gov.in/assets/FAQ%20DL%20EL_onboarding.pdf), [Cashfree docs](https://www.cashfree.com/docs/secure-id/digilocker/digilocker.md), [Dhol press release](https://theprint.in/ani-press-releases/dhol-matrimony-redefines-online-matchmaking-with-ai-powered-scam-resistant-and-privacy-first-platform/2854902)
- UIDAI offline verification requires registration as an OVSE; Gazette notification dated 9 Dec 2025 referenced; critics worry about private-sector Aadhaar use vs. the 2018 Supreme Court judgment. — [UIDAI OVSE](https://uidai.gov.in/en/ovse-registration.html), [OVSE playbook](https://www.uidai.gov.in/images/OVSE_Playbook.pdf), [Delhi IT circular](https://it.delhi.gov.in/sites/default/files/IT/circulars-orders/aadhaar_verification.pdf)
- Privacy angle from vendor: Persona publishes dating-privacy guidance (Sept 2026), vendor content. — [Persona blog](https://withpersona.com/blog/privacy-and-identity-in-dating-apps)

### Inferences
- Layered badge model: (1) liveness selfie matched to profile photos (via Persona/Onfido/Didit-style vendor or in-house), (2) optional DigiLocker/OVSE ID check yielding only "ID-verified" plus age band, (3) optional LinkedIn Verified, (4) work-email or .edu/.ac.in domain OTP for employer/college badges ("Works in tech" rather than company name by default).
- Doxxing control: store only the verification result and timestamp, not the document; show badge categories, not names; let users choose granularity (company name vs industry); hide from users who are not mutual/matched; avoid showing college + employer + city together.
- India: a 2026 parliamentary KYC recommendation for dating platforms was reported by a weak source only, unverified.

### Gaps
- Costs for DigiLocker/OVSE onboarding and eligibility of dating apps not found. Apple/Google sign-in not researched (they add no identity signal beyond a verified email; background knowledge, unsourced). Persona/Onfido pricing not found. Aisle/Bumble India verification details not found.

## 4. How existing apps handle it; user likes/dislikes

### Takeaway
Evidence found is thin: LinkedIn is used as an admission/vetting tool (The League, The Inner Circle) and as a backchannel by daters, rather than as an in-profile import in mainstream apps.

### Cited Findings
- See Section 1 for The League/Inner Circle and Zety/Fortune findings (same sources).
- One article cites a 2025 Scientific Reports study that LinkedIn's credibility-focused environment draws users seeking serious relationships (not verified directly). — [Gadget Review](https://www.gadgetreview.com/linkedin-has-quietly-become-everyones-backup-dating-app)
- No evidence found of Bumble or Hinge formally integrating LinkedIn data. — search results above (absence of evidence)

### Inferences
- Users like: credibility, fewer fake profiles, shared-career conversation hooks. Likely dislikes (not evidenced here): professional-status filtering, being looked up, mixing work and romance.

### Gaps
- Not found: Hinge/Bumble Instagram and Spotify link mechanics, Bumble BFF/Bizz history, Raya, Coffee Meets Bagel, Feeld, Lovable, 2025-2026 newcomers, and user-research on LinkedIn-in-dating beyond Zety/Fortune.

## Priority summary (my judgement, based on above)
- MVP: selfie/liveness verification; pasted-link cards/embeds (Instagram, Spotify, TikTok, GitHub, Behance etc.); manual entry + work-email domain badge; PDF/resume upload parsed locally with user review; Sign In with LinkedIn / Verified on LinkedIn Lite (after reading terms).
- Later: DigiLocker/OVSE (India), Bluesky/Mastodon/GitHub OAuth, TikTok profile scope, Spotify if quota obtained.
- Avoid: scraped LinkedIn data vendors, Reddit, X feed reading, Snap Bitmoji Kit, storing third-party content.
