The 8th Airforce 1.5 - B-17E squadron for the Normandy and Bodenplatte careers
=====================================================================================

PRIVATE BUILD. The B-17E exterior, cockpit, turret guns, crew seating and skins are the Jungle Hawks WT build
parts. They contain War Thunder (Gaijin) derived assets. Do not upload or share this pack publicly.

WHAT IT DOES
- Replaces the Pe-2 ser.35 with the Jungle Hawks B-17E Flying Fortress (same swap as Jungle Hawks 2.5 WT):
  exterior, cockpit, 7 gun stations with crew, US bomb loads (AN-M57 / M64 / M65 on the FAB slots), skins,
  menu names, flight model figures (jhfm: 22,000 kg, R-1820-65 x4 thrust table).
  1.5: all gunner stations re-aligned to the stock gunner convention (calibrated on stock B-26, He 111, Li-2,
  Ju 88): turret files, gunner bots, figure files and aim poses (new JH_B17 Top/Ball/Nose/Tail/Radio keyframes);
  arms and torso follow the gun. Prop blur update
  from Jungle Hawks v2.6.10 on the exterior LOD0/LOD1.
- Adds the AI squadron "324th Bombardment Squadron" (id 103801, country USA) to two careers:
  Normandy (scg 22):    West Malling 15.04.1944 - 21.07.1944, Ibsley 22.07.1944 - 22.08.1944
  Bodenplatte (scg 18): Chievres 08.10.1944 - 01.04.1945
  Airfields, dates and flight counts are copied from the stock B-26 squadrons 556th BS (Normandy) and
  584th BS (Bodenplatte). The 8th Air Force B-17 bases in East Anglia are outside both maps, so the
  squadron uses these fields. AI squadron only (not a player squadron).
- B-17E engine sounds: VSM v7.5 Wright R-1820 samples in cloned copies of the Pe-2 ser.35 engine, start-up,
  starter and engine-damage events (data\Audio\MasterBank.bank = stock 20 May 2026 bank + those clones;
  every stock event unchanged).
- Nose art: 22 pictures from B-17 Flying Fortress: The Mighty 8th Redux, as tactical-code character 4 on both
  nose sides. Tail code = characters 1-3 (squadron code DF + aircraft letter). In the hangar, pick the 4th
  tactical-code character to choose the nose art, '*' = none. Each 324th BS aircraft in the careers carries
  its own nose art. Pictures by character:
  ! All American   # Baby Boomer   $ Big Bad Wulf   % Blonde Bombshell   & Bomb Girl   ' Feather Merchant
  ( Froggy   ) Hatchet Hannah   + Hellzapoppin   . Maximum Effort   / Mighty Mouse   : Old Mother B
  ; Ship of the Desert   < Skunker   = Superstitious Aloysius   > Target for Tonight   ? The Burro
  @ The Crew   [ The Ogres   ] Thunder Chief   ^ Uncle Sam   _ Worry Bird
  The decal sheet is white-keyed like the stock code sheets; the game tints it with the code colour. Colour 0
  is set for the nose art; if the pictures show tinted, pick another code colour in the hangar.
- Squadron skin: JH_B17E_Late_WT (plain olive drab, star and bar) on every 324th BS aircraft; the jungle camo
  skin (41-2504) stays in the hangar list only.
- Works without Jungle Hawks.

REQUIREMENTS
- IL-2 Great Battles with Battle of Stalingrad (the Pe-2 ser.35 host), Battle of Normandy and/or
  Battle of Bodenplatte.
- JSGME. The pack carries GB Mod Loader 1.5.0 (bin\game\winmm.dll + GBML.dll) with two plugins:
  planeint (mode=uniform: modified plane scripts, single player) and jhfm (B-17E figures only; every other
  aircraft keeps its stock flight model).

INSTALL
1. Copy the folder "The 8th Airforce" into <IL-2>\MODS.
2. Enable it in JSGME.
3. Start a NEW Normandy or Bodenplatte career. Careers started before the pack was enabled keep their
   old squadron list.
Remove: disable in JSGME. Back up data\Career\cp.db before you remove the pack while a career runs.

DO NOT COMBINE WITH
- Jungle Hawks (any version): both packs write bin\game\gbml.ini, the Pe-2 ser.35 files and (JH) scg\22.
- Other mods that change scg\22 or scg\18 squadrons2.cfg, skins.cfg, squadrons-codes.cfg or the career
  airfield files (locations\**\*.ldfbin).

KNOWN LIMITS
- Every Pe-2 ser.35 in the game becomes a B-17E, also in the Stalingrad, Moscow and Kuban careers and in QMB.
- The sound bank replaces the game's MasterBank.bank (JSGME backs the original up). A game update that changes
  the stock bank needs a rebuild of this pack; other sound mods that replace MasterBank.bank conflict.
- AI flight altitude and AI bomb loads come from the stock career rules for the Pe-2 ser.35 slot.
- A game update that changes the Normandy or Bodenplatte squadron files needs a rebuild of this pack.
- Not flown in game before release of this build.

Files: SHA256.json lists every file with its hash. Build tools: D:\Steam\Il2Mods1946\scripts\eighth_af.
