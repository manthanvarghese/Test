#!/usr/bin/env python3
"""Lookup helper for Sanzo Wada's "A Dictionary of Color Combinations".

  python3 wada.py combo 18            # one combination by number (1-348)
  python3 wada.py random [N] [--size K]  # N random combos, optionally K colors each
  python3 wada.py with "Fawn"         # all combos containing a color
Add --json anywhere to get machine-readable output.
"""
import json, random, sys, collections, pathlib

COLORS = json.load(open(pathlib.Path(__file__).with_name("colors.json")))["colors"]
COMBOS = collections.defaultdict(list)
for c in COLORS:
    for n in c["combinations"]:
        COMBOS[n].append(c)

JSON = "--json" in sys.argv
OUT = []

def show(n):
    if JSON:
        return OUT.append({"combo": n, "colors": [{"name": c["name"], "hex": c["hex"]} for c in COMBOS[n]]})
    print(f"#{n}: " + "  ".join(f"{c['name']} {c['hex']}" for c in COMBOS[n]))

def main(a):
    a = [x for x in a if x != "--json"]
    if not a: return print(__doc__)
    cmd = a[0]
    if cmd == "combo": show(int(a[1]))
    elif cmd == "random":
        nums = [x for x in a[1:] if x.isdigit()]
        k = int(a[a.index("--size") + 1]) if "--size" in a else None
        pool = [n for n in COMBOS if k is None or len(COMBOS[n]) == k]
        for n in random.sample(pool, int(nums[0]) if nums else 3): show(n)
    elif cmd == "with":
        q = " ".join(a[1:]).lower()
        for n in sorted(COMBOS):
            if any(c["name"].lower() == q for c in COMBOS[n]): show(n)

main(sys.argv[1:])
if JSON: print(json.dumps(OUT, indent=1))
