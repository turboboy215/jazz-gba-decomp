# Boot sequence and front end

What the game shows from power-on to the main menu, as observed by the user on hardware/emulator
(ground truth), with the code that does each step. Function names are in `names.txt`.

| # | On screen (observed) | Code |
|---|---|---|
| 0 | | `AgbMain` `08312BF8`: `__main`, init (`083126F0`, `08315158`), `GAX2_init` with song `0835F2E4` (**spacelevel**), music/fx volume from the settings (`030059B4`/`030059B8`), VBlank handler `0300087D` (IWRAM) |
| 1 | Splash screen: "legal" text on black, ending with "LICENSED BY NINTENDO"; **spacelevel** music | `Boot_LegalScreen` `08312730` (strings `083DF104`… "Epic, Epic Games, and Jazz Jackrabbit are Registered trademarks…", "*2002 Jaleco Entertainment.", … "Licensed by Nintendo"; the font prints it in capitals) |
| 2 | Purple Jaleco logo | `Boot_LogoScreens` `08312864` (three resource-bank screens, each faded in and out with `Fade_Start`/`Fade_IsBusy`; keys can skip) |
| 3 | Epic Games logo on black | `Boot_LogoScreens` (2nd screen) |
| 4 | Animated Game Titan / Shin'en logo, "DEVELOPED BY" / "MUSIC + SOUND BY" (part of the graphics), blue gradient | `Boot_LogoScreens` (3rd screen; `Bg_UpdateScroll` calls = the animation/gradient?) |
| 5 | Title: light blue background, BG image of Jazz, large title logo that "zooms out" after a few seconds | `Title_Init` `0830A638` (BG layers + 11 `Sprite`s for the logo), then the frame loop `Scene_WaitFrame` `0830A06C` |
| 6 | Menu with 4 options (NEW GAME, CONTINUE, SETTINGS, TOURNAMENT); selecting plays a "swish" sound | `Menu_DrawFrame` `0830A3B4` (`GAX_fx` = the swish, "@Select" / "%Back" footer), `MainMenu` `0830AAA8` |
| 7 | "New game" → "SELECT A SAVE FILE" with three files and a B-button icon with "BACK" | `MainMenu` (strings `083DB3A0` " NEW GAME ", `083DB428` " SELECT A SAVE FILE ", `083DB384` " %Back"; `%` is the B-button glyph, `@` the A-button glyph) |

The four main-menu options are NEW GAME, CONTINUE, SETTINGS and TOURNAMENT (the strings `MainMenu`
references, confirmed by the user; `CONTINUE` leads to " SELECT A FILE TO LOAD ").

The logo order Jaleco → Epic Games → Game Titan/Shin'en is confirmed by the user, so the three
screens in `Boot_LogoScreens` run in that order.

Open question: which GAX fx number the menu swish is.
