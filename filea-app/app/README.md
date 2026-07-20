# Filea — daily stretch, yoga & mobility 🧘

Move better every day. Guided stretch & mobility routines that adapt to how you feel.
Age rating 3+ · Built with Flutter · Design docs live in the parent folder (`../BRAND_KIT.md`).

## Run it (2 commands)

You need the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed. Then from this folder:

```bash
flutter create . --org com.filea --project-name filea   # generates android/ios platform folders (first time only)
flutter run                                             # launches on your connected device/emulator
```

To build a release APK for Android: `flutter build apk --release`
For the Play Store: `flutter build appbundle --release`

## What's in the MVP

- **Daily Check-in** (the differentiator) — 3 taps (stiffness / energy / sleep) → recommended routine
- **Home** — greeting with the signature thread underline, check-in card, suggested routine, category grid, gentle stats
- **5 routines**: Wake Up · Posture Reset · Full Body · Sleep (auto dark mode 🌙) · Hips
- **Player** — pose art, cue text, mono countdown, thread progress line, previous/pause/skip
- **Completion** — gentle celebration, streak update, "How do you feel now?"
- **Library** — all routines with category accent threads
- **Streaks & stats** — stored locally (shared_preferences); missing a day resets kindly, same-day repeats don't double-count

## Project layout

```
lib/
├── main.dart                  # app entry, theme, progress service
├── theme/filea_theme.dart     # ALL design tokens (mirrors BRAND_KIT.md)
├── models/models.dart         # Pose, Routine, Category, CheckIn
├── data/library.dart          # routine & pose content (edit freely)
├── services/
│   ├── progress_service.dart  # streaks/sessions/minutes persistence
│   └── recommender.dart       # check-in → routine rules
├── widgets/one_line_figure.dart # placeholder "thread" pose art + progress bar
└── screens/                   # checkin, home, detail, player, completion, library
assets/images/                 # drop generated art here (see its README)
```

## Swapping in the real assets

Generate art with `../GEMINI_ASSET_PROMPTS.md` (Léa + Fil), drop files into
`assets/images/` per its README, then replace `OneLineFigure` usages with
`Image.asset('assets/images/pose_<id>.png')` in the Player/Detail screens.

## v1.1 roadmap (per ../BUILD_PLAN.md)

Create Your Own builder · Expert/Hamstrings/Lower Back/Isometric routines ·
reminders · Premium paywall (RevenueCat) · Health integrations · voice cues.
