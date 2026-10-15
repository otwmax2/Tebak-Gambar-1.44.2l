/** Fixed local allowlist, never a user-controlled filesystem path. */
export const SOUND_NAMES = [
  'blank_sound',
  'sound_benar',
  'sound_berhasil_nonton_iklan_2x',
  'sound_checkpoint',
  'sound_click',
  'sound_count_5s',
  'sound_count_score',
  'sound_extra_hint',
  'sound_gameover',
  'sound_salah',
  'sound_score_1',
] as const;
export function resolveSound(input: string): string | undefined {
  const name = input
    .trim()
    .toLowerCase()
    .replace(/\.ogg$/, '');
  if (!/^[a-z0-9_]+$/.test(name)) return undefined;
  return SOUND_NAMES.find((sound) => sound === name || sound === `sound_${name}`);
}
