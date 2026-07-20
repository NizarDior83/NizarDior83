# 📱 Claude Design — Prompt 2: Filea Supporting Screens

> Paste this prompt into **claude.ai/design** AFTER Prompt 1, in the SAME project — the repeated design-system block keeps both generations visually consistent.
> Screens: Library · Sleep Routine Detail (Dark Mode) · Create Your Own · Premium Paywall
>
> ✅ When the visuals look right, export the **Claude Code handoff bundle (ZIP)** — it becomes the starting point for building the real Filea app.

---

```
Create a 4-screen UI mockup in Claude Design for "Filea", a calm daily stretch, yoga & mobility mobile app (3+). Match the precise visual style established in the first output. Rely on the provided <design_system> variables rather than generic defaults. High-fidelity, mobile-375 frames.

<design_system>
  <colors>
    <color role="brand.primary" hex="#5B8A72" intent="primary buttons, active states" />
    <color role="brand.primaryDeep" hex="#2F4F43" intent="headers, pressed states" />
    <color role="brand.accent" hex="#E08A5B" intent="highlights, Posture category" />
    <color role="brand.highlight" hex="#E8C468" intent="Wake Up category, premium badge" />
    <color role="bg.default" hex="#F7F4EF" intent="app background" />
    <color role="bg.surface" hex="#FFFFFF" intent="cards, sheets" />
    <color role="text.primary" hex="#2A2A28" intent="headings, body" />
    <color role="text.secondary" hex="#7C7A75" intent="captions" />
    <color role="ui.divider" hex="#E6E1D8" intent="dividers, borders" />
    <color role="dark.bg" hex="#151915" intent="Sleep screen dark background" />
    <color role="dark.surface" hex="#1F2620" intent="Sleep screen cards" />
    <color role="dark.primary" hex="#7FB299" intent="Sleep screen accents" />
    <color role="dark.text" hex="#EDEAE3" intent="Sleep screen text" />
  </colors>
  <typography>
    <font role="heading" family="Fraunces" weight="600" />
    <font role="body" family="Inter" weight="400" />
  </typography>
  <layout>
    <format>375px mobile</format>
    <spacing>20px screen padding, 16-20px corner radius, generous whitespace</spacing>
  </layout>
</design_system>

<screen name="Library" device="mobile-375">
  <elements>
    <element type="search-bar" placeholder="Search stretches & routines" />
    <element type="filter-chips" items="All, Hips, Back, Neck, Hamstrings, 5 min, Beginner" />
    <element type="list" label="Routine cards" items="⊕ Wake Up — 6 min · Beginner, ⊕ Full Body — 15 min · 20+ stretches, ⊕ Hamstrings — 9 min · Beginner, ⊕ Expert — 18 min · Advanced (🔒 Premium)" />
    <element type="tab-bar" items="Home, Library, My Routines, Profile" />
  </elements>
  <visual_instruction>Routine cards: white surface, small pose illustration left, name + duration + difficulty, category accent as a thin left border. Premium routines show a soft gold lock pill, never aggressive.</visual_instruction>
</screen>

<screen name="Sleep Routine Detail (Dark Mode)" device="mobile-375">
  <elements>
    <element type="heading">Sleep</element>
    <element type="text">Gentle long-hold stretches to unwind and de-stress for better sleep.</element>
    <element type="meta-row" items="12 min, 7 stretches, Gentle" />
    <element type="list" label="Pose list" items="Child's Pose — 90s, Supine Twist — 60s each side, Legs Up — 120s" />
    <element type="button" label="Begin winding down" style="primary, full-width" />
  </elements>
  <visual_instruction>THIS SCREEN IS DARK MODE: background #151915, cards #1F2620, sage-mint accents #7FB299, text #EDEAE3, subtle indigo #3A4A6B gradient at top. Moon-calm atmosphere.</visual_instruction>
</screen>

<screen name="Create Your Own" device="mobile-375">
  <elements>
    <element type="heading">Build your routine</element>
    <element type="input" label="Routine name" placeholder="My morning flow" />
    <element type="list" label="Selected poses (drag to reorder)" items="1. Cat-Cow — 45s, 2. Hip Flexor Lunge — 60s, 3. Hamstring Fold — 60s" />
    <element type="button" label="+ Add stretches from library" style="secondary" />
    <element type="text">Total: 2 min 45 s</element>
    <element type="button" label="Save routine" style="primary, full-width" />
  </elements>
  <visual_instruction>Each selected pose row: drag handle icon, small illustration, duration stepper. Clean editing feel, still warm and calm.</visual_instruction>
</screen>

<screen name="Premium Paywall" device="mobile-375">
  <elements>
    <element type="heading">Filea Premium</element>
    <element type="list" label="Benefits" items="Full routine library, Create your own routines, Adaptive daily recommendations, Offline downloads" />
    <element type="plan-cards" items="Annual — $39.99/yr (Best value), Monthly — $6.99/mo" />
    <element type="button" label="Start 7-day free trial" style="primary, full-width" />
    <element type="link" label="Restore purchases" />
  </elements>
  <visual_instruction>Value-focused and calm — no countdown timers or pressure tactics. Benefits with 2px line icons and sage checkmarks. Annual plan card highlighted with soft gold border.</visual_instruction>
</screen>

Visual voice: Calm, warm, minimal — a physiotherapist who is also a good friend. Gentle verbs, zero pressure.

<execution_rules>
1. Apply design system tokens exactly; no unapproved colors or fonts.
2. Screen 2 uses the dark tokens; all others use light tokens.
3. Minimum body text 16px, touch targets min 48px, WCAG AA contrast.
4. No abstract AI illustrations, no photos — flat faceless stretch figures and 2px rounded line icons only.
5. Rounded corners and soft shadows everywhere; no hard edges.
</execution_rules>

Generate the complete 4-screen UI mockup now.
```
