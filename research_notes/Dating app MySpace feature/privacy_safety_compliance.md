# Privacy, safety, moderation and regulatory risks of a customizable, third-party-data-fed dating profile space (status as of 2026-11-25; research notes, not legal advice)

Method note: findings come from web-search result summaries; two primary sources (developer.spotify.com, developer.linkedin.com) were unreachable from the sandbox (host not on allowed network list), so platform-terms findings rely on search snippets and need primary-text verification. Many law-firm/press sources are secondary. Items from my own background knowledge that I could not source are listed under Gaps, not as findings.

## 1. Data protection (India DPDP, GDPR, CCPA/CPRA, app stores)

### Takeaway
India's DPDP Rules were notified in Nov 2025 with a staggered commencement; the bulk of fiduciary duties (notice, security, children, retention) bite around mid-May 2027, so late 2026 is the design window, not yet the enforcement window. In the EU, inferring orientation/religion/politics from music or interests can make the data Article 9 special-category, and the Grindr case shows regulators and courts enforce this hard on dating apps. App stores add their own UGC/deletion gates.

### Cited Findings
- MeitY notified the DPDP Rules, 2025 on 13/14 Nov 2025 (sources differ by a day); Rules 1, 2, 17-21 (definitions, Board) took effect immediately; Rule 4 (consent managers) after 12 months (~13/14 Nov 2026); Rules 3, 5-16, 22, 23 after 18 months (~13/14 May 2027). — [Legal500 / Saga Legal](https://www.legal500.com/firms/237811-saga-legal/c-india/news-and-developments/the-privacy-timer-starts-now-analysing-the-dpdp-rules-and-its-18-month-countdown); [YourStory](https://yourstory.com/2025/11/digital-personal-data-protection-dpdp-rules-2025-rollout-over-18-months); [Mondaq summary](https://webiis10.mondaq.com/india/data-protection/1706878/indias-digital-personal-data-protection-act-phased-rollout-and-key-compliance-milestones)
- Legal500 reports the older SPDI Rules 2011 continue during the 18-month transition. — [Legal500](https://www.legal500.com/firms/237811-saga-legal/c-india/news-and-developments/the-privacy-timer-starts-now-analysing-the-dpdp-rules-and-its-18-month-countdown)
- DPDP s.9(1): verifiable parental consent for children's data; final Rule 10 gives routes to verify the adult (identity details already held, details voluntarily provided, or a virtual token from an authorised entity); s.9(3) bars tracking, behavioural monitoring and targeted advertising directed at children even with parental consent; Rule 12/Fourth Schedule exemptions (e.g. educational institutions, crèches) do not cover dating. — [Chambers](https://chambers.com/articles/child-s-personal-data-and-privacy-analysing-the-draft-dpdp-rules-2025); [DSCI FAQ](https://www.dsci.in/files/content/documents/2025/FAQs-on-Children-and-PwD-personal-data.pdf); [Rule 10 text mirror](https://dpdpa.com/dpdparules/rule10.html). Source note: some commentary describes draft-rule numbering.
- GDPR Art. 9 reaches processing that allows special-category info to be revealed by inference ("intellectual operation involving collation or deduction"); applies whether or not the data subject is the user. — CJEU C-252/21 Meta v Bundeskartellamt (4 Jul 2023) per [Clifford Chance briefing](https://www.cliffordchance.com/content/dam/cliffordchance/briefings/2023/07/european-court-of-justice-in-facebook-ruling-clarifies-interplay-between-eu-competition-law-and-data-protections-enforcement.pdf); [Fieldfisher](https://fieldfisher.com/en/insights/please-do-not-read-its-sensitive); inference principle originates in C-184/20 OT per [Baker McKenzie](https://connectontech.bakermckenzie.com/?p=4552). Paragraph cites not verified.
- C-446/21 Schrems v Meta (4 Oct 2024): a public statement about orientation does not allow processing of other orientation-related data obtained elsewhere; Art. 9(2)(e) "manifestly made public" read narrowly. — [Thomas Helbing summary](https://www.thomashelbing.com/en/wissen/dsgvo-hub/rechtsprechung/1.4.30-eugh-schrems-meta); [EUR-Lex OJ](https://eur-lex.europa.eu/eli/C/2024/7003/oj/eng)
- Grindr: Norwegian DPA fine NOK 65m (Dec 2021) for sharing data with ad partners without valid consent; upheld by Privacy Appeals Board, Oslo District Court (1 Jul 2024) and Borgarting Court of Appeal (21 Oct 2025), which held that app-use info is Art. 9 special-category data. Possible further appeal not verified. — [Forbrukerradet](https://www.forbrukerradet.no/news-in-english/grindr-loses-appeal/); [heise](https://heise.de/en/news/Datenschutz-Norwegisches-Gericht-bestaetigt-Millionenstrafe-gegen-Grindr-9785849.html); [Global Relay](https://www.grip.globalrelay.com/norwegian-court-upholds-record-nkr-65m-fine-on-grindr); [EDPB](https://www.edpb.europa.eu/news/national-news/2021/norwegian-dpa-imposes-fine-against-grindr-llc_el)
- Mozilla *Privacy Not Included* 2024: 22 of 25 dating apps got the warning label; ~80% may share/sell data for ads; half use AI. — [TechCrunch](https://techcrunch.com/2024/04/23/mozilla-finds-that-most-dating-apps-are-not-great-guardians-of-user-data/); [Mozilla](https://www.mozillafoundation.org/ca/privacynotincluded/articles/data-hungry-dating-apps-are-worse-than-ever-for-your-privacy/)
- Apple: apps with account creation must offer in-app account deletion (since 30 Jun 2022), incl. user-generated content shared with others; UGC apps must filter objectionable content, offer reporting and blocking; an Apple developer news item dated 16 Oct 2026 extends 1.2 to nonconsensual intimate imagery incl. AI-generated. — [Apple account deletion](https://developer.apple.com/support/offering-account-deletion-in-your-app); [Apple news](https://developer.apple.com/news?id=vvzx6cul); [Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- Google Play UGC policy: users must accept terms before creating UGC; in-app reporting; in-app blocking for 1:1 interaction apps; "robust, effective, ongoing" moderation. — [Google Play policy](https://support.google.com/googleplay/android-developer/answer/9876937)
- Texas App Store Accountability Act (SB 2420): enjoined Dec 2025, Fifth Circuit stayed injunction 28 May 2026 so it is in effect; Supreme Court declined to block (reported 6 Jul 2026). Utah challenge outcome not found. — [Texas Tribune](https://www.texastribune.org/2026/05/28/texas-apple-google-app-store-age-verification/); [TPR](https://www.tpr.org/text/government-politics/2026-07-06/u-s-supreme-court-declines-request-to-block-texas-app-age-verification-law); [FPF](https://fpf.org/blog/comparing-enacted-app-store-accountability-acts/)

### Inferences
- A "taste profile" built from Spotify/music data that is then used to rank, label or display (e.g. "queer-coded", "devout") is likely to be treated as special-category processing in the EU where it reveals or lets one infer such traits; explicit consent (Art. 9(2)(a)), granular and withdrawable, is the safest basis, and "user made it public on Spotify" is weak ground given C-446/21.
- DPDP has no special-category tier, but the s.9 child rules and mid-May 2027 commencement mean age gating and no-behavioural-monitoring-of-minors need to be in the architecture before launch; an 18+ policy with self-declaration is not enough if minors are demonstrably present.
- Building consent/withdrawal per linked source now aligns with DPDP notice/consent and GDPR and reduces rework.

### Gaps
- Final DPDP Rules text not read directly (only commentary); cross-border transfer rule (Rule 15 in my recollection, negative-list approach) and breach-notification timing not verified here.
- CCPA/CPRA "sensitive personal information" (sexual orientation, precise geolocation), Washington My Health My Data, and state-law specifics not researched in this pass.
- Google Play account-deletion/Data safety requirements not verified; full Apple 1.2 text not read.
- Status of any further Grindr appeal not verified.

## 2. Third-party platform terms (Spotify, LinkedIn, Meta)

### Takeaway
Primary platform terms were not retrievable, but secondary evidence indicates: Spotify bans ML/AI training on its content and requires deletion on user disconnect; LinkedIn's API has historically barred storing member data and showing one member's network data to others and its own policies say it is not a dating site; Meta restricts processing platform data beyond permitted purposes. Direct "matching users via third-party data" is likely outside permitted use cases for all three, so assume a written partnership/commercial agreement is needed or the feature must rely on user-supplied/user-exported data.

### Cited Findings
- Spotify Developer Policy (effective 15 May 2025, per search summary): clause 14 prohibits using Spotify content to train ML/AI models; apps must delete a user's data when they disconnect; metadata/cover art/previews can't be a standalone product; commercial use limited. Staff forum replies indicate no academic exceptions. — [Spotify policy](https://developer.spotify.com/policy/); [Spotify community clarification](https://community.spotify.com/t5/Spotify-for-Developers/Clarification-on-using-Spotify-data-with-AI-ML-models/m-p/6040149/highlight/true); [Hypebot](https://www.hypebot.com/updated-spotify-terms-mean-you-cant-use-their-data-but-they-can-use-yours/)
- Spotify cut developer access to recommendation endpoints (Nov 2024). — [TechCrunch](https://techcrunch.com/2024/11/27/spotify-cuts-developer-access-to-several-of-its-recommendation-features)
- LinkedIn API terms: archived versions bar storing returned data (member ID excepted) and gathering data about a member in one user's network to show to other users; Marketing API data may not be used for advertising, sales or recruiting; LinkedIn user-facing rules state it is a professional network, not for pursuing romantic connections. Current (Dec 2022/Jan 2023) API Terms text not read. — [LinkedIn API terms](https://developer.linkedin.com/legal/api-terms-of-use); [archived guidelines](https://webarchive.library.unt.edu/web/20121018083245mp_/http://developer.linkedin.com/documents/linkedin-platform-guidelines); [MS Learn restricted uses](https://learn.microsoft.com/en-us/linkedin/marketing/restricted-use-cases); [CA AG report on LinkedIn ToS](https://oag.ca.gov/sites/default/files/LinkedIn%20Terms%20of%20Service%20Report%20-%20December%202023.pdf/LinkedIn%20Terms%20of%20Service%20Report%20-%20December%202023.pdf)
- Meta Platform Terms restrict processing platform data for purposes other than permitted ones in Meta docs, with additional terms for "restricted platform data"; terms updated 15 Oct 2024. Contents of the update not retrieved. — [Meta Platform Terms](https://developers.facebook.com/terms); [Meta blog](https://developers.facebook.com/blog/post/2024/10/15/platform-terms-and-developer-policies-updates/)

### Inferences
- Likely violations to design out: training matching/recommendation models on Spotify data; caching beyond what is needed; surfacing a user's LinkedIn data to other users in a way that substitutes for LinkedIn; using any of it for ads.
- Consequences (key revocation, app suspension, possible contract claims) are typical but I did not find documented enforcement cases for dating apps.

### Gaps
- Primary texts unreachable; exact clauses on caching duration, display-to-others, advertising and termination remain unverified for all three platforms; Meta/Instagram API availability (Basic Display deprecation) not confirmed; no examples of enforcement against a dating app found.

## 3. Safety risks and real incidents

### Takeaway
Documented incidents show that public-by-default linked data, location, and centralised ID/selfie stores cause real harm; most relevant: Spotify "Panama Playlists" (2025), Strava heatmap (2018), Tea app breach (Jul 2025).

### Cited Findings
- Panama Playlists (2025) compiled public Spotify listening/playlist data of politicians, CEOs, journalists; creators say they tracked public accounts since summer 2024; whether private data was accessed is disputed, with the more defensible reading that public-by-default settings made data collectable. — [Android Authority](https://www.androidauthority.com/spotify-panama-playlists-3582830/); [heise](https://heise.de/-10505120); [Purism analysis](https://puri.sm/posts/spotify-panama-leak-is-a-wake-up-call-for-digital-privacy/)
- Spotify defaults playlists/profiles to public; the privacy toggle does not change older playlists; a 2023 report alleged private playlists became public; a user-forum post describes a stalker using a collaborative playlist. — [ESET](https://blog.eset.ie/2023/07/17/spotify-reportedly-makes-users-private-playlists-public/); [Spotify community post](https://community.spotify.com/t5/Your-Library/Stalker-using-Spotify-to-intimidate-and-harass-me/td-p/5030326)
- Strava Global Heatmap (Jan 2018) revealed military base layouts and patterns of life from users' public activity; Strava said users had chosen to share. — [NPR](https://www.npr.org/sections/thetwo-way/2018/01/29/581597949/pentagon-reviews-gps-data-after-soldiers-strava-tracks-are-seemingly-exposed); [DFRLab](https://dfrlab.org/2018/02/02/data-and-defense-the-case-of-strava/); [The Register](https://www.theregister.com/2018/01/29/strava_heatmap_military_base_locations/)
- Tea app (Jul 2025): legacy storage exposed ~72,000 images (~13,000 selfies/ID photos) and 1.1m+ private messages in a separate unauthenticated database; spread via 4chan; first class action filed 28 Jul 2025 (N.D. Cal.), reports of ~10 suits; merits unresolved. — [ABC7](https://abc7.com/post/tea-app-was-intended-help-women-date-safely-got-hacked/17332900/); [Bitdefender](https://www.bitdefender.com/en-au/blog/hotforsecurity/major-security-breach-at-tea-app-exposes-sensitive-user-data); [Tribune](https://tribune.com.pk/story/2560315/tea-app-faces-10-class-action-lawsuits-after-data-breach-exposes-user-identities-and-messages)
- Grindr third-party data sharing (see Section 1) as an incident class.
- Ofcom's 2026 age-assurance report found over 1 in 10 15-17-year-olds still visiting three of the most-used dating apps in Dec 2025. — [Ofcom report](https://www.ofcom.org.uk/siteassets/resources/documents/online-safety/information-for-industry/age-assurance-report-2026/report-on-the-use-of-age-assurance.pdf)

### Inferences
- Linked accounts create re-identification paths (handle -> other platforms); never display raw handles/URLs or exact artists/playlists unless the owner chooses, and precompute coarse "taste" artefacts instead.
- Guestbook/comment features create an unsolicited-contact channel to unmatched users; gate to matches or opt-in.
- ID/selfie verification data should be stored separately, minimally and deleted after verification (Tea lesson).

### Gaps
- Tinder/Bumble/Hinge trilateration/location incidents, romance-scam loss statistics (FTC 2025), Bumble/Hinge safety feature specifics, copyright/music-art risk, and catfishing statistics were not found in my searches (the FTC search returned only a 2023 reference).

## 4. Moderation of customizable spaces; India IT Rules

### Takeaway
India's IT Rules were amended (notified 10 Feb 2026, in force 20 Feb 2026) to define and require labelling of synthetically generated information and to shorten takedown windows (3 hours for government/court-notified unlawful content; 2 hours reported for non-consensual intimate content). A user-customisable space with images/video/AI tools is squarely in scope as an intermediary and likely needs pre-publish checks for high-risk content types.

### Cited Findings
- IT (Intermediary Guidelines) Amendment Rules 2026 notified 10 Feb 2026, effective 20 Feb 2026, following Oct 2025 draft; defines "synthetically generated information"; requires prominent labelling; intermediaries offering creation tools must obtain and verify user declarations. — [Nishith Desai](https://www.nishithdesai.com/research-and-articles/hotline/technology-law-analysis/deepfakes-disclosure-and-due-diligence-unpacking-indias-sgi-amendments-15532); [Business Today](https://www.businesstoday.in/technology/story/govt-tightens-rules-on-ai-generated-content-mandates-labels-and-faster-takedowns-515505-2026-02-10); [Chambers](https://chambers.com/articles/government-notifies-information-technology-amendment-rules-2026); [Bar & Bench](https://www.barandbench.com/amp/story/news/law-policy/centre-amends-it-rules-to-regulate-ai-generated-content-takedown-timelines-reduced)
- Takedown deadline after valid order/notice reduced from 36 hours to 3 hours; one report says NCII 24h -> 2h; a Ground News aggregator claim about grievance timelines (72->36h; 24->2h) conflicts with expectations and is unverified. — [Outlook Business](https://www.outlookbusiness.com/news/it-rules-amendment-2026-3-hour-takedown-rule-synthetic-content-defined-new-compliance-norms); [ThePrint](https://theprint.in/india/governance/36-hr-takedown-window-cut-to-3-hrs-centre-notifies-it-rules-amendment-to-tighten-noose-on-deepfakes/2851104); [Outlook India](https://www.outlookindia.com/national/centre-cuts-sensitive-content-takedown-window-to-2-hours-all-you-need-to-know)
- Rule 3(1)(d)/Sahyog: Joint Secretary-rank officials and DIG-level police can issue takedown orders; X Corp challenged this in Karnataka HC; effective dates reported differently (22 Oct vs 15 Nov 2025). — [Mondaq](https://www.mondaq.com/india/telecoms-mobile-cable-communications/1698534/government-sahyog-in-tightening-takedowns); [Nishith Desai](https://www.nishithdesai.com/research-and-articles/hotline/technology-law-analysis/revised-framework-for-takedown-notices-to-online-intermediaries-15464)
- Section 79 safe harbour depends on due diligence; missing the takedown deadline risks losing it. — [Mondaq](https://www.mondaq.com/india/telecoms-mobile-cable-communications/1698534/government-sahyog-in-tightening-takedowns)
- Apple/Google UGC requirements (filter, report, block) as in Section 1.

### Inferences
- A 24x7 on-call process is needed to meet a 2-3 hour takedown window; grievance officer and contact details must be published (2021 Rules; specific timelines not verified here).
- Pre-publish automated screening for images/video/avatars/background media, and post-publish for text and guestbook entries with rate limiting, is the pragmatic split (design judgement, not sourced).

### Gaps
- No sourced information on Roblox/Discord/Snap moderation practices, moderation API vendors or per-unit costs, or human-review ratios; the 2021 grievance-officer timelines (24h acknowledge/15 day resolve) and significant social media intermediary thresholds not verified; whether the amended Rules apply to a dating app depending on size not assessed.

## 5. Dating-specific regulation and age assurance

### Takeaway
UK OSA children's codes (in force 25 Jul 2025) require highly effective age assurance for services allowing pornography and Ofcom says dating apps still have under-18 users; EU DSA Art. 28 guidelines (14 Jul 2025) reject self-declaration and cite adult dating platforms as needing stronger age verification; Australia's dating code is voluntary (from 1 Oct 2024) with a 2026 review that could make it mandatory.

### Cited Findings
- UK Children's Codes in force 25 Jul 2025; children's risk assessments due 24 Jul 2025; sites/apps (incl. dating) allowing porn must use highly effective age checks; Ofcom enforcement programme launched 24 Jul 2025. — [White & Case](https://www.whitecase.com/insight-alert/uk-online-safety-act-protection-children-codes-come-force); [Ofcom](https://www.ofcom.org.uk/online-safety/protecting-children/online-age-checks-must-be-in-force-from-tomorrow); [Lewis Silkin](https://www.lewissilkin.com/insights/2025/07/24/online-age-checks-and-childrens-safety-measures-must-be-in-place-from-25-july-102kv96?page=39)
- Ofcom July 2026 report: many dating services improving age assurance after engagement; minors still on top dating apps (see Section 3). — [Ofcom report](https://www.ofcom.org.uk/siteassets/resources/documents/online-safety/information-for-industry/age-assurance-report-2026/report-on-the-use-of-age-assurance.pdf)
- EU: Commission DSA Art. 28 minors guidelines (non-binding benchmark, 14 Jul 2025); 18+ terms alone do not remove a service from scope; self-declaration deemed insufficient; redress for wrong age assessment expected; EU age-verification app prototype; EU Digital Identity Wallet expected by end 2026. — [Commission](https://digital-strategy.ec.europa.eu/en/library/commission-publishes-guidelines-protection-minors); [Taylor Wessing](https://www.taylorwessing.com/en/insights-and-events/insights/2025/07/rd-european-commission-guidelines-on-protection-of-minors-under-the-digital-services-act); [Freshfields](https://www.freshfields.com/en/our-thinking/blogs/technology-quotient/dsa-decoded-6-the-european-commission-finalises-guidelines-on-the-protection-of-102kv4s)
- Australia Online Dating Industry Code: voluntary, commenced 1 Oct 2024 (Tinder, Hinge, Bumble, Grindr and others), reporting and detection obligations, Code Compliance Committee; eSafety to review in 2026 for possible mandation; outcome not found. — [Dept of Infrastructure](https://infrastructure.gov.au/department/media/news/new-online-dating-industry-code-improve-safety); [RNZ](https://www.rnz.co.nz/news/world/529502/australia-s-online-dating-code-will-require-tinder-hinge-to-act-on-dangerous-users)
- US: Texas app-store age law in effect (Section 1).

### Inferences
- A customizable space that can host NSFW content raises the chance of falling into Ofcom's "highly effective age assurance" requirement; blocking sexual content entirely (and enforcing it) is a cheaper compliance path.
- Plan for app-store-supplied age signals (Texas, Utah) plus own age assurance.

### Gaps
- India dating-specific regulatory proposals: nothing found. US state dating-safety laws (e.g. background-check/safety disclosure statutes), DSA Art. 16/notice-and-action specifics, FTC actions (e.g. Match Group) not researched. Australian review outcome unknown.

## 6. Product mitigations

### Takeaway
No source in this pass evaluates mitigations directly; these are design recommendations derived from the incidents and rules above and should be labelled as such.

### Cited Findings
- Strava's own privacy settings would have excluded sensitive data had users used them, showing defaults matter. — [Betanews](https://betanews.com/2018/01/29/strava-heatmap-reveals-secret-military-bases)
- Spotify's public-by-default and non-retroactive privacy toggle is a documented failure mode. — [ESET](https://blog.eset.ie/2023/07/17/spotify-reportedly-makes-users-private-playlists-public/)
- Spotify requires deletion on disconnect; EU guidelines expect redress for age assessments (see above).

### Inferences
- Private-by-default blocks; per-block and per-audience visibility (public / matches / chosen); "reveal after match" layer; abstract artefacts (genres, moods, anonymised highlights) instead of raw handles, playlists, URLs, or timestamps/real-time "now playing"; no exact location; separate consent per source and per inferred trait; no inferred sensitive traits (religion, politics, orientation) shown or used for ranking by default; delete-on-disconnect; ID verification gating for guestbook/media upload and for linking professional data; rate limits and match-only guestbooks; AI-content labelling; hash-matching for NCII.

### Gaps
- No evidence on effectiveness of reveal-after-match or verification gating; Bumble/Hinge safety features not retrieved.

## Risk register (summary for the report writer; severity/likelihood are my judgement)

| # | Risk | Evidence | Severity | Mitigation |
|---|------|----------|----------|------------|
| 1 | Inferred special-category data (orientation, religion, politics) from music/interests | CJEU C-252/21, C-446/21; Grindr NOK 65m | High | Explicit per-trait consent; don't infer/display by default; DPIA |
| 2 | Violating Spotify/LinkedIn/Meta terms (ML training, display, caching) | Spotify clause 14; LinkedIn archived terms | High (feature-ending) | Legal review of primary terms; partnership; user-exported data; no ML on platform content |
| 3 | Doxxing/stalking via linked accounts and location | Panama Playlists; Strava | High | No raw handles; coarse data; match-gated reveal |
| 4 | Breach of ID/selfie data | Tea Jul 2025 | High | Minimise, segregate, delete post-verification |
| 5 | Minors on platform | Ofcom 2026 report; DSA Art. 28 guidelines; DPDP s.9; Texas law | High | Robust age assurance, not self-declaration |
| 6 | UGC abuse (NSFW, hate, NCII, deepfakes) and short takedown clocks | IT Rules 2026; Apple/Google UGC rules | High | Pre-publish checks, reporting/blocking, 24x7 takedown, AI labels |
| 7 | DPDP non-compliance after ~mid-May 2027 | DPDP Rules commencement | Medium (time-phased) | Build notice/consent/children controls now |
| 8 | Copyright in music/album art/fan content | not researched | Unknown | Use licensed APIs/embeds only (unverified) |
| 9 | Romance scams / catfishing | not sourced | Unknown | Verification, link-sharing limits |
