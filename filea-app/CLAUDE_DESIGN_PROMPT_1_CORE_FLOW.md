# 📱 Claude Design — Prompt 1: Filea Core Flow

> Paste this prompt as-is into **claude.ai/design**. Run this one FIRST.
> Screens: Daily Check-in · Home · Routine Player · Completion
>
> ⚠️ Claude Design is token-hungry — get the prompt right in one shot, avoid casual iteration.

---

```
Create a 4-screen UI mockup in Claude Design for "Filea", a calm daily stretch, yoga & mobility mobile app (age rating 3+). Generate high-fidelity mockups with the full design system applied, on mobile-375 device frames.

<goal>
High-fidelity mobile UI mockups of Filea's core daily flow, used to validate the visual direction before development. The output will be used for stakeholder review and as a Claude Code handoff reference.
</goal>

<target_audience>
Everyday people (not gym athletes) — office workers with stiff hips and backs, beginners intimidated by fitness apps, and evening users winding down. They want calm, zero-pressure guidance and one-tap simplicity.
</target_audience>

<design_system>
  <colors>
    <color role="brand.primary" hex="#5B8A72" intent="primary buttons, active states, brand moments" />
    <color role="brand.primaryDeep" hex="#2F4F43" intent="headers on light bg, pressed states" />
    <color role="brand.accent" hex="#9187B5" intent="highlights, streak flame, Posture category" />
    <color role="brand.highlight" hex="#E8C468" intent="Wake Up category, celebration moments" />
    <color role="bg.default" hex="#EFF3EF" intent="app background (morning mist)" />
    <color role="bg.surface" hex="#FFFFFF" intent="cards, sheets" />
    <color role="text.primary" hex="#22302B" intent="headings, body" />
    <color role="text.secondary" hex="#7C7A75" intent="captions, metadata" />
    <color role="ui.divider" hex="#DCE4DD" intent="dividers, card borders" />
    <color role="category.sleep" hex="#3A4A6B" intent="Sleep category accent" />
  </colors>
  <typography>
    <font role="heading" family="Bricolage Grotesque" weight="600" />
    <font role="body" family="Karla" weight="400" />
    <font role="timer" family="Spline Sans Mono" weight="500" />
  </typography>
  <layout>
    <format>375px mobile, iOS-style safe areas</format>
    <spacing>20px screen padding, 16px card gaps, 16-20px card corner radius, generous whitespace</spacing>
  </layout>
</design_system>

<screen name="Daily Check-in" device="mobile-375">
  <elements>
    <element type="heading">How do you feel today?</element>
    <element type="chip-group" label="Stiffness" options="Loose, A little stiff, Very stiff" />
    <element type="chip-group" label="Energy" options="Low, Okay, Energized" />
    <element type="chip-group" label="Sleep" options="Poor, Fine, Great" />
    <element type="button" label="Find my routine" style="primary, full-width" />
  </elements>
  <visual_instruction>Warm mist background. Bricolage Grotesque heading top-left. Selectable pill chips — selected state filled sage green, unselected white with mist border. Calm, airy spacing.</visual_instruction>
</screen>

<screen name="Home" device="mobile-375">
  <elements>
    <element type="text">Good morning, Nizar 🌿</element>
    <element type="card" label="Today for you: Posture Reset — 8 min · 9 stretches" style="hero card with dusk lilac accent and Start button" />
    <element type="grid" label="Categories" items="⊕ Wake Up, ⊕ Posture Reset, ⊕ Full Body, ⊕ Sleep, ⊕ Hips, ⊕ Lower Back" />
    <element type="streak-bar" label="4-day streak" />
    <element type="tab-bar" items="Home, Library, My Routines, Profile" />
  </elements>
  <visual_instruction>Hero recommendation card on white surface with soft shadow and a small one-line illustration of a seated stretch. Category grid: 2 columns, each tile tinted with its category accent color at 12% opacity, ⊕ symbol as tag. Gentle streak indicator with soft gold dots, not aggressive gamification.</visual_instruction>
</screen>

<screen name="Routine Player" device="mobile-375">
  <elements>
    <element type="illustration" placeholder="Large illustration of Léa — a cute petite adult woman guide (flat lineless vector, dark chestnut bun with gold scrunchie, sage green top, deep forest leggings) demonstrating a seated neck stretch, centered" />
    <element type="heading">Neck Release</element>
    <element type="timer" label="0:24" style="large tabular countdown" />
    <element type="progress-bar" label="Stretch 3 of 9" />
    <element type="text">Next: Shoulder Rolls</element>
    <element type="button-row" items="Previous, Pause (large center), Skip" />
  </elements>
  <visual_instruction>Full-screen calm layout, mist background, illustration takes upper 50%. Timer in Bricolage Grotesque-scale prominence but Spline Sans Mono digits. Thin sage progress bar under the timer. Rounded soft controls. This is the hero screen — make it feel like a breath.</visual_instruction>
</screen>

<screen name="Completion" device="mobile-375">
  <elements>
    <element type="illustration" placeholder="Léa (same cute petite guide) with arms raised in soft celebration, small cat companion at her feet, soft gold radiating arcs" />
    <element type="heading">Nicely done 🌿</element>
    <element type="stats-row" items="8 min, 9 stretches, 5-day streak" />
    <element type="chip-group" label="How do you feel now?" options="Looser, Same, Amazing" />
    <element type="button" label="Done" style="primary, full-width" />
  </elements>
  <visual_instruction>Celebration is gentle, not confetti-explosive: soft gold arcs, warm tones. Stats as three minimal tiles with mist dividers.</visual_instruction>
</screen>

Visual voice: Calm, warm, minimal — like a physiotherapist who is also a good friend. Write copy in warm second person with gentle verbs (ease, release, unwind). Avoid hustle-fitness energy, aggressive gamification, and corporate buzzwords.

<execution_rules>
1. Apply design system tokens exactly. Do not introduce unapproved colors, fonts, or visual elements.
2. All screens 375px mobile width with consistent status bar and safe areas.
3. Minimum body text 16px; large touch targets (min 48px) — this is a 3+ accessible app.
4. Do not generate abstract AI illustrations or photos. Use simple one-line human figures (single continuous stroke) mid-stretch and 2px rounded line icons only.
5. Ensure all text meets WCAG AA contrast against its background.
6. Ease-in-out softness in every visual detail: rounded corners, soft shadows, no hard edges.
</execution_rules>

Generate the complete 4-screen UI mockup now.
```
