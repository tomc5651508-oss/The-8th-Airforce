The 8th Airforce 1.6.1 - B-17E squadron for the Normandy and Bodenplatte careers
=======================================================================================

PRIVATE BUILD. The B-17E exterior, cockpit, turret guns, crew seating and skins are the Jungle Hawks WT build
parts. They contain War Thunder (Gaijin) derived assets. Do not upload or share this pack publicly.

WHAT IT DOES
- Replaces the Pe-2 ser.35 with the Jungle Hawks B-17E Flying Fortress (same swap as Jungle Hawks 2.5 WT):
  exterior, cockpit, 7 gun stations with crew, US bomb loads (AN-M57 / M64 / M65 on the FAB slots), skins,
  menu names, flight model figures (jhfm: 22,000 kg, R-1820-65 x4 thrust table).
  1.5: all gunner stations re-aligned to the stock gunner convention (calibrated on stock B-26, He 111, Li-2,
  Ju 88): turret files, gunner bots, figure files and aim poses (new JH_B17 Top/Ball/Nose/Tail/Radio keyframes);
  arms and torso follow the gun.
  1.6: crew inside the fuselage (JhCREW 23 Nov): waist, radio and ball gunner bodies no longer slide out with
  the sit/aim animation (body tracks hold the rest pose); waist gunners face their windows (left = mirror of
  right); tail gunner seated inside forward of the guns; nose gunner head under the glass; top gunner centred
  in the ring. Hands can leave the grips when a gun swings far from rest. Prop blur update
  from Jungle Hawks v2.6.10 on the exterior LOD0/LOD1.
  1.6.1: all four prop blur disks shown (blur vertices of engines 1, 3 and 4 were drawn on the bones of
  engines 2 and 1; now each engine's own).
- Adds the PLAYER squadron "324th Bombardment Squadron" (id 103801, country USA) to two careers
  (1.6: selectable in the career squadron list; it also flies as AI in other pilots' missions):
  Normandy (scg 22):    West Malling 15.04.1944 - 21.07.1944, Ibsley 22.07.1944 - 22.08.1944
  Bodenplatte (scg 18): Chievres 08.10.1944 - 01.04.1945
  Airfields, dates and flight counts are copied from the stock B-26 squadrons 556th BS (Normandy) and
  584th BS (Bodenplatte). The 8th Air Force B-17 bases in East Anglia are outside both maps, so the
  squadron uses these fields.
  Missions (day level bombing, flights of 6 B-17E): Bomb Troops, Bomb Enemy Airfield, Bomb Railway Junction,
  Bomb Supply Dump, Bomb Artillery (stock mission templates "day", Normandy from 06.06.1944 "dday-day").
  1.6 ships scg\Scripts\22/18planes-to-missions.cfg and 22/18planes-effectiveness.cfg = stock + the B-17E
  (Pe-2 ser.35) entries, and a squadron card with a drawn emblem (swf\il2\squadrons\103801).
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
- IL-2 Great Battles with Battle of Normandy and/or Battle of Bodenplatte, and the Pe-2 ser.35 (Battle of
  Moscow aircraft). To fly the squadron in a career you must own the Pe-2 ser.35.
- JSGME. The pack carries GB Mod Loader 1.5.0 (bin\game\winmm.dll + GBML.dll) with two plugins:
  planeint (mode=uniform: modified plane scripts, single player) and jhfm (B-17E figures only; every other
  aircraft keeps its stock flight model).

INSTALL
1. Copy the folder "The 8th Airforce" into <IL-2>\MODS.
2. Enable it in JSGME.
3. Start a NEW Normandy or Bodenplatte career, pick country USA, then the 324th Bombardment Squadron.
   Careers started before the pack was enabled keep their old squadron list.
Remove: disable in JSGME. Back up data\Career\cp.db before you remove the pack while a career runs.

DO NOT COMBINE WITH
- Jungle Hawks (any version): both packs write bin\game\gbml.ini, the Pe-2 ser.35 files and (JH) scg\22.
- Other mods that change scg\22 or scg\18 squadrons.cfg, skins.cfg, squadrons-codes.cfg, the career
  airfield files (locations\**\*.ldfbin) or scg\Scripts 22/18 planes-to-missions / planes-effectiveness.

KNOWN LIMITS
- Every Pe-2 ser.35 in the game becomes a B-17E, also in the Stalingrad, Moscow and Kuban careers and in QMB.
- The sound bank replaces the game's MasterBank.bank (JSGME backs the original up). A game update that changes
  the stock bank needs a rebuild of this pack; other sound mods that replace MasterBank.bank conflict.
- Flight altitude, bomb loads and fuel in the careers follow the Jungle Hawks B-17E rules for the Pe-2 ser.35 slot
  (planes-to-missions entries copied from Jungle Hawks); mission profiles are the stock day-bomber templates.
- The squadron card is new (id 103801 has no stock card); its emblem is a drawn badge, not a historical one.
- A game update that changes the Normandy or Bodenplatte squadron files needs a rebuild of this pack.
- Not flown in game before release of this build.

Files: SHA256.json lists every file with its hash. Build tools: D:\Steam\Il2Mods1946\scripts\eighth_af.
