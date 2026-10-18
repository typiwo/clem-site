# go/ — App Store campaign redirect links

Each subdirectory here (`go/<code>/index.html`) is a tiny static redirect
page that sends a browser straight to Clem's App Store listing with an Apple
Search Ads / campaign tracking token attached:

```
https://apps.apple.com/app/id6760143309?pt=<PROVIDER_TOKEN>&ct=<code>&mt=8
```

`clemapp.com/go/<code>` is the human-friendly link we hand to a creator or
put on event signage; Apple's campaign dashboard (App Store Connect →
Analytics → Sources → Campaigns) then attributes installs that came through
it to `<code>`.

## Generating a new one

Use `scripts/make-go-link.sh` from the repo root:

```
scripts/make-go-link.sh <code> [provider_token]
```

- `<code>` — lowercase, `[a-z0-9_-]{2,32}`. Matches the code registered in
  the app's Supabase `campaign_codes` table (see
  `docs/growth/attribution-runbook.md` in the `clem` app repo).
- `[provider_token]` — Apple's `pt=` token. Omit it to read
  `$CLEM_ASC_PROVIDER_TOKEN`, else the checked-in default (`128485703`, fetched
  once from App Store Connect on 2026-09-30). It is account-wide, not per-code.

The script writes `go/<code>/index.html` and prints the live URL. Commit the
generated file — every page here is checked in, not generated at deploy
time.

## What the page does

- `<meta name="robots" content="noindex">` — kept out of search results.
- `layout: null` + `sitemap: false` front matter — Jekyll copies the file
  as-is (no site chrome) and leaves it out of the sitemap.
- An immediate `<meta http-equiv="refresh">` plus a `window.location.replace`
  fallback redirect to the App Store link.
- A visible "Open Clem on the App Store" link for browsers that block
  automatic redirects.

No other logic lives here — this directory only ever holds generated
redirect pages plus this README.

## Pilot invite links

Pilot codes (`ce-<name>`, `ty-<name>`) do not get a `go/` page. They use the single
page at `/join?c=<code>` (`join/index.html`), which shows the code, links to the App
Store with `ct=<code>`, and opens the app with `clem://join/<code>` when installed.
The app registers the code on first use; nothing to add here or in Supabase.
