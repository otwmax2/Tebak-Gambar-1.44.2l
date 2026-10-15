package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkr {
    static String a(zzgv zzgvVar) {
        zzku zzkuVar = new zzku(zzgvVar);
        StringBuilder sb = new StringBuilder(zzkuVar.zza());
        for (int i10 = 0; i10 < zzkuVar.zza(); i10++) {
            byte bH = zzkuVar.h(i10);
            if (bH == 34) {
                sb.append("\\\"");
            } else if (bH == 39) {
                sb.append("\\'");
            } else if (bH != 92) {
                switch (bH) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bH < 32 || bH > 126) {
                            sb.append('\\');
                            sb.append((char) (((bH >>> 6) & 3) + 48));
                            sb.append((char) (((bH >>> 3) & 7) + 48));
                            sb.append((char) ((bH & 7) + 48));
                        } else {
                            sb.append((char) bH);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
