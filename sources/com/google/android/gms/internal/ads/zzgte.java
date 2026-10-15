package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgte {
    static String a(zzgpe zzgpeVar) {
        StringBuilder sb = new StringBuilder(zzgpeVar.o());
        for (int i10 = 0; i10 < zzgpeVar.o(); i10++) {
            byte bL = zzgpeVar.l(i10);
            if (bL == 34) {
                sb.append("\\\"");
            } else if (bL == 39) {
                sb.append("\\'");
            } else if (bL != 92) {
                switch (bL) {
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
                        if (bL < 32 || bL > 126) {
                            sb.append('\\');
                            sb.append((char) (((bL >>> 6) & 3) + 48));
                            sb.append((char) (((bL >>> 3) & 7) + 48));
                            sb.append((char) ((bL & 7) + 48));
                        } else {
                            sb.append((char) bL);
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
