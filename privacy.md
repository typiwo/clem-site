---
layout: default
title: Privacy Policy
permalink: /privacy/
---

# Privacy Policy

**Effective date:** August 22, 2026
**Last updated:** October 31, 2026

This Privacy Policy explains how Clem ("**Clem**," "**we**," "**us**," or "**our**") collects, uses, shares, and protects information when you use the Clem mobile app (the "**Service**"). By using Clem, you agree to this Policy.

## 1. Who we are

Clem is operated by **Clemapp, Inc.**, a Delaware corporation with its principal place of business in Texas, United States. In this Policy, "we" refers to Clemapp, Inc. acting under the Clem brand. If you have any questions, you can reach us at **privacy@clemapp.com**.

**Business succession.** In the event Clem is sold, transferred, merged, or discontinued, user data may be transferred to a successor entity. We will provide reasonable advance notice to users by email, and any successor will be required to honor this Privacy Policy or obtain fresh consent before making material changes to how your data is handled.

## 2. Information we collect

We intentionally collect as little data as possible. The information we collect is:

**Account information**
- Your email address (provided by Apple Sign In or Google Sign In). If you use Apple's "Hide My Email" feature, this will be a relay address (`...@privaterelay.appleid.com`) that forwards to your real inbox. We cannot see or unmask your real email in that case.
- Your first name (if you choose to share it during Apple Sign In).
- A unique user identifier we use internally to associate your data with your account.

**Dietary preferences**
- Your selected diet type (e.g., standard, keto, vegan).
- Your dietary alert toggles (e.g., avoid seed oils, gluten-free, dairy-free, nut-free).
- Your watch list: ingredients and nutrition rules you choose to track (for example "sesame", or "sodium over 460 mg per serving"). Your watch list is private to your account.

**About you (optional)**
- During onboarding, and later in Settings, you can choose to tell us your age range, gender, who you shop for, how often you grocery shop, and where you usually shop. Every question has a "Prefer not to say" option and you can skip or clear these answers at any time in **Settings → About you**. We use these answers only in aggregate to understand who uses Clem and to improve the product. They are never used for advertising, never shared with advertisers, and never sent to the AI that analyzes your food.

**How you found Clem and research interviews (optional)** — During onboarding we ask how you heard about Clem (for example TikTok, a creator, a friend) and, optionally, a creator or referral code. You can also opt in to a short research conversation with our team; if you do, we keep your opt-in and the email address on your account so we can reach you. You can withdraw by contacting us or deleting your account. None of this is sent to the AI or used for advertising.

**Feedback you write to us (optional)** — Some early-access features end with a short survey. The multiple-choice answers are recorded as product-analytics events (see "Product analytics" below). If you also type a note, we store the note in our own database, linked to your account, so our team can read it. Typed notes are never sent to our analytics provider, to the AI, or to advertisers. Please leave out anything about your health. You can ask us to delete a note at any time by contacting us, and notes are deleted with your account.

**Sugar and carbs pilot (invite only, optional)**
- If you join our invite-only pilot for people managing diabetes or watching their blood sugar, we store that you are a member: your invite code, when and how you joined, and your member number. Because membership says something about your health, we treat it as consumer health data. Our [Consumer Health Data Privacy Policy](/health-data/) explains exactly what we collect, who receives it, and how to delete it. We never collect blood sugar readings, diagnoses, medications, or Apple Health data.

**Scan and cart data**
- The text analysis results from your grocery scans (score, ingredients summary, highlights, nutrition details).
- Scan diagnostics stored alongside each scan attempt (including attempts that fail), so we can see which products people look for and keep scanning fast and reliable: how you scanned (camera, photo library, or barcode), the barcode or product identified, which data source answered, processing times, your app version, iOS version and device model, language/locale, time-zone offset, the country your request came from (derived from the network request, never from your device's location), and a snapshot of your dietary preferences at the time of the scan. This never includes your coordinates.
- The photo you scan, stored as a shared product-catalog image keyed to the product (not to you). See Section 4.
- Photos you take of a product's **ingredient list and Nutrition Facts panel** when Clem asks for them, stored as label records keyed to the product's barcode (not to you). See Section 4.
- Products you add to your cart or save.

**Subscription status**
- Whether you have an active Clem Pro subscription, its plan type (monthly/annual), its expiration date, and the Apple transaction identifier. **All payment information is handled by Apple, not by Clem.** We never see your credit card, bank details, or billing address.
- We use RevenueCat (RevenueCat Inc., U.S.) to manage your subscription purchases and link them to your account. RevenueCat receives your anonymous user identifier and purchase receipts from Apple.

**Product analytics**
- We use PostHog (PostHog Inc., U.S.) to log product-analytics events such as screen views, feature interactions (e.g., scans completed, searches performed), onboarding progress and the answers you give to onboarding questions (your goals, and — only if you choose to share them — the optional About-you answers above), which PostHog stores as properties of your anonymous analytics profile so we can understand usage by audience (if you join the sugar and carbs pilot, your invite code is stored there too), and to record session replays — playback of your in-app screens and interactions — so we can find and fix usability problems. Session replays have all text you type masked (for example, your email at sign-in is never captured); other on-screen content, including product images, is recorded so we can see what you experienced. Events and replays are linked to your anonymous user identifier. We do not use heatmaps. If you use the store-distance feature, these events may also include coarse location-derived signals — store chain names, rounded distance ranges, and a near-a-store indicator — never your coordinates or a precise distance.

**Camera and photo library access (when you scan or set a profile picture)**
- When you tap to scan a grocery item, or choose a profile picture, iOS will prompt you to allow Clem to use your **camera** and/or **photo library**. You choose whether to grant access. We only access the single photo you capture or select — we do not browse or access any other photos from your library. A photo you scan is stored as a product-catalog image; a photo you choose as a profile picture is stored as your avatar (see Section 4). You can revoke access anytime in **iOS Settings → Privacy → Photos / Camera → Clem**.

**Location (when you grant access)**
- If you grant location access, Clem uses your device's location to show how far away recommended products are at nearby stores (for example, "1.2 mi at Trader Joe's"). Distances are computed entirely on your device against a locally cached list of store locations: **your coordinates never leave your device** — they are not sent to our servers or to third parties, and we never store your coordinates or a location history. So we can understand and improve the feature, our analytics provider (see Section 6) may receive coarse, coordinate-free signals derived from that on-device comparison — for example the name of a store chain shown on a recommendation, a rounded distance range (such as "1–5 miles"), or whether you were near a listed store when you scanned. These signals never include your coordinates or a precise distance. You can revoke location access at any time in iOS Settings, and the app continues to work without it.
- **Checking stores you're in (optional).** If you turn on "Check stores I'm in", then after you scan a product at a store you have confirmed, Clem can open that retailer's public website inside the app, signed out and without keeping cookies, to read the price, aisle and availability of your healthier swaps at that store. Clem sends the store you confirmed and those product facts to our servers, recorded under a one-way hashed identifier and a date, never your location or the pages themselves; the identifier is removed after 90 days or when you delete your account. You can turn this off at any time in Settings.

**Profile information (only if you edit your profile)**
- If you edit your profile, we store the display name and profile picture (avatar) you choose. Your profile is shown only to you in the app.

**Push notification token (only if you enable notifications)**
- If you allow notifications, we store a device-specific push token issued through Expo and Apple so we can deliver notifications to your device. This token is used solely to route notifications to your device. It is **not** an advertising identifier and is **not** used to track you across apps or websites.

### What we do *not* collect

We do not collect or store:
- Your contacts, calendar, health data (HealthKit), or other photos from your library.
- Your advertising identifier (IDFA), device fingerprint, or persistent tracking identifiers.
- Heatmaps.

We do **not** use any advertising, attribution, or behavioral-tracking SDKs.

## 3. How we use your information

We use your information solely to:
- Provide the scanning, scoring, search, and cart features.
- Personalize your dietary alerts based on the preferences you set.
- Check scanned products against your watch list and show you the matches.
- Validate your Clem Pro subscription.
- Deliver the in-app and push notifications you have enabled, such as scan reminders and updates about product feedback you sent.
- Understand how the app is used so we can improve it (via PostHog product analytics and masked session replays of your app usage).
- Respond to support requests sent to privacy@clemapp.com.
- Comply with legal obligations.

We do not sell your personal information. We do not use your personal information for advertising or for profiling outside the scope of the Service.

## 4. How your photo is handled when you scan

When you capture or select a photo to scan:
1. The photo is read into memory on your device and encoded as base64.
2. It is sent over a TLS-encrypted connection to our Supabase Edge Function.
3. The Edge Function forwards it to the Google Gemini API for analysis.
4. The text analysis is returned to your device and saved to your scan history.

**We store your scan photo as a product-catalog image.** To build a shared catalog of grocery products that powers Search and Healthier Alternatives, the photo you scan is uploaded to Supabase Storage and saved against the **product** it depicts (for example, `products/<product-id>.jpg`) — **not against your account or identity** — and may be displayed as that product's image elsewhere in the app. Because these are photos of grocery packaging stored by product rather than by user, we treat them as deidentified catalog content that is not linked back to you. The resulting text analysis (score, ingredients, highlights, etc.) is also retained in your scan history. We never access or retain any other photos from your library — only the single image you capture or select for a scan.

**Label photos (ingredient list and Nutrition Facts panel).** When Clem cannot find reliable label data for a barcode, or when you choose to contribute it, the app may ask you to photograph the product's ingredient list and Nutrition Facts panel. These photos are sent to our Edge Function, read by the Google Gemini API into text (the ingredient statement, the "Contains" line and the panel values), and stored in a **private** Supabase Storage bucket (`label-photos`) together with the text we read. The record is keyed to the **product's barcode**; while your account exists it also carries a link to your account (so we can show you your own capture and answer your questions about it), and that link is removed when you delete your account. A second model re-reads the same photos in the background and, when the two readings agree, the label becomes part of Clem's shared product records and is shown to everyone who scans that barcode, labelled "From the label". **Label photos are never shown to other users as images**; only the text read from them is. Because they are photos of packaging keyed to the product, we treat them as catalog content: they are retained as part of the product record and are **not removed when you delete your account**; only the link between the record and your account is removed at that point, after which nothing ties the photo to you. Readings the two models disagree on are reviewed by us before they are used. We only access the single photos you capture for this purpose, never other photos from your library.

**Your profile picture (avatar) is handled differently from both of the above.** If you set a profile picture, it is stored in a separate Supabase Storage bucket (`profile-photos`) that is **public-read**: it is served from a stable URL rather than a time-limited signed link. The app shows it only on your own profile, and nowhere in the app lists or links to other people's avatars. The image is saved under a path that links it to your account but uses an **unguessable, random filename** (for example, `<your-user-id>/<random-id>.jpg`), so it cannot be guessed or enumerated from your user identifier. When you change your avatar, remove it, or delete your account, the stored image is deleted or replaced. As with scanning, we only access the single photo you capture or select to set as your avatar — no other photos from your library.

Google Gemini's retention and use of the image is governed by Google's terms — see Section 6 below.

## 5. Social features (retired)

Clem used to offer optional social features: usernames, public and private profiles, following, a feed of shared scans with photos and captions, likes, comments, blocking, and reporting. We removed them in October 2026. Clem no longer collects any of this information, nothing you do in Clem is shown to other users, and the data those features stored (follow relationships, likes, comments, blocks, reports, usernames, bios, and the photos and captions of shared scans) is being permanently deleted.

## 6. Third-party services we use

The Service relies on a small number of third parties. Each handles the data described below under its own privacy terms. We rely on our providers' standard Data Processing Agreements (DPAs), as required under GDPR Article 28, to govern their processing of personal data on our behalf.

**Supabase** (database, authentication, and server-side functions; hosted on AWS)
Supabase stores your account, dietary preferences, scan history, cart, and subscription status. Data is encrypted at rest and in transit. See the [Supabase Privacy Policy](https://supabase.com/privacy).

**Google Gemini API** (AI analysis of scans and product information)
When you scan or search for a product, the image and/or text is sent to Google's Gemini API through our Edge Function so the AI can analyze it. **Clem uses the paid (billed) tier of the Gemini API.** Under Google's paid-tier Gemini API terms, Google does **not** use the content you submit — prompts, images, or the responses Google generates — to train or improve their AI models. Google may retain the content for a limited period for abuse detection, safety, and legal-compliance purposes, but not for machine-learning training. See the [Google Gemini API Additional Terms of Service](https://ai.google.dev/gemini-api/terms) and the [Google Privacy Policy](https://policies.google.com/privacy).

**RevenueCat** (subscription management)
RevenueCat manages subscription purchases, receipt validation, and entitlement status on our behalf. It receives your anonymous user identifier and Apple purchase receipts. RevenueCat is SOC 2 Type II certified and is based in the United States. See the [RevenueCat Privacy Policy](https://www.revenuecat.com/privacy/).

**PostHog** (product analytics)
PostHog logs product-analytics events (e.g., scans completed, paywall views, onboarding steps) and records masked session replays (see "Product analytics" in Section 2), linked to your anonymous user identifier. If you use the store-distance feature, these events may include coarse location-derived signals (store chain names, rounded distance ranges, and a near-a-store indicator) — never your coordinates or a precise distance. We do not enable heatmaps or autocapture. PostHog is SOC 2 Type II certified and is based in the United States. See the [PostHog Privacy Policy](https://posthog.com/privacy).

**Apple** (Sign in with Apple, StoreKit for subscriptions)
Apple handles authentication when you sign in with Apple and handles all payment processing for Clem Pro. Apple's handling of that data is governed by [Apple's Privacy Policy](https://www.apple.com/legal/privacy/).

**Google** (Sign in with Google, if you choose it)
If you sign in with Google, Google handles that authentication. See the [Google Privacy Policy](https://policies.google.com/privacy).

**Expo** (push notification delivery)
If you enable notifications, we use Expo's push service (operated by 650 Industries, Inc., U.S.) to deliver notifications to your device through Apple's Push Notification service (APNs). Expo receives your device push token and the notification content solely to route the message to your device. See the [Expo Privacy Policy](https://expo.dev/privacy-explained).

**Data sources (not recipients of your data).** Product information in Clem draws on public databases, including [USDA FoodData Central](https://fdc.nal.usda.gov) and [Open Food Facts](https://world.openfoodfacts.org), whose database is made available under the [Open Database License (ODbL)](https://opendatacommons.org/licenses/odbl/1-0/). Store locations shown in the store-distance feature are derived from **OpenStreetMap**, © OpenStreetMap contributors, available under the [Open Database License (ODbL)](https://www.openstreetmap.org/copyright). These are sources we read from to build our catalog; none of them receives any data about you.

## 7. How long we keep your data

- **Anonymous trial accounts:** if you start using Clem without signing in, a temporary anonymous account holds your onboarding choices and scans. It becomes your real account when you sign in; if you never sign in, the anonymous account and all of its data are automatically deleted after about **30 days** of inactivity.
- **Account record, dietary preferences, your optional About-you answers, how you found Clem and any research-interview opt-in, scan history, cart, saved products, and local subscription-status row:** retained while your account is active, and permanently deleted within **30 days** of account deletion. You can also clear your About-you answers at any time in **Settings → About you** without deleting your account. The 30-day window exists to cover routine encrypted backups; in practice, tapping **Delete Account** in Settings wipes your data from the live database immediately.
- **Feedback notes you type in a survey:** retained while your account is active and deleted when you delete your account (within **30 days**, covering backups).
- **Profile (display name and avatar) and push tokens:** retained while your account is active and deleted within **30 days** of account deletion.
- **Photos submitted for scanning:** stored in Supabase Storage as a product-catalog image, saved against the product (not your account) and not linked to your identity. Because they are deidentified catalog content keyed to the product rather than to you, these images are retained as part of the shared product catalog and are not tied to — or removed with — your account. Google's retention of the image is governed by its Gemini API terms linked above.
- **Label photos (ingredient list and Nutrition Facts panel):** stored in the private `label-photos` bucket with the text we read from them, keyed to the product's barcode and, while your account exists, linked to your account. Retained as part of the shared product record; not removed with your account, but the link to your account is removed within **30 days** of account deletion. We may delete older label photos once the text has been verified, keeping only the text.
- **Profile picture (avatar):** stored in the public-read `profile-photos` bucket under an unguessable, random filename and retained while it is set as your avatar. It is deleted or replaced when you change it or remove it, and is deleted within **30 days** of account deletion.
- **Subscription financial records:** held by Apple, not by us. When your Clem account is deleted, our copy of your subscription-status row is deleted, but any active Apple subscription continues until you cancel it in your Apple ID Settings (it simply stops being associated with a Clem account).

## 8. Your rights and choices

You can:
- **Delete your account** at any time from inside the app: **Settings → Delete Account**. This permanently removes your scan history, cart, dietary preferences, and account record.
- **Revoke camera or photo-library access** at any time in iOS **Settings → Privacy → Camera / Photos → Clem**.
- **Cancel your Clem Pro subscription** at any time in your iOS **Apple ID Account Settings → Subscriptions**.
- **Request a copy of your data** ("data portability") by emailing privacy@clemapp.com. We will send you your account, dietary preferences, scan history, cart, and subscription-status row in a machine-readable format within 30 days.
- **Correct inaccurate data** by emailing privacy@clemapp.com or editing in the app where applicable.
- **Object to or restrict processing** of your data in certain circumstances — email us at privacy@clemapp.com and we will respond.

**Appeals.** If we decline to take action on a data request described above, you may appeal by emailing **privacy@clemapp.com** with the subject line "Privacy Request Appeal" and a brief description of the original request and why you believe the denial was incorrect. We will respond in writing with an explanation of our decision within 45 days. If your appeal is denied, you may submit a complaint to your applicable state attorney general or data protection authority.

## 9. European Economic Area, United Kingdom, and Switzerland (GDPR / UK GDPR)

If you are in the EEA, the United Kingdom, or Switzerland, the General Data Protection Regulation (or the UK GDPR) gives you specific rights.

**Data controller.** Clemapp, Inc. is the data controller for the personal data described in this Policy. You can reach the controller at privacy@clemapp.com.

**Legal bases we rely on.**
- **Performance of a contract** (GDPR Art. 6(1)(b)) — to provide the Service you asked for.
- **Consent** (Art. 6(1)(a)) — for the optional dietary alert personalization you configure, and for the optional About-you answers you choose to share; withdraw anytime by clearing them in **Settings → About you**.
- **Legitimate interests** (Art. 6(1)(f)) — to keep the Service secure and prevent abuse.

**Your rights.** You have the right to access, rectify, erase, restrict, or object to our processing, the right to data portability, and the right to withdraw consent. Email privacy@clemapp.com to exercise any of these.

**Right to lodge a complaint.** You also have the right to complain to your local data protection supervisory authority.

**International transfers.** Your data is stored and processed in the United States (Supabase / AWS) and transmitted to Google's Gemini API for analysis. Where required, we rely on Standard Contractual Clauses and our providers' own transfer mechanisms.

## 10. California residents (CCPA / CPRA)

If you are a California resident, the California Consumer Privacy Act, as amended by the CPRA, gives you specific rights.

**Categories of personal information we collect.** Identifiers (email, user ID, and — if you enable notifications — a device push token); customer-account information (name, profile details, subscription status); characteristics of protected classifications under California or federal law (age range and gender — only if you choose to provide them in the optional About-you questions); commercial information (products you've scanned, saved, or added to cart); internet/other electronic network activity (your interactions with the Service and masked session replays of your app usage); and user content (profile information you provide, photos you submit for scanning, stored as deidentified product-catalog images keyed to the product rather than to you, and label photos you take of a product's ingredient list and Nutrition Facts panel, stored privately and keyed to the product's barcode).

**Categories of sources.** Directly from you; from Apple or Google at sign-in; and generated by your use of the Service.

**Purposes.** Only to provide and secure the Service, as described in Section 3.

**Third parties we share with.** Service providers only, as listed in Section 6. **We do not sell your personal information, and we do not share it for cross-context behavioral advertising.** We have not done so in the past 12 months.

**Your rights under the CCPA/CPRA.** You have the right to know what we collect, to delete your personal information, to correct inaccurate information, to opt out of sale or sharing (not applicable — we do neither), to limit the use of sensitive personal information (the only sensitive personal information we may collect is membership in the invite-only sugar and carbs pilot, which can indicate a health condition; we use it only to provide the pilot and never to infer anything else about you. The optional gender and age-range answers you may choose to share are not sensitive personal information under the CPRA; residents of states that treat gender identity as sensitive data provide it only by their affirmative, optional choice and can delete it at any time), and not to be discriminated against for exercising these rights.

**How to exercise your rights.** Email privacy@clemapp.com, or use **Settings → Delete Account** in the app. We will respond within 45 days. We verify requests by matching the email address on your account.

## 11. Additional U.S. state privacy rights

Residents of **Colorado, Connecticut, Delaware, Florida, Indiana, Iowa, Kentucky, Maryland, Minnesota, Montana, Nebraska, New Hampshire, New Jersey, Oregon, Rhode Island, Tennessee, Texas, Utah,** and **Virginia** may have additional rights under their applicable state privacy laws, including the right to access, correct, delete, and obtain a portable copy of their personal information, and to opt out of targeted advertising, the sale of personal information, or profiling that produces legal or similarly significant effects. We do not engage in targeted advertising, the sale of personal information, or such profiling, so the opt-out rights do not currently apply to any processing Clem performs — but the access, correction, deletion, and portability rights are fully available to you.

To exercise these rights, email **privacy@clemapp.com**. We will respond within 45 days. We verify requests by matching the email address on your account. If we decline your request, you may appeal as described in Section 8.

## 12. Children's privacy

Clem is not directed at children under 13, and we do not knowingly collect personal information from children under 13. If you are a parent or guardian and believe your child has created an account, email privacy@clemapp.com and we will delete the account and any associated data.

Clem is rated **4+** on the App Store because it contains no objectionable content, but the service itself is intended for general audiences 13 and older.

The optional About-you questions ask for an age *range* (never a birthdate), and the lowest bucket is "Under 18." If you tell us you are under 18, nothing about the Service changes, and we do not collect any additional information because of it.

**Teen users (13–17).** Users between the ages of 13 and 17 may use Clem only with the consent of a parent or legal guardian. By using the Service, users under 18 represent that they have obtained such consent. In jurisdictions that require parental consent for users under 16 (such as certain EEA member states under GDPR Article 8), that higher age threshold applies instead. Parents or guardians may request deletion of a minor's account by emailing privacy@clemapp.com.

## 13. Apple Sign In and "Hide My Email"

If you sign in with Apple and choose **Hide My Email**, Apple gives us an anonymized relay email address (ending in `@privaterelay.appleid.com`) instead of your real email. Messages we send to that address are forwarded by Apple to your real inbox. We cannot see your real email address and cannot unmask it. Deleting your Clem account works the same way whether you use a real or relay email.

If you revoke Clem's access to Sign in with Apple (iOS **Settings → Apple ID → Password & Security → Apps Using Apple ID → Clem → Stop Using Apple ID**), you will be signed out of Clem and unable to sign back in with that Apple ID. To also delete your stored data, use **Settings → Delete Account** in the app before revoking.

## 14. Security

We protect your data with industry-standard measures:
- TLS 1.2+ for all network traffic between your device, our Edge Functions, and third-party APIs.
- Encryption at rest for all data stored in Supabase / AWS.
- JSON Web Token (JWT) authentication on every request.
- Row-Level Security policies so that your data is private: readable and writable only by you.
- A single server-side Gemini API key that is never exposed to the client.

No system is perfectly secure. If we discover a breach affecting your personal information, we will notify you as required by applicable law.

## 15. Changes to this Policy

We may update this Policy from time to time. If we make a material change, we will update the Effective Date at the top and notify you in the app or by email. Your continued use of the Service after an update constitutes acceptance of the updated Policy.

**Change log.**
- **October 2026 (sugar and carbs pilot):** Added the invite-only sugar and carbs pilot and a separate [Consumer Health Data Privacy Policy](/health-data/) describing the consumer health data it involves.
- **October 2026:** Removed the social features (usernames, public profiles, following, the feed, likes, comments, blocking, and reporting). We no longer collect that information, nothing you do in Clem is visible to other users, and the data those features stored is being deleted. See Section 5.
- **September 2026:** Clem is now operated by Clemapp, Inc., a Delaware corporation, which has succeeded Tyler Piwowarski as the operator of the Service and the data controller for your personal data. Nothing about what we collect, how we use it, who we share it with, or your rights has changed as a result.
- **August 2026:** Added the optional "About you" questions (age range, gender, who you shop for, and shopping habits), collected only if you choose to share them and used only in aggregate to understand who uses Clem. In-app notice is provided by the "Privacy" link on the About-you screen itself.

A diff history of every change is publicly visible in the Git history of the repository that hosts this page.

## 16. Contact

For questions or requests about this Policy or your data, email:

**privacy@clemapp.com**

Clemapp, Inc.
3227 McKinney Ave
Dallas, TX 75204
United States
