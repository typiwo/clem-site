# clemapp.com refresh — brief

**Context:** `index.html` was written when Clem was a private TestFlight beta. Clem is now **live on the App Store** (1.4.1, 5.0★). The page's facts, its calls to action, and its visual language are all out of date. `DESIGN.md` in this repo is the app's real design system, transcribed from shipped app code on 2026-08-13 — it is the spec for this work.

**Scope:** `index.html` (the landing page) and `_layouts/default.html` (styling only). Nothing else.

---

## Do not touch

- **`privacy.md` and `terms.md`.** These are auto-synced from the Clem app repo by a post-merge job. Hand-editing them here gets overwritten and breaks the legal sync. Style them via `_layouts/default.html`; never edit their content.
- **`CNAME`** — the custom domain.
- `_config.yml` beyond the `description` field if you update it.

---

## A. Facts that are wrong today (fix all of these)

| Where | Says now | Should say |
|---|---|---|
| Nav, hero eyebrow, `.final-note` | "Private beta — 100 spots" | Nothing about a beta. It shipped. |
| Every CTA (`btn-primary`, hero, final) | TestFlight link `testflight.apple.com/join/JSux95cu` | `https://apps.apple.com/us/app/clem-food-health-scanner/id6760143309` |
| Final section | "Get updates before we launch. Free. No credit card." | It has launched. Rewrite around downloading it. |
| Nowhere | — | Pricing is entirely absent. Add it (§B). |
| `<title>` | "Clem — Eat well. Feel good." | Fine to keep, but the App Store subtitle is "Scan food, eat smarter" — align or deliberately differentiate. |

**Email capture is broken.** `handlePopupSubmit` and `handleBottomSubmit` both show a success state and throw the address away — there is a `/* TODO: POST to your email service */` where the request should be. It silently tells people they're subscribed when they aren't. Either wire it to a real endpoint or remove both forms. **Recommended: remove them.** The App Store listing is the conversion now; a dead email form on a shipped product is friction plus a broken promise. Removing the popup also removes the 1.6s-delayed modal that currently interrupts every first visit.

**The 4-step onboarding simulator (`#ob-shell`, `#screen-1`…`#screen-plan`) should go.** It was a beta lead-capture funnel. On a shipped product it routes an interested visitor into a fake onboarding instead of to the App Store. Deleting it removes roughly half the file. If you'd rather keep an interactive taste of the product, replace it with a static, honest preview of a real scan result — not a form that collects answers and does nothing with them.

---

## B. Content to add

1. **Pricing section.** Free: 10 scans a week, 5 searches a day, every analysis feature. Pro: $4.99/mo or $29.99/yr with a **7-day free trial on annual**. Use the three locked Pro bullets in `DESIGN.md` §1 verbatim. Make it explicit that personalized scoring is free — that is the differentiator, and it is not behind the paywall.

2. **The trust claim, stated plainly:** *the score is computed by a deterministic formula, not by AI.* AI reads the label and writes the editorial take. Every competitor is a black box; this is Clem's strongest and most defensible line, and the site never makes it.

3. **What a scan actually returns** — 0–100 score and letter-grade report card, personal green/yellow/red verdict from your profile, ingredient breakdown in plain language, additives by safety tier, seed-oil and ultra-processing detection, nutrition facts, real healthier alternatives, and Clem's Take. See `DESIGN.md` §1.

4. **The 0–100 score bands** (75/50/25) rendered as an actual visual using the score-sticker recipe in `DESIGN.md` §5. This teaches the core mechanic in one glance and shows off the best-looking object in the product.

5. **Real social proof:** 5.0★ from 17 ratings on the App Store. Small and true beats big and invented.

6. **Required disclaimer in the footer, verbatim:** "Scores are computed by code, not AI. Clem's Take is AI-generated and may be inaccurate. Not medical or nutrition advice."

7. **Meta and SEO.** The page currently has **zero** Open Graph or Twitter tags, no favicon, no structured data. Add OG + Twitter card tags, a favicon, and `SoftwareApplication` JSON-LD (name, operatingSystem iOS, category, offers, aggregateRating 5.0/17).

8. **Official Apple "Download on the App Store" badge** in the hero and footer, per Apple's marketing guidelines.

---

## C. Claims to fix before publishing

Two things on the page assert facts with no source behind them, and both should be resolved rather than restyled:

- **The stat strip** — "73% feel more anxious after scanning", "12 min lost second-guessing one product", "0 apps that score for your body". If these come from real research, cite the source inline. If they don't, cut them or reframe them as Clem's point of view rather than as data.
- **The four `.review-card` quotes labeled "App Store review".** They carry no app name, author, or date. Presenting unattributed or invented quotes as App Store reviews is a credibility risk and, if they're reviews of a named competitor, a legal one. Either attribute each quote properly (app, reviewer, date) or relabel the section as the problem Clem is describing, in Clem's own voice.

Flag anything here you can't verify rather than guessing.

---

## D. Design alignment (see `DESIGN.md` for every value)

The current page is a different brand from the app. Specifically:

| Current | Correct |
|---|---|
| `--bone:#FAF8EC`, `--ink:#0F1410`, `--grass:#2E5C36`, `--orange:#E8612A` | `#F4F3EA`, `#212220`, `#2E8B4F`, `#F26A21` — exact tokens in `DESIGN.md` §2 |
| **Inter** for all sans | **DM Sans**. Inter is not the brand font. |
| No Caveat | Caveat 700 for greetings and single accent words |
| Hard offset shadows (`4px 5px 0 var(--ink)`) on every button and card | Soft shadows: `0 6px 18px rgba(30,40,30,.06)`. The hard offset belongs to the score sticker **only**. |
| 2px ink borders everywhere | 1px hair rules `rgba(30,40,30,0.12)`; cards have no border |
| `border-radius: 4px` | 20px cards, 9999px pills |
| Near-black `#0F1410` dark sections | Deep green `#1E4D3A` |
| Headlines plain, occasional orange italic | **Every** h1/h2 puts its last word in Fraunces italic orange — the app's signature move |
| Eyebrows with a `::before` bar | Em-dash prefix: `— TODAY'S MOVE` |

Also: add visible focus rings, honor `prefers-reduced-motion`, and drop the inline `onmouseover`/`onclick` handlers in favor of CSS and event listeners.

---

## E. Screenshots — read this before adding any

The App Store screenshots in the app repo (`screenshots/final-6.9/`) are dated **June 3, 2026**. The v2 UI redesign landed **July 1** and the Fruit Stand design pass **July 3–4**. They show a retired look: a graph-paper texture that no longer exists, 2px ink borders, hard offsets everywhere.

**Do not put them on the site.** They would advertise a version of the app that no longer exists. Either leave clearly-marked placeholder slots for fresh captures, or build the product visuals from the `DESIGN.md` recipes in HTML/CSS — which will actually match what a user opens.

(Separately worth raising with Tyler: the live App Store listing is showing these same stale screenshots.)

---

## F. Definition of done

- No mention of beta, TestFlight, waitlists, or launching.
- Every CTA points at the App Store listing.
- No form that accepts input and discards it.
- Every color, font, radius, and shadow traces to `DESIGN.md`.
- `privacy.md` and `terms.md` are byte-identical to before.
- Renders correctly at 375px, 768px, and 1440px.
- Legal pages still render correctly through `_layouts/default.html`.
- Lighthouse accessibility ≥ 95.
