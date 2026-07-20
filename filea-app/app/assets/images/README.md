# Filea assets drop zone

Generate the art with `../../GEMINI_ASSET_PROMPTS.md`, then drop the PNGs here
using these exact filenames — the app picks them up automatically where wired,
and the rest replace the CustomPaint placeholders in `lib/widgets/one_line_figure.dart`:

| File | Prompt | Used in |
|---|---|---|
| `lea_anchor.png` | Deliverable 1 | reference only |
| `splash_hero.png` | Scenario 2 | splash / check-in header |
| `onboarding_1.png` … `onboarding_3.png` | Scenarios 3–5 | onboarding |
| `pose_<id>.png` (e.g. `pose_neck_release.png`) | Scenario 6 | Player screen |
| `celebration.png` | Scenario 7 | Completion screen |
| `sleep_mode.png` | Scenario 8 | Sleep routines |
| `empty_state.png` | Scenario 9 | empty states |
| `app_icon.png` | Asset A | launcher icon (use flutter_launcher_icons) |

Until then the app renders brand-styled one-line placeholder figures.
