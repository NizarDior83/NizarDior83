# 🧍‍♀️🐱 FILEA CHARACTERS — "Léa" & "Fil"

> Filea's guide duo. Companion docs: [BRAND_KIT.md](./BRAND_KIT.md) · Full PACT prompts: [GEMINI_ASSET_PROMPTS.md](./GEMINI_ASSET_PROMPTS.md)

---

## ⭐ CHARACTER 1 — "Léa" (primary guide)

| Element | Definition |
|---|---|
| **Name** | Léa (from Fi-*léa* — the brand carries her name) |
| **Who** | A petite adult woman in her mid-20s with an unmistakably cute, warm charm |
| **Role in app** | THE guide: demonstrates every stretch, welcomes you, celebrates with you |
| **Personality** | Warm, encouraging, serene, a touch playful — cute without being childish |
| **Age-rating fit** | 3+ : wholesome, modest sportswear, kind energy |

**Visual spec (identity lock — full PACT blueprint in GEMINI_ASSET_PROMPTS.md):**
- Petite (~155 cm), softly athletic, slightly stylized cute proportions (marginally larger head/eyes) while clearly an adult
- Soft rounded features, large friendly warm-brown eyes, rosy cheeks, small dimples
- Warm light-olive Mediterranean skin; dark chestnut hair in a small messy bun, two loose face-framing strands, **Soft Gold `#E8C468` scrunchie** (her signature)
- Wardrobe: modest Sage Green `#5B8A72` short-sleeve top, Deep Forest `#2F4F43` leggings, tiny mist ankle socks, Dusk Lilac `#9187B5` yoga mat
- Style: flat lineless vector, soft shadows, brand palette only — never photorealistic, never sexualized

**Signature expressions:** serene closed-eye calm (default) · joyful dimpled smile (celebrations) · soft focus (mid-stretch) · sleepy-cozy (Sleep mode) · playful wink (rare delight moments)

---

## 🐱 CHARACTER 2 — "Fil" the cat (companion)

Fil is Léa's cat — he appears *with* her (curled beside her child's pose, mimicking her Cat-Cow, celebrating at her feet) and solo in tiny mascot moments (empty states, notifications). He never replaces her as the demonstrator.

## 1. Concept (Fil)

| Element | Definition |
|---|---|
| **Name** | Fil (from *Fil*-ea — the thread/line the body follows) |
| **Species** | Cat — nature's stretching master; the "cat stretch" is universal |
| **Role in app** | Guide & companion: welcomes you, celebrates streaks, demonstrates calm |
| **Personality** | Serene, encouraging, a little sleepy-cozy, never loud |
| **Age-rating fit** | 3+ friendly: soft shapes, friendly face, zero edge |

**Division of labor with the illustration system:**
- **Léa** → demonstrates all stretches & poses, stars in onboarding, splash, celebrations, Sleep mode
- **Fil (the cat)** → companion beside Léa + solo mascot micro-moments: empty states, notification icon, loading
- **One-line thread figures** → minimal UI diagrams only (category tiles, tiny pose pictograms in lists)

## 2. Visual Specification

- **Body:** Rounded, slightly chubby cat built from soft continuous curves — visually echoes the one-line Filea logo mark
- **Color:** Sage green body `#5B8A72`, mist belly/muzzle `#EFF3EF`, deep forest `#2F4F43` for line accents (ears, tail tip)
- **Eyes:** Simple, calm — closed-happy arcs most of the time (matches the zen tone)
- **Details:** Warm dusk lilac `#9187B5` tiny nose; soft gold `#E8C468` collar-bell or star for celebration states
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
CHARACTER: a slightly chubby, serene cat built from soft continuous curves. Sage green body (#5B8A72), morning mist belly and muzzle (#EFF3EF), deep forest green (#2F4F43) inner ears and tail tip, tiny warm dusk lilac nose (#9187B5). Eyes are simple closed-happy arcs, gentle smile. Zen, cozy, friendly energy — like a cat mid-morning-stretch.
SHEET LAYOUT: full turnaround — front view, side view, back view, 3/4 view — plus 4 expression studies (serene, happy, sleepy, celebrating with tiny gold sparkles #E8C468).
MOOD: calm, warm, breathable — wellness app aesthetic, NOT energetic cartoon.
AVOID: realistic fur, hard outlines, aggressive expression, gradients, 3D render, photorealism.
--ar 16:9
```

## 5. POSE PROMPTS (generate after the sheet, reference the same character)

Append to each: *"Same character as the reference sheet: Fil, flat vector sage-green cat (#5B8A72) with mist belly, closed-happy eyes. Flat vector, lineless, soft shadow, transparent/white background, wellness app style, 3+ friendly."*

1. **Hero stretch:** "Fil doing a classic cat stretch — front paws extended forward, back arched, tail curled up happily, eyes closed in bliss"
2. **Sleep:** "Fil curled into a crescent, fully asleep, tiny 'zzz' in soft gold, deep indigo (#3A4A6B) night-sky accent behind"
3. **Celebration:** "Fil sitting upright with both paws raised, eyes closed happy, small soft-gold sparkles (#E8C468) around him"
4. **Welcome:** "Fil sitting calmly, one paw raised in a gentle wave, morning mist background circle (#EFF3EF)"
5. **Peeking:** "Fil peeking from the right edge of the frame, only head and one paw visible, curious calm expression"
6. **Balance:** "Fil standing on hind legs in a yoga tree pose, front paws together above head, perfectly serene"

## 6. CLAUDE DESIGN INTEGRATION

Add this line to the `<design_system>` block of both existing Claude Design prompts (or to a re-run):

```
<characters>
  Guide "Léa": a cute petite adult woman (mid-20s), flat lineless vector style — soft rounded features, large warm-brown eyes, rosy cheeks, dark chestnut messy bun with soft gold #E8C468 scrunchie, modest sage green #5B8A72 top and deep forest #2F4F43 leggings. She demonstrates all stretches and appears on onboarding, player, completion, and Sleep screens. Wholesome and 3+ friendly, never photorealistic.
  Mascot "Fil": her flat-vector calm cat, sage green #5B8A72 body, mist #EFF3EF belly, closed-happy arc eyes. Appears small beside Léa or solo in empty states — never demonstrates stretches.
</characters>
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
