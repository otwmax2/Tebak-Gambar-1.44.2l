package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"InlinedApi"})
public final class zzrp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f20562a = Pattern.compile("^\\D?(\\d+)$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap f20563b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f20564c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f20565d = 0;

    public static int a() throws zzrj {
        int i10;
        int iMax = f20564c;
        if (iMax == -1) {
            zzqx zzqxVarC = c("video/avc", false, false);
            if (zzqxVarC != null) {
                int iMax2 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzqxVarC.h()) {
                    int i11 = codecProfileLevel.level;
                    if (i11 != 1 && i11 != 2) {
                        switch (i11) {
                            case 8:
                            case 16:
                            case 32:
                                i10 = 101376;
                                break;
                            case 64:
                                i10 = 202752;
                                break;
                            case 128:
                            case 256:
                                i10 = 414720;
                                break;
                            case 512:
                                i10 = 921600;
                                break;
                            case 1024:
                                i10 = 1310720;
                                break;
                            case 2048:
                            case 4096:
                                i10 = 2097152;
                                break;
                            case Utility.DEFAULT_STREAM_BUFFER_SIZE /* 8192 */:
                                i10 = 2228224;
                                break;
                            case 16384:
                                i10 = 5652480;
                                break;
                            case 32768:
                            case NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST /* 65536 */:
                                i10 = 9437184;
                                break;
                            case 131072:
                            case 262144:
                            case 524288:
                                i10 = 35651584;
                                break;
                            default:
                                i10 = -1;
                                break;
                        }
                    } else {
                        i10 = 25344;
                    }
                    iMax2 = Math.max(i10, iMax2);
                }
                iMax = Math.max(iMax2, zzew.f17494a >= 21 ? 345600 : 172800);
            } else {
                iMax = 0;
            }
            f20564c = iMax;
        }
        return iMax;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02c5 A[Catch: NumberFormatException -> 0x02d5, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x02d5, blocks: (B:148:0x026a, B:150:0x027c, B:161:0x0298, B:177:0x02c5), top: B:487:0x026a }] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x055a  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0610  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair b(com.google.android.gms.internal.ads.zzaf r17) {
        /*
            Method dump skipped, instruction units count: 2536
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrp.b(com.google.android.gms.internal.ads.zzaf):android.util.Pair");
    }

    public static zzqx c(String str, boolean z10, boolean z11) throws zzrj {
        List listF = f(str, false, false);
        if (listF.isEmpty()) {
            return null;
        }
        return (zzqx) listF.get(0);
    }

    public static zzqx d() throws zzrj {
        return c("audio/raw", false, false);
    }

    public static String e(zzaf zzafVar) {
        Pair pairB;
        if ("audio/eac3-joc".equals(zzafVar.f8731l)) {
            return "audio/eac3";
        }
        if (!"video/dolby-vision".equals(zzafVar.f8731l) || (pairB = b(zzafVar)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairB.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return "video/hevc";
        }
        if (iIntValue == 512) {
            return "video/avc";
        }
        return null;
    }

    public static synchronized List f(String str, boolean z10, boolean z11) throws zzrj {
        zzrh zzrhVar = new zzrh(str, z10, z11);
        HashMap map = f20563b;
        List list = (List) map.get(zzrhVar);
        if (list != null) {
            return list;
        }
        int i10 = zzew.f17494a;
        ArrayList arrayListH = h(zzrhVar, i10 >= 21 ? new zzrn(z10, z11) : new zzrm(null));
        if (z10 && arrayListH.isEmpty() && i10 >= 21 && i10 <= 23) {
            arrayListH = h(zzrhVar, new zzrm(null));
            if (!arrayListH.isEmpty()) {
                zzee.e("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((zzqx) arrayListH.get(0)).f20512a);
            }
        }
        if ("audio/raw".equals(str)) {
            if (i10 < 26 && zzew.f17495b.equals("R9") && arrayListH.size() == 1 && ((zzqx) arrayListH.get(0)).f20512a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                arrayListH.add(zzqx.c("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            i(arrayListH, new zzro() { // from class: com.google.android.gms.internal.ads.zzrf
                @Override // com.google.android.gms.internal.ads.zzro
                public final int a(Object obj) {
                    int i11 = zzrp.f20565d;
                    String str2 = ((zzqx) obj).f20512a;
                    if (str2.startsWith("OMX.google") || str2.startsWith("c2.android")) {
                        return 1;
                    }
                    return (zzew.f17494a >= 26 || !str2.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
                }
            });
        }
        if (i10 < 21 && arrayListH.size() > 1) {
            String str2 = ((zzqx) arrayListH.get(0)).f20512a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                i(arrayListH, new zzro() { // from class: com.google.android.gms.internal.ads.zzrg
                    @Override // com.google.android.gms.internal.ads.zzro
                    public final int a(Object obj) {
                        int i11 = zzrp.f20565d;
                        return ((zzqx) obj).f20512a.startsWith("OMX.google") ? 1 : 0;
                    }
                });
            }
        }
        if (i10 < 32 && arrayListH.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzqx) arrayListH.get(0)).f20512a)) {
            arrayListH.add((zzqx) arrayListH.remove(0));
        }
        zzfqk zzfqkVarS = zzfqk.s(arrayListH);
        map.put(zzrhVar, zzfqkVarS);
        return zzfqkVarS;
    }

    public static List g(List list, final zzaf zzafVar) {
        ArrayList arrayList = new ArrayList(list);
        i(arrayList, new zzro() { // from class: com.google.android.gms.internal.ads.zzrd
            @Override // com.google.android.gms.internal.ads.zzro
            public final int a(Object obj) {
                zzaf zzafVar2 = zzafVar;
                int i10 = zzrp.f20565d;
                return ((zzqx) obj).d(zzafVar2) ? 1 : 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01e7 A[Catch: Exception -> 0x029e, TryCatch #1 {Exception -> 0x029e, blocks: (B:115:0x01b6, B:121:0x01cd, B:127:0x01e1, B:129:0x01e7, B:134:0x01f9, B:136:0x0201, B:146:0x022b, B:137:0x0206, B:139:0x0216, B:141:0x021e, B:130:0x01ee), top: B:188:0x01b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01ee A[Catch: Exception -> 0x029e, TryCatch #1 {Exception -> 0x029e, blocks: (B:115:0x01b6, B:121:0x01cd, B:127:0x01e1, B:129:0x01e7, B:134:0x01f9, B:136:0x0201, B:146:0x022b, B:137:0x0206, B:139:0x0216, B:141:0x021e, B:130:0x01ee), top: B:188:0x01b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0201 A[Catch: Exception -> 0x029e, TryCatch #1 {Exception -> 0x029e, blocks: (B:115:0x01b6, B:121:0x01cd, B:127:0x01e1, B:129:0x01e7, B:134:0x01f9, B:136:0x0201, B:146:0x022b, B:137:0x0206, B:139:0x0216, B:141:0x021e, B:130:0x01ee), top: B:188:0x01b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0206 A[Catch: Exception -> 0x029e, TryCatch #1 {Exception -> 0x029e, blocks: (B:115:0x01b6, B:121:0x01cd, B:127:0x01e1, B:129:0x01e7, B:134:0x01f9, B:136:0x0201, B:146:0x022b, B:137:0x0206, B:139:0x0216, B:141:0x021e, B:130:0x01ee), top: B:188:0x01b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02b0 A[Catch: Exception -> 0x02ff, TRY_ENTER, TryCatch #0 {Exception -> 0x02ff, blocks: (B:3:0x0008, B:5:0x001c, B:7:0x0026, B:10:0x0034, B:14:0x0042, B:18:0x004c, B:20:0x0054, B:22:0x005c, B:24:0x0064, B:26:0x006c, B:28:0x0074, B:32:0x0082, B:34:0x008a, B:36:0x0092, B:38:0x009a, B:40:0x00a4, B:42:0x00ac, B:44:0x00b4, B:46:0x00bc, B:48:0x00c4, B:50:0x00cc, B:52:0x00d4, B:56:0x00e2, B:58:0x00ea, B:60:0x00f2, B:62:0x00fc, B:64:0x0104, B:66:0x010a, B:68:0x0112, B:71:0x011c, B:73:0x0124, B:77:0x0130, B:79:0x0138, B:81:0x0140, B:83:0x0148, B:172:0x02a8, B:175:0x02b0, B:177:0x02b6, B:178:0x02d0, B:179:0x02f3, B:86:0x0151, B:87:0x0154, B:89:0x015c, B:92:0x0167, B:94:0x016f, B:97:0x017a, B:99:0x0182, B:102:0x018d, B:104:0x0195, B:107:0x01a0, B:109:0x01a8), top: B:186:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0231 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02d0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.ArrayList h(com.google.android.gms.internal.ads.zzrh r27, com.google.android.gms.internal.ads.zzrk r28) throws com.google.android.gms.internal.ads.zzrj {
        /*
            Method dump skipped, instruction units count: 777
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrp.h(com.google.android.gms.internal.ads.zzrh, com.google.android.gms.internal.ads.zzrk):java.util.ArrayList");
    }

    private static void i(List list, final zzro zzroVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzre
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                zzro zzroVar2 = zzroVar;
                int i10 = zzrp.f20565d;
                return zzroVar2.a(obj2) - zzroVar2.a(obj);
            }
        });
    }

    private static boolean j(MediaCodecInfo mediaCodecInfo, String str) {
        if (zzew.f17494a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (zzbt.g(str)) {
            return true;
        }
        String strA = zzfnb.a(mediaCodecInfo.getName());
        if (strA.startsWith("arc.")) {
            return false;
        }
        if (strA.startsWith("omx.google.") || strA.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strA.startsWith("omx.sec.") && strA.contains(".sw.")) || strA.equals("omx.qcom.video.decoder.hevcswvdec") || strA.startsWith("c2.android.") || strA.startsWith("c2.google.")) {
            return true;
        }
        return (strA.startsWith("omx.") || strA.startsWith("c2.")) ? false : true;
    }
}
