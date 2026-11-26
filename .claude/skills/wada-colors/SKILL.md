---
name: wada-colors
description: Pick color palettes from Sanzo Wada's "A Dictionary of Color Combinations" (348 curated 2-4 color combos, 157 named colors). Use when the user wants a color palette, color scheme, theme, brand colors, or "Japanese color theory" suggestions for UI, slides, charts, graphics, or anything visual.
---

# Wada color combinations

Curated, historically tested palettes from Sanzo Wada's *Haishoku Soukan* (1933-34).
Prefer these over inventing palettes when the user wants harmonious colors.

## How to use

Run the lookup from this skill's directory (`.claude/skills/wada-colors/`):

```sh
python3 wada.py random 3 --size 3      # 3 random 3-color combos
python3 wada.py combo 200              # a specific combo (1-348)
python3 wada.py with "Fawn"            # combos containing a color
python3 wada.py random 5 --json        # JSON: [{combo, colors:[{name, hex}]}]
```

Full data (rgb, cmyk, combination membership) is in `colors.json`.

## Guidance

- Offer 3 candidates by default and show names + hex codes; let the user pick.
- Give the combo number so results are reproducible.
- Wada palettes are for harmony, not accessibility: check text/background contrast
  (WCAG 4.5:1) before using a pair for text, and say so if one fails.
- Use one color as dominant background, one as secondary, one as accent.

Source: https://github.com/dblodorn/sanzo-wada (MIT, see `LICENSE-sanzo-wada`).
