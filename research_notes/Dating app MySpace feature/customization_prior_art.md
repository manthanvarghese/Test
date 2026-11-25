# Prior art and design principles for customizable personal spaces (for a dating-app "MySpace" feature)

Research caveats: about 14 searches, no successful page fetches (figma.com and every.to were blocked by the sandbox network). Most claims rest on search-result summaries, not the primary documents. Items marked "Inference" are my interpretation. Many claims are thinly sourced; see the Gaps sections.

## 1. Why people love building and decorating their own spaces: MySpace 2003-2008, its downsides, and why it lost

### Takeaway
MySpace customization was central to how users spent their time and performed identity (Top 8, music, HTML/CSS). The same open HTML freedom caused security holes (the Samy worm), phishing, slow and cluttered pages, and drama. Secondary sources attribute the loss to Facebook to several factors, not customization alone.

### Cited Findings
- In a 2006 talk, danah boyd said most time on MySpace went to modifying one's own profile, uploading photos, messaging, and viewing friends' profiles. She said music, photos and video help make a profile appealing. — [Honolulu Advertiser 2006 (search summary)](https://archives-new.honoluluadvertiser.com/article/2006/Jun/11/il/FP606110324.html)
- MySpace let users insert HTML into their profiles. — [UCSB Transliteracies](https://transliteracies.english.ucsb.edu/index.html%3Fp=480.html)
- A JCMC article on social network profiles says choosing the Top 8 friends constitutes "identity performances" because they are willful acts of context creation (citing boyd 2006). — [JCMC / OUP](https://academic.oup.com/jcmc/article/13/1/252/4583067)
- The Top 8 generated social drama; a 2006 LA Times piece quoted boyd saying relationship status caused drama and "it gets highly dramatic." — [LJWorld reprint](https://www2.ljworld.com/news/2006/may/21/myspace_revives_juniorhigh_style_drama/)
- boyd's 2007 article "Why Youth (Heart) Social Network Sites" / "Identity Production in a Networked Culture" is the key academic source on teens using MySpace to create an image for themselves. I did not read the full text. — [Downes summary](https://www.downes.ca/post/33624/rd)
- Security: the Samy worm (October 2005) was the first self-propagating cross-site scripting worm. Customization HTML could also be crafted into phishing profiles that stayed on the myspace.com domain. — [Wikipedia: Criticism of Myspace](https://en.wikipedia.org/wiki/Criticism_of_Myspace)
- Performance and usability: low-authority blogs say unlimited customization led to heavy images, auto-playing music and third-party widgets that degraded load times. They contrast this with Facebook's uniform, cohesive UI and real-identity policy. These are analysis pieces, not settled history. — [Startupik](https://startupik.com/why-myspace-lost-the-social-media-war/), [Malwarebytes](https://www.malwarebytes.com/blog/news/2018/04/myspace-vs-facebook-good-old-days)
- Business context: News Corp bought MySpace's parent for about $580M in 2005; it was sold for about $35M in 2011. Other loss factors cited include platform strategy and the real-identity policy. — [Startupik](https://startupik.com/why-myspace-lost-to-facebook-the-social-network-that-lost-its-crown/) (low authority)
- A Substack essay on profile customization history says platforms stopped prioritizing customization because it didn't generate revenue, and quotes a former MySpace-era coder calling customization "an expression and extension of an existing identity." — [Adryan Corcione, Substack](https://adryancorcione.substack.com/p/personal-homepages-profile-customization-history-identity)

### Inferences
- The lesson is probably not "customization lost to uniformity." The evidence points to uncontrolled customization (raw HTML, third-party embeds, autoplay) causing safety and quality problems while the identity-expressive value stayed real. A design that keeps expression but constrains the mechanism is the obvious response.
- The Top 8 shows that ranking or visible-hierarchy features create drama. For dating, any ranked or exclusion-signalling element should be treated cautiously.

### Gaps
- No primary Tom Anderson / Chris DeWolfe statements on customization were found. No hard data on how many MySpace users customized, or on whether customization pages were slower than average.
- The boyd, Livingstone, and Lampe papers were not read directly.

## 2. Revival of the spirit: Neocities, SpaceHey, web 1.0 aesthetics, Bento, Cosmos, Are.na, Discord, Snap, Roblox and others

### Takeaway
There is demonstrated demand for self-built, nostalgic personal pages, but it is small and fragile (SpaceHey is volunteer-moderated; Noplace faded; Bento was shut down). Block-based "link hub" products have been consolidated or shut by their acquirer. Monetized cosmetic customization (Discord, Snapchat+) is proven in chat and social apps.

### Cited Findings
- Bento.me: Linktree acquired it in June 2023 and announced it would shut down on February 13, 2026. Before the shutdown it was in maintenance mode. Users were pointed to Linktree with a migration path and a Linktree Pro offer; sources disagree on whether the offer was a discount or a trial. Linktree also shut down Koji (January 31, 2024) after acquiring it. Sources are secondary and a competitor's promotional blog, not a Linktree statement. — [AlternativeTo](https://alternativeto.net/news/2025/12/bento-to-shut-down-in-2026-as-linktree-takes-over-and-offers-migration-path), [Tech.eu](https://tech.eu/2023/06/06/sequoia-backed-bento-boxed-up-by-linktree), [AlternativeTo on Koji](https://alternativeto.net/news/2024/1/linktree-acquires-competitor-koji-which-will-shut-down-its-platform-on-january-31), [Taplink (competitor, promotional)](https://taplink.at/en/blog/bento-me-over.html)
- Neocities hosts more than 600,000 hand-built sites (per a Japanese Lifehacker piece; no growth trend found). — [Lifehacker Japan](https://www.lifehacker.jp/article/2306relive-the-internet-of-the-90s-with-neocities/)
- "Internetcore"/"Webcore" was its own digital aesthetic category by 2025, per an academic-leaning essay arguing the appeal goes beyond nostalgia. — [Institute of Network Cultures, Dec 2025](https://networkcultures.org/longform/2025/12/22/longing-for-locality-nostalgia-and-resistance-in-the-age-of-platforms/)
- SpaceHey (a MySpace clone with HTML/CSS profiles, no algorithm, no likes, no feed) passed 200,000 signups in November 2021 and was later reported at about 1 million users (the milestone date was not confirmed). Moderation is by the founder plus about five volunteers with a report feature; the founder says the main problem is spam rather than hate speech. — [Bloomberg 2021](https://www.bloomberg.com/news/articles/2021-11-12/retro-myspace-clone-spacehey-blows-up-with-200-000-signups), [Fast Company](https://www.fastcompany.com/91184623/spacehey-myspace-clone), [Entrepreneur](https://entrepreneur.com/business-news/is-myspace-back-1-million-people-now-using-clone-version/479515)
- Noplace ("MySpace for Gen Z") soared in popularity in 2024; skeptics cite it as an example of adoption that falls off after the initial surge. — [PetaPixel](https://petapixel.com/2024/07/05/noplace-the-myspace-for-gen-z-is-soaring-in-popularity/), [Fast Company](https://www.fastcompany.com/91184623/spacehey-myspace-clone)
- A Digital Native newsletter argues Gen Z is pushing against sterile, constrained online identities (opinion, not survey data). — [Digital Native](https://digitalnative.substack.com/i/40328190/final-thoughts)
- Every.to published "DIY apps are the new MySpace" (page not fetched; title only), suggesting an AI-assisted-software-as-personal-expression framing. — [Every](https://every.to/p/diy-apps-are-the-new-myspace)
- Cosmos (Pinterest alternative for creatives): self-reported over 10 million images saved per month, featured in Apple's 25 Apps for 2025, #1 in App Store Design in 28 countries, Premium at $8/month, imports from Pinterest, Are.na and Tumblr. Are.na is positioned as the "anti-Pinterest" with no algorithmic feed or engagement metrics; its iOS app arrived October 2025. No independent user counts. — [Cosmos blog](https://www.cosmos.so/blog/the-future-of-cosmos), [Creative Bloq](https://www.creativebloq.com/design/social-media/what-is-cosmos-the-pinterest-alternative-for-creatives), [Are.na newsletter](https://buttondown.com/aredotna/archive/ios-app-available-to-premium-personal-business)
- Pinterest: 661M MAU after Q3 2026 results; Gen Z is 57% of its audience (as reported in the Creative Bloq-linked search results; I did not verify against Pinterest's filing). — [Social Media Today](https://socialmediatoday.com/news/pinterest-reports-solid-user-growth-in-q3/873274)
- Discord: the Shop (avatar decorations, profile effects) is open to all users, with Nitro discounts. Orbs, a Quest reward, launched globally July 14, 2025 and can be redeemed for decorations and effects. Third-party estimates: about $561M revenue in 2025, Nitro about $280M. The Shop's share is unquantified. — [Discord press release](https://discord.com/press-releases/discord-launches-orbs-globally), [Revenue Memo (estimate)](https://www.revenuememo.com/p/how-does-discord-make-money)
- Snap: 1.7 billion Snapchatters show up as their Bitmoji (Snap 2023). Friends get notified when someone updates their Bitmoji outfit. Snap Map passed 400M MAU in May 2025. Snapchat+ subscribers can design a Snap Map house and Bitmoji Pets visible to friends; Snapchat+ reached 9M subscribers by 2024. — [Snap newsroom 2023](https://newsroom.snap.com/sps-2023-new-snapchat-features-to-fuel-your-friendships?lang=en-US), [TechCrunch 2025](https://techcrunch.com/2025/05/07/snap-map-reaches-new-milestone-of-400m-monthly-active-users), [TechCrunch 2024](https://techcrunch.com/2024/07/02/snapchats-latest-features-help-users-personalize-their-accounts)
- Dating-app context: Hinge introduced prompts in 2016 (its claim), and its 2025 work includes AI Prompt Feedback. Hinge cites 63% of daters having difficulty knowing what to include on a profile. Tinder added prompts, quizzes and info tags. A Bloomberg survey found Gen Z largely unimpressed by AI-powered profile features and uneasy about AI-drafted prompts. — [Hinge newsroom](https://hinge.co/newsroom/hinge-2025-product-evolution), [Hinge profile guide](https://hinge.co/press/profile-refresh-guide), [Engadget on Tinder](https://www.engadget.com/tinder-profiles-just-got-a-rizz-first-redesign-131015062.html), [Fortune on Bloomberg survey](https://fortune.com/2025/07/17/dating-apps-ai-gen-z-bloomberg-study/)

### Inferences
- Dating profiles today are template-only (photos plus prompts), and the stated pain point is "what do I put," which a richer space could address if starter content is provided.
- Bento's fate suggests block-based profile products struggle to stand alone commercially. Embedding the feature inside an app with an existing graph and revenue model avoids that failure mode.
- Gen Z AI skepticism suggests AI should assist layout and visual styling more than write a person's words.

### Gaps
- Not covered by successful searches/fetches: Tumblr's customization history, Carrd, Notion/Cargo pages, Lemon8, Telegram, Poparazzi/Locket/BeReal, Spotify Wrapped/Receiptify, Animal Crossing, Sims, Habbo (no Habbo results returned), and the Figma "handmade web" post (blocked). The Dazed "web 1 nostalgia" piece and the New Public "handmade internet" piece appeared in results but were not read.
- No verified Gen Z "digital scrapbooking" survey data.

## 3. Customization models compared

### Takeaway
No source in this research compares the models directly; the comparison below is my synthesis, partly grounded in the cases above (Canva for templates, SpaceHey/MySpace for code, Bento/Notion for blocks, Snap/Discord for cosmetics).

### Cited Findings
- Code-level freedom (MySpace, SpaceHey): high expressiveness; MySpace's experience shows XSS, phishing and performance risks. SpaceHey needs volunteer and founder moderation. — [Wikipedia](https://en.wikipedia.org/wiki/Criticism_of_Myspace), [Fast Company](https://www.fastcompany.com/91184623/spacehey-myspace-clone)
- Template-first (Canva): "no blank canvas" is described as its most important onboarding decision; a vendor teardown estimates 3-5 minutes to first export (third-party estimate). — [Supademo teardown](https://supademo.com/content/plg-onboarding-gallery/canva)
- Cosmetic/theme packs (Discord decorations/effects, Snapchat+ extras) are monetized as paid or reward-earned items. — see section 2 sources.
- AI "describe your vibe": evidence only that Gen Z daters are uneasy with AI-written profile text. — [Fortune](https://fortune.com/2025/07/17/dating-apps-ai-gen-z-bloomberg-study/)

### Inferences (my own ratings, not sourced)
| Model | User effort | Expressiveness | Output quality control | Moderation difficulty | Mobile fit |
|---|---|---|---|---|---|
| Fixed template | Low | Low | High | Low | High |
| Theme packs | Low | Low-Med | High | Low | High |
| Block/widget grid | Med | Med | Med-High (grid enforces alignment) | Med (content per block is checkable) | High |
| Freeform canvas, stickers, layers | Med-High | High | Low-Med | High (image-level review, overlays can hide or obscure) | Med (precise touch editing is hard) |
| Scene/room editor | Med-High | High | Med (asset library is curated) | Med (assets curated, text and uploads are the risk) | Med |
| Code/CSS | High | Very high | Very low | Very high (XSS, tracking, hidden content) | Low |
| AI vibe generation | Very low | Med (can feel generic) | Med-High with guardrails | Med (generated output can be checked) | High |
- Likely best fit for a dating app: block layout with themed skins and curated stickers (a "constrained freeform" middle), plus AI as a starter-generator that the user then edits.

### Gaps
- No empirical comparison studies or conversion data between models were found.

## 4. Design principles: blank-canvas paralysis, play vs publish, self-expression research

### Takeaway
Templates and "something to react to" are the consistent practitioner answer to blank-canvas paralysis. Customization also builds ownership and identification (IKEA effect, avatar research). The research cited is mostly practitioner writing and gaming/VR studies, not dating-profile studies.

### Cited Findings
- Blank-canvas paralysis: users sign up, see an empty slate, get overwhelmed, and don't return (practitioner claim). The fix is giving users something to react to rather than a tutorial. — [The Next Web](https://thenextweb.com/news/how-to-use-the-ikea-effect-in-your-business), [Supademo](https://supademo.com/content/plg-onboarding-gallery/canva)
- IKEA effect: people place disproportionately high value on things they help create; onboarding that asks for early effort, such as customizing a dashboard, can raise commitment. Amplitude argues early effort can show value upfront. These are vendor and practitioner blogs; the original IKEA-effect research was not retrieved. — [Amplitude](https://amplitude.com/blog/onboarding-ikea-effect-retention/), [Customer.io](https://customer.io/blog/ikea-effect-onboarding/)
- Avatar customization increases body ownership and identification (cited in a 2025 Regensburg VR paper); Turkay and Kinzer (2014) found players who customized avatars in Lord of the Rings Online reported higher identification with them. Yee and Bailenson (2007) Proteus effect: behavior shifts to match avatar appearance. — [Kocur et al. 2025](https://epub.uni-regensburg.de/78549/1/3706598.3713203.pdf), [DiGRA paper](https://dl.digra.org/index.php/dl/article/download/2809/2793/2852)
- A 2025 multi-user VR study (Bujić et al.) found avatar design choices map to actual-self, ideal-self, ought-self, or playful/symbolic motivations. — [Tampere Gamification Lab](https://webpages.tuni.fi/gamification/2025/04/24/avatar-customisation-and-empowerment-in-vr-collaboration-a-new-study-on-self-representation-and-self-perception/)
- Hinge reports that 63% of daters struggle to know what to include in their profile (a stated starter-content need). — [Hinge](https://hinge.co/press/profile-refresh-guide)

### Inferences
- Principles that follow: (1) open on a pre-filled starter space seeded from the user's existing profile and photos; (2) offer "remix a vibe" and prompt-driven steps rather than empty blocks; (3) progressive disclosure, with a few big choices first (vibe, palette, layout) and fine control behind an "edit more" step; (4) a private "play" draft with preview and undo before "publish"; (5) a visible ownership signal such as an "edited N times" or "your space" framing.
- Self-presentation research suggests identity play may also include ideal-self expression; a dating context raises authenticity concerns (e.g. misleading photo overlays), so the space should add context to, not replace, verified photos.
- Play/publish is my recommendation; I found no source studying it specifically.

### Gaps
- No peer-reviewed study on customization and dating-profile outcomes (matches, reply rates, trust). Not found: boyd/Livingstone/Lampe primary text, Figma/Notion/Bento/Cosmos founder interviews, Csikszentmihalyi-style creativity engagement research.

## 5. Social loops around creation

### Takeaway
Evidence of retention effects is thin; the best-supported loops are friend-visible changes (Snap's Bitmoji outfit notifications), earned or purchased cosmetics (Discord Orbs), and "no feed, no likes" visiting models (SpaceHey, Are.na). No A/B retention data was found.

### Cited Findings
- Snap notifies friends when someone updates their Bitmoji outfit; Snapchat+ extras like Map houses and Bitmoji Pets are visible to friends, positioned as a retention lever. — [Snap newsroom](https://newsroom.snap.com/sps-2023-new-snapchat-features-to-fuel-your-friendships?lang=en-US), [AOL/TechCrunch on Snapchat+ retention](https://www.aol.com/articles/snap-aims-boost-retention-features-130111102.html)
- Discord Orbs reward completed Quests with redeemable decorations and effects, linking an ad product to cosmetics. — [Discord](https://discord.com/press-releases/discord-launches-orbs-globally)
- SpaceHey and Are.na intentionally avoid likes and algorithmic feeds. — [Fast Company](https://www.fastcompany.com/91184623/spacehey-myspace-clone), [Are.na newsletter](https://buttondown.com/aredotna/archive/ios-app-available-to-premium-personal-business)
- Cosmos supports importing from Pinterest, Are.na and Tumblr, lowering switching costs and seeding spaces. — [Creative Bloq](https://www.creativebloq.com/design/social-media/what-is-cosmos-the-pinterest-alternative-for-creatives)

### Inferences
- Candidate loops for a dating app: "X updated their space" signals to matches; a guestbook limited to matches (not public) to avoid harassment; remix of starter vibes, not of other people's personal content; seasonal drops of themes and stickers; creator spotlight of tasteful spaces. All are untested in this research.
- Top 8-style ranking is a known drama source and should be avoided.

### Gaps
- No quantitative retention evidence for guestbooks, remix, seasonal drops, or collaborative spaces was found. Spotify Wrapped/Receiptify sharing evidence was not retrieved.

## 6. Cautionary tales and safety

### Takeaway
The clearest documented failures are: MySpace's open-code security and clutter; Bento/Koji shut down by their acquirer; Roblox's child-safety litigation over user-created avatars and content; Noplace's short-lived surge. Evidence on Facebook/Google+ customization specifically was not found.

### Cited Findings
- Roblox: nearly 80 lawsuits were consolidated into an MDL in San Francisco in December 2025; Louisiana (August 2025) and Los Angeles County (early 2026) filed suits. Plaintiffs allege chat filters and moderation tools are easily bypassed and cite internal documents about sexualized avatar settings. Roblox denies the allegations, says it added over 145 safety features since January 2025 including facial age estimation, and turned off chat for ages 9 and under. Cases pending. — [Yahoo News](https://www.yahoo.com/news/articles/roblox-facing-mounting-lawsuits-parents-090000161.html), [Massively OP on LA County](https://massivelyop.com/2026/02/24/los-angeles-county-is-the-latest-to-file-a-lawsuit-against-roblox-over-alleged-child-endangerment/), [GameDev.net](https://gamedev.net/news/4893-amid-child-safety-lawsuits-roblox-says-it-continues-to-push-toward-a-standard/)
- Samy worm and profile-phishing (MySpace) as above. — [Wikipedia](https://en.wikipedia.org/wiki/Criticism_of_Myspace)
- Google+ shut down for consumers April 2, 2019; a 2015 redesign removed features (Hangouts integration, Events, Custom URLs), with Events and Custom URLs later restored. This is general product failure, not customization-specific. — [Google support](https://support.google.com/chat/answer/14087009)
- Bento and Koji shutdowns as above.

### Inferences
- Safety design for a dating context: no raw HTML/CSS or third-party scripts; render from a structured JSON spec (blocks, theme tokens, curated stickers) so every element can be validated; scan uploaded images and text on save and before publish; cap media, autoplay (off by default, tap-to-play), and animation for performance; block overlays that hide verified photos or contact info and off-platform link redirection before match; report and block tools that apply to space elements; age-gate. These are my recommendations, not sourced.
- Visual quality control: layout grid, token-based palettes with contrast checks, and curated asset libraries keep "ugly MySpace" outcomes down.

### Gaps
- No sources found on dating-specific customization failures, Tumblr's theme history, Facebook/Instagram removal of customization, Habbo moderation history, or Noplace's actual decline (only the skeptic comment). Not verified: any 2026 SpaceHey or Neocities numbers.
