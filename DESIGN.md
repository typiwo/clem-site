# Clem — Website Design System

**Source of truth:** the Clem iOS app repo, `src/constants/theme.ts` + `src/utils/colors.ts` + `src/components/d9/`.
Every value below was transcribed from shipped app code on **2026-08-13** (app version **1.4.1**).

This file exists so the website looks like the product. When the app and this file disagree, the app wins — re-transcribe.

---

## 0. What the site has to do

Clem is a **live iOS app** (App Store, 1.4.1, Food & Drink). The site's one job is to send the right person to the App Store listing, and to make the product legible before they get there.

The design system it should express: **editorial print, not SaaS landing page.** Warm bone paper, ink text, a serif that has opinions (Fraunces), one orange used sparingly for accent and CTA, greens that mean *health* and never decoration. The app reads like a well-set magazine spread about your groceries. The site should read the same way.

---

## 1. Product facts (verified — do not paraphrase into something else)

| Fact | Value | Verified from |
|---|---|---|
| App name | **Clem: Food Health Scanner** | App Store listing |
| Subtitle | "Scan food, eat smarter" | App Store listing |
| Version | 1.4.1 | `app.config.js` + App Store |
| Platform | iOS only (iPhone; no iPad) | `app.config.js` `supportsTablet: false` |
| App Store URL | `https://apps.apple.com/us/app/clem-food-health-scanner/id6760143309` | live listing |
| Rating | 5.0 ★ · 17 ratings | live listing |
| Category | Food & Drink | live listing |
| Developer | Clemapp, Inc. | live listing |

### Scoring

- Scale is **0–100**, bands at **75 / 50 / 25**.
- The score is **computed by a deterministic formula, not by AI** — this is the single most important trust claim on the site and it must be stated plainly.
- AI (Google Gemini) reads the label and writes the editorial verdict ("Clem's Take"). It does not produce the number.
- The score is universal and objective. The **verdict** (green / yellow / red) is what's personalized to your diet, allergens, and avoidances.

| Range | Label | Message |
|---|---|---|
| ≥ 75 | Excellent | "Excellent choice!" |
| 50–74 | Good | "Good pick!" |
| 25–49 | Fair | "Room to improve" |
| < 25 | Poor | "Worth reconsidering" |

### What a scan returns

0–100 score with letter-grade report card · personal green/yellow/red verdict from your profile · ingredient breakdown with concerns highlighted in plain language · additives flagged by safety tier · seed-oil and ultra-processing detection · full nutrition facts per serving · healthier alternatives that are real products from the database · **Clem's Take**, an editorial paragraph written for your profile.

### App structure — 5 tabs

Home · Feed · **Scan** (elevated center button) · Search · Shelf

### Pricing (verified against RevenueCat offering `default`, 2026-08-13)

| Tier | Price | What you get |
|---|---|---|
| **Free** | $0 | **10 scans per week**, 5 searches per day, every analysis feature — full score, report card, personalized verdict, ingredients, additives, alerts |
| **Clem Pro — Monthly** | **$4.99 / mo** | Unlimited scans, every alternative + browse, unlimited search |
| **Clem Pro — Annual** | **$29.99 / yr** | Same, **with a 7-day free trial** (annual only) |

The three Pro bullets are locked and must be quoted as-is:
1. Unlimited scans, every week
2. Every better pick — all swaps + browse
3. Unlimited search, any product

Personalized scoring is **free** and never listed as a Pro feature.

### Required disclaimer

Reproduce this verbatim in the footer:

> Scores are computed by code, not AI. Clem's Take is AI-generated and may be inaccurate. Not medical or nutrition advice.

### Privacy claims (true, safe to state)

No ads. No third-party advertising trackers. Data is not sold. Location, when used for store distance, is foreground-only and coordinates never leave the device.

---

## 2. Color

Warm farmstand ground, never stark white. One orange, used for accent and CTA only — never as a large field. Greens carry health meaning and must not be spent on decoration.

```css
:root {
  /* Ground */
  --bone:        #F4F3EA;  /* page background — flat warm off-white */
  --card:        #FFFFFF;  /* every card surface */
  --bone-warm:   #F2EED8;  /* secondary warm surface, insets */
  --bone-deep:   #E8E3C8;  /* deepest bone tint */
  --chip-bone:   #FBF8EC;  /* light text on saturated fills */

  /* Ink */
  --ink:         #212220;  /* body text, icons */
  --ink-deep:    #1F140F;  /* score-sticker rim, dark text on light chips */
  --muted:       #56594F;  /* secondary text */
  --faint:       #9A9D93;  /* tertiary text, timestamps */
  --hair:        rgba(30,40,30,0.12);  /* every rule and divider */

  /* Green — health meaning */
  --grass:       #2E8B4F;  /* score ≥75 · verdict GREEN */
  --grass-light: #6FA84A;  /* score ≥50 */
  --grass-deep:  #1E4D3A;  /* dark feature ground: hero, membership, avatars */

  /* Orange — accent + CTA only */
  --orange:      #F26A21;
  --orange-deep: #E0552B;  /* score <25 · verdict RED */

  /* Warn */
  --mustard:     #E7A52B;  /* score ≥25 · verdict YELLOW */
  --gold:        #F6C44E;  /* script accents on dark grounds */
  --brick:       #B13A28;

  /* Score-tint thumbnails */
  --tint-mint:   #CFE6CB;  /* ≥75 */
  --tint-butter: #F3E1B0;  /* 50–74 */
  --tint-blush:  #F4CFC4;  /* <50 */
}
```

**Dark sections** use `--grass-deep` (#1E4D3A) as the ground with `--bone` text and `--gold` for script accents. Do **not** invent a near-black ground — the app has no `#0F1410`.

**Score foreground rule:** text on a score fill is `--chip-bone` (#FBF8EC), *except* on the fair band (25–49) where it flips to `--ink-deep` (#1F140F) for contrast.

---

## 3. Typography

Three families, three jobs. Never substitute.

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@600;700&family=DM+Sans:wght@400;500;600;700;800&family=Fraunces:ital,wght@0,400;0,700;0,900;1,700;1,900&display=swap" rel="stylesheet">
```

- **Fraunces** — serif display. Titles, product names, score numerals, pull quotes. Weights 700 and 900; italic 700/900 for accents.
- **DM Sans** — the brand sans. Body, labels, eyebrows, buttons, nav. Weights 400/500/600/700/800. **Inter is not the brand font — remove it.**
- **Caveat** — script, weight 700. Greetings and single accent words *only*. Never a full sentence, never a label.

### The signature move: italic accent on the last word

Every headline in the app splits its **last word** into `Fraunces italic` in `--orange` (or `--grass-light` on dark grounds). This is the strongest brand signal Clem has. Use it on every h1 and h2.

```html
<h1>Let's eat something <em>good.</em></h1>
```
```css
h1 em { font-family: 'Fraunces', serif; font-style: italic; font-weight: 900; color: var(--orange); }
```

### The eyebrow

Orange, uppercase, extra-bold, wide tracking, prefixed with an em-dash. Sits above the headline.

```css
.eyebrow {
  font-family: 'DM Sans', sans-serif; font-weight: 800;
  font-size: 11px; letter-spacing: 2px; text-transform: uppercase;
  color: var(--orange);
}
```
```html
<span class="eyebrow">— Today's move</span>
```

### Web type scale

The app's scale is phone-sized. These are the web-adapted sizes; the *character* (Fraunces 900, tight negative tracking on display, wide positive tracking on eyebrows) is what must carry over, not the raw px.

| Role | Family / weight | Size | Line height | Tracking |
|---|---|---|---|---|
| Hero h1 | Fraunces 900 | clamp(40px, 6vw, 72px) | 1.02 | -0.03em |
| Section h2 | Fraunces 700 | clamp(30px, 4vw, 46px) | 1.08 | -0.025em |
| Card / sub h3 | Fraunces 900 | 20px | 1.15 | -0.02em |
| Score numeral | Fraunces 900 | 92px | 0.85 | 0 (**never negative** — it clips Fraunces' flourished digits) |
| Body | DM Sans 400 | 17px | 1.65 | 0 |
| Body small | DM Sans 400 | 14px | 1.6 | 0 |
| Eyebrow | DM Sans 800 | 11px | — | 2px, uppercase |
| Label / meta | DM Sans 800 | 9–10px | — | 1–1.5px, uppercase |
| Button | DM Sans 800 | 13px | — | 0.5px |
| Script accent | Caveat 700 | 38px | 1.0 | 0 |

---

## 4. Spacing, radius, elevation

**Spacing — 8px grid.** 4 · 8 · 12 · 16 · 20 · 24 · 32 · 48. Use `gap` on flex/grid, not per-element margins.

**Radius.** Cards are `20px` — this is the standard and the one to reach for. Also available: 12 (small), 14 (thumbnails), 16, 24 (large), `9999` (pills). **4px radius is not part of this system.**

**Elevation — two shadows carry the whole product.** Cards do not get borders; they get a soft shadow on bone.

```css
--shadow-soft:  0 6px 18px rgba(30,40,30,0.06);   /* resting cards */
--shadow-float: 0 12px 28px rgba(30,40,30,0.16);  /* floating nav, elevated CTA */
```

**Rules and dividers** are `1px solid var(--hair)`. Not 2px, not ink-black.

**The one exception — the hard offset shadow.** `3px 4px 0 rgba(31,20,15,0.2)` with a 13° rotation belongs to the **score sticker and nothing else**. It is a deliberate sticker-on-paper effect. Applying it to every button and card (as the current site does) flattens the hierarchy and reads as a different, louder brand.

---

## 5. Component recipes

### Card
```css
.card {
  background: var(--card);
  border-radius: 20px;
  padding: 20px;
  box-shadow: var(--shadow-soft);
  /* no border */
}
```

### Primary button (CTA)
```css
.btn-primary {
  display: inline-flex; align-items: center; gap: 8px;
  background: var(--orange); color: var(--chip-bone);
  border: none; border-radius: 9999px;
  padding: 15px 30px;
  font: 800 13px/1 'DM Sans', sans-serif; letter-spacing: 0.5px;
  box-shadow: var(--shadow-soft);
  transition: transform .18s, box-shadow .18s, background .18s;
}
.btn-primary:hover { background: var(--orange-deep); transform: translateY(-2px); box-shadow: var(--shadow-float); }
```

### Secondary button
Transparent ground, `1px solid var(--hair)`, `--ink` text, same pill radius and type. On a dark green ground: `1px solid rgba(244,243,234,0.25)` with `--bone` text.

### Score sticker — the hero object
An ink rim, a bone ring, a colored disc, tilted 13°, with the hard offset shadow. Proportions from `D9ScoreSticker.tsx`: rim 96 → bone ring 90 → disc 80 (scale proportionally).

```css
.score { transform: rotate(13deg); box-shadow: 3px 4px 0 rgba(31,20,15,.2); border-radius: 50%;
         width: 96px; height: 96px; background: var(--ink-deep);
         display: grid; place-items: center; }
.score-ring { width: 90px; height: 90px; border-radius: 50%; background: var(--chip-bone);
              display: grid; place-items: center; }
.score-disc { width: 80px; height: 80px; border-radius: 50%; background: var(--grass); /* band color */
              display: grid; place-items: center; color: var(--chip-bone); }
.score-num  { font: 900 34px/1 'Fraunces', serif; letter-spacing: 0; }
.score-out  { font: 700 10px/1 'Fraunces', serif; opacity: .65; }  /* "/100" */
```

### Chip
Solid fill, `11px` radius, no border. `good` = grass fill / bone text. `warn` = mustard fill / **ink** text. `alert` = orange fill / bone text. Type: DM Sans 800, 9px, 1px tracking, uppercase.

### Pull quote — "Clem's Take"
Bone ground, **4px orange left border**, no other borders, no shadow. Orange uppercase eyebrow label `— CLEM'S TAKE`, then a bold non-italic leading phrase followed by italic Fraunces continuation.

### Section header
Fraunces title (last word italic-orange) → orange eyebrow beneath it → `1px` hair rule → content.

### Data table
Ink header bar with bone uppercase DM Sans 800 labels; rows separated by hair rules; values in Fraunces 900. Use this for any nutrition or comparison table so it reads like the app.

---

## 6. Layout & motion

- Content column max **1080px**, gutters 36px desktop / 20px mobile.
- Alternate **bone** and **deep-green** full-bleed sections for rhythm. Bone is the default; green sections are for emphasis (hero statement, final CTA).
- Motion is restrained: fade + 6–10px rise on section entry, 0.18s ease on hover, spring only on the score reveal. Respect `prefers-reduced-motion`.
- Breakpoint at 860px: grids collapse to single column, hero type steps down.

## 7. Voice

Encouraging, specific, never shaming. No food is "bad" — it's "room to improve." Editorial and plain-spoken; short declaratives. Clem helps you decide, it doesn't grade your character.

Avoid: guilt framing, fear appeals about ingredients, "toxic"/"clean"/"chemical-free" language, and any implication of medical advice.

## 8. Accessibility

- Body text ≥16px; contrast ≥4.5:1. `--faint` (#9A9D93) fails on bone for body copy — restrict it to large text or decoration.
- Orange on bone at small sizes is marginal; use `--orange-deep` for small orange text.
- Every interactive element needs a visible focus ring: `2px solid var(--orange)`, `outline-offset: 2px`.
- Real `<button>`/`<a>` elements, not divs with onclick.

## 9. Hard don'ts

1. **No Inter.** DM Sans is the sans.
2. **No 4px radius** and **no 2px ink borders** on cards or buttons. Cards are 20px radius with a soft shadow.
3. **No hard offset shadow** anywhere except the score sticker.
4. **No near-black ground** (#0F1410). Dark sections are `--grass-deep` #1E4D3A.
5. **No off-palette hexes.** Every color comes from §2.
6. **No emoji as icons.** The app uses Phosphor throughout; on web use inline SVG in that line-icon style.
7. **Never claim AI computes the score.** Code computes the score; AI writes the take.
