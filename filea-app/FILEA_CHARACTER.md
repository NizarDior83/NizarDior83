# 🐱 FILEA CHARACTER — "Fil" the Stretching Cat

> Filea's mascot & guide. Companion docs: [BRAND_KIT.md](./BRAND_KIT.md)

---

## 1. Concept

| Element | Definition |
|---|---|
| **Name** | Fil (from *Fil*-ea — the thread/line the body follows) |
| **Species** | Cat — nature's stretching master; the "cat stretch" is universal |
| **Role in app** | Guide & companion: welcomes you, celebrates streaks, demonstrates calm |
| **Personality** | Serene, encouraging, a little sleepy-cozy, never loud |
| **Age-rating fit** | 3+ friendly: soft shapes, friendly face, zero edge |

**Division of labor with the illustration system:**
- **Fil (the cat)** → mascot moments: onboarding, empty states, streak celebrations, notifications icon, loading, Sleep mode companion
- **Flat faceless human figures** → actual stretch/pose demonstrations (accuracy matters there)

## 2. Visual Specification

- **Body:** Rounded, slightly chubby cat built from soft continuous curves — visually echoes the one-line Filea logo mark
- **Color:** Sage green body `#5B8A72`, cream belly/muzzle `#F7F4EF`, deep forest `#2F4F43` for line accents (ears, tail tip)
- **Eyes:** Simple, calm — closed-happy arcs most of the time (matches the zen tone)
- **Details:** Warm terracotta `#E08A5B` tiny nose; soft gold `#E8C468` collar-bell or star for celebration states
- **Style:** Flat vector illustration, 2px rounded outlines or lineless flat, soft shadows only — must sit beside the app UI without clashing
- **Never:** realistic fur, hard edges, angry/scared expressions, photorealism

## 3. Signature Poses (asset list)

| Pose | Used for |
|---|---|
| Classic cat stretch (front paws forward, back arched down) | Splash / hero / app icon alternate |
| Sitting upright, eyes closed, slight smile | Onboarding, default guide |
| Curled up sleeping (crescent shape) | Sleep category, night reminders |
| Paws up celebrating with soft gold sparkles | Streaks, completion |
| Upside-down twisted stretch, playful | Create Your Own, Expert |
| Peeking from screen edge | Empty states, tips |
| Waving one paw | Welcome / goodbye, notifications |
| Balancing in "tree pose" on hind legs | Isometric / balance routines |

---

## 4. MASTER PROMPT — Character Sheet (image generator)

Use in Midjourney / DALL-E / Gemini image gen to create the reference sheet:

```
Character design sheet for "Fil", a calm mascot cat for a stretching & yoga mobile app.
STYLE: flat vector illustration, minimal, soft rounded shapes, lineless flat design with subtle soft shadows, children-friendly (3+), modern app mascot style, clean white background, professional character sheet layout.
CHARACTER: a slightly chubby, serene cat built from soft continuous curves. Sage green body (#5B8A72), warm cream belly and muzzle (#F7F4EF), deep forest green (#2F4F43) inner ears and tail tip, tiny warm terracotta nose (#E08A5B). Eyes are simple closed-happy arcs, gentle smile. Zen, cozy, friendly energy — like a cat mid-morning-stretch.
SHEET LAYOUT: full turnaround — front view, side view, back view, 3/4 view — plus 4 expression studies (serene, happy, sleepy, celebrating with tiny gold sparkles #E8C468).
MOOD: calm, warm, breathable — wellness app aesthetic, NOT energetic cartoon.
AVOID: realistic fur, hard outlines, aggressive expression, gradients, 3D render, photorealism.
--ar 16:9
```

## 5. POSE PROMPTS (generate after the sheet, reference the same character)

Append to each: *"Same character as the reference sheet: Fil, flat vector sage-green cat (#5B8A72) with cream belly, closed-happy eyes. Flat vector, lineless, soft shadow, transparent/white background, wellness app style, 3+ friendly."*

1. **Hero stretch:** "Fil doing a classic cat stretch — front paws extended forward, back arched, tail curled up happily, eyes closed in bliss"
2. **Sleep:** "Fil curled into a crescent, fully asleep, tiny 'zzz' in soft gold, deep indigo (#3A4A6B) night-sky accent behind"
3. **Celebration:** "Fil sitting upright with both paws raised, eyes closed happy, small soft-gold sparkles (#E8C468) around him"
4. **Welcome:** "Fil sitting calmly, one paw raised in a gentle wave, warm cream background circle (#F7F4EF)"
5. **Peeking:** "Fil peeking from the right edge of the frame, only head and one paw visible, curious calm expression"
6. **Balance:** "Fil standing on hind legs in a yoga tree pose, front paws together above head, perfectly serene"

## 6. CLAUDE DESIGN INTEGRATION

Add this line to the `<design_system>` block of both existing Claude Design prompts (or to a re-run):

```
<mascot>
  App mascot "Fil": a flat-vector calm cat, sage green #5B8A72 body, cream #F7F4EF belly, closed-happy arc eyes, terracotta #E08A5B nose. Appears ONLY in: onboarding greeting, empty states, streak celebration on Completion screen, and Sleep screens (curled asleep). Human pose demonstrations remain faceless flat human figures — the cat never demonstrates the stretches.
</mascot>
```

And add to `<execution_rules>`:
```
7. Include the mascot cat "Fil" only where specified; keep him small and secondary to content — a companion, not a clown.
```

## 7. Usage Rules

1. Fil is a **companion, not a clown** — small, secondary to content, never blocking UI
2. Max one Fil appearance per screen
3. Fil never demonstrates stretches (humans do) — he *embodies the feeling* of being limber
4. Celebration = soft sparkles, never confetti explosions
5. In dark/Sleep mode, use the sleeping crescent Fil with `#7FB299` accents
6. App icon remains the line mark; Fil can star in store screenshots & onboarding
