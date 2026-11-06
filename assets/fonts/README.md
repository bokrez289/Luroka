# Inter UI font

Inter by Rasmus Andersson and contributors, distributed under the SIL Open
Font License 1.1. The bundled font and license originate from:

https://github.com/google/fonts/tree/main/ofl/inter

Lumora uses Inter for application UI, with the existing Unicode fallbacks for
scripts Inter does not cover. Video subtitle styling remains independently
configurable.

`Inter-Variable.ttf` is the unmodified upstream source. Static UI weights
100–900 at optical size 14 are generated with:

```sh
python3 scripts/codegen/generate_ui_fonts.py
```

This requires `fonttools`. The generated faces are bundled by Flutter; the
variable source is retained for reproducibility and is not included in the APK.
