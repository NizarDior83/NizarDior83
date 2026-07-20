# 🏗️ BUILD PLAN — "Limber"

> Daily stretch, yoga & mobility app · 3+ / Everyone · Reference app: Bend
> Companion document: [BRAND_KIT.md](./BRAND_KIT.md)

---

## Recommended Tech Stack

| Layer | Choice | Why |
|---|---|---|
| App framework | **Flutter** | One codebase (iOS + Android), smooth 60fps animations, ideal for HD 3+ apps. (React Native is the JS alternative.) |
| Local data | SQLite / Hive | Local-first so routines work fully offline. |
| Accounts & sync | Firebase Auth + Firestore | Optional cloud sync for progress & custom routines. |
| Subscriptions | RevenueCat | Cross-platform paywall + receipt handling. |

---

## Phase 0 — Foundation & Decisions (Week 1)

- [ ] Lock brand kit into a design-system file (tokens: colors, type, spacing, radii)
- [ ] Confirm tech stack
- [ ] Define monetization: free routines + **Limber Premium** subscription
- [ ] Set up repo, project structure, CI

## Phase 1 — Content Model & Data (Week 2)

Core data structures:

- **Pose** → `id, name, description, muscleGroups[], duration, animationAsset, difficulty, isPremium`
- **Routine** → `id, name, description, category, poses[] (ordered), totalDuration, difficulty, isPremium`
- **Category** → Wake Up, Posture Reset, Full Body, Sleep, Expert, Hips, Hamstrings, Lower Back, Isometric
- **UserProgress** → streaks, completed sessions, favorites, custom routines, daily check-in history

Deliverable: initial pose library of **~40–60 poses** covering all categories.

## Phase 2 — Core Screens (Weeks 3–5)

1. **Onboarding** — 3–4 friendly slides + goal selection (mobility / posture / sleep / flexibility)
2. **Daily Check-in** *(differentiator)* — quick taps for stiffness / energy / sleep → recommended routine for today
3. **Home** — greeting, "Today for you" card, category grid (⊕ tiles)
4. **Routine Detail** — description, pose list, duration, Start button
5. **Player (core screen)** — full-screen pose animation, name, countdown timer, next-pose preview, pause/skip, voice + audio cues, progress bar
6. **Completion** — celebration, streak update, "How do you feel now?" feedback
7. **Library / Browse** — all routines by category, search, filter by body area & difficulty

## Phase 3 — Create Your Own (Weeks 6–7)

- Custom routine builder: pick from pose library, set duration per pose, drag-and-drop reorder, name & save
- "My Routines": edit, duplicate, delete

## Phase 4 — Engagement & Retention (Week 8)

- Streaks & gentle, customizable reminders (non-nagging — e.g. "Time to unwind 🌙")
- Favorites & recently done
- Simple stats: total minutes, sessions, current streak
- Apple Health / Google Fit integration (mindfulness minutes)

## Phase 5 — Monetization (Week 9)

- **Free tier:** a few routines per category + limited library
- **Limber Premium** (monthly / annual + free trial): full library, Create Your Own, adaptive recommendations, offline downloads
- Calm, value-focused paywall screen · RevenueCat integration · restore purchases

## Phase 6 — Polish & QA (Week 10)

- Dark mode (especially Sleep routines)
- Micro-interactions, ease-in-out everywhere
- Accessibility pass: large text, contrast, VoiceOver/TalkBack labels
- Performance: 60fps animations, fast cold start
- Offline mode testing

## Phase 7 — Launch (Weeks 11–12)

- App Store + Play Store listings (3+ / Everyone)
- Screenshots in brand palette with real routine screens
- ASO keywords: *stretching, mobility, flexibility, yoga, posture, back pain*
- Final app icon + preview video (a routine in action)
- Privacy policy + health disclaimer ("consult a doctor before starting…")
- TestFlight / internal test → soft launch → full release

---

## ✅ Recommended MVP Scope (fastest path to launch)

Ship v1.0 with:

- Daily Check-in (adaptive recommendation)
- Home + **5 core categories**: Wake Up, Posture Reset, Full Body, Sleep, Hips
- Player + Completion + Streaks
- Premium paywall

Defer to **v1.1**: Create Your Own, Expert, Hamstrings, Lower Back, Isometric, Health integrations.

---

## Timeline Overview

| Weeks | Phase |
|---|---|
| 1 | Foundation & decisions |
| 2 | Content model & pose library |
| 3–5 | Core screens (check-in, home, player) |
| 6–7 | Create Your Own |
| 8 | Engagement & retention |
| 9 | Monetization |
| 10 | Polish & QA |
| 11–12 | Launch |
