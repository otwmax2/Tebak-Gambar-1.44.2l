package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaet {
    public byte[] N;
    public zzabc T;
    public boolean U;
    public zzabb X;
    public int Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f8638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f8639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8643f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8644g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f8645h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f8646i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public zzaba f8647j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f8648k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public zzx f8649l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8650m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8651n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8652o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f8653p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8654q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8655r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f8656s = 0.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f8657t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f8658u = 0.0f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public byte[] f8659v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f8660w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f8661x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f8662y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f8663z = -1;
    public int A = -1;
    public int B = 1000;
    public int C = 200;
    public float D = -1.0f;
    public float E = -1.0f;
    public float F = -1.0f;
    public float G = -1.0f;
    public float H = -1.0f;
    public float I = -1.0f;
    public float J = -1.0f;
    public float K = -1.0f;
    public float L = -1.0f;
    public float M = -1.0f;
    public int O = 1;
    public int P = -1;
    public int Q = 8000;
    public long R = 0;
    public long S = 0;
    public boolean V = true;
    private String W = "eng";

    protected zzaet() {
    }

    private static Pair f(zzen zzenVar) throws zzbu {
        try {
            zzenVar.g(16);
            long jY = zzenVar.y();
            if (jY == 1482049860) {
                return new Pair("video/divx", null);
            }
            if (jY == 859189832) {
                return new Pair("video/3gpp", null);
            }
            if (jY != 826496599) {
                zzee.e("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair("video/x-unknown", null);
            }
            int iK = zzenVar.k() + 20;
            byte[] bArrH = zzenVar.h();
            while (true) {
                int length = bArrH.length;
                if (iK >= length - 4) {
                    throw zzbu.a("Failed to find FourCC VC1 initialization data", null);
                }
                if (bArrH[iK] == 0 && bArrH[iK + 1] == 0 && bArrH[iK + 2] == 1 && bArrH[iK + 3] == 15) {
                    return new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArrH, iK, length)));
                }
                iK++;
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbu.a("Error parsing FourCC private data", null);
        }
    }

    private static List g(byte[] bArr) throws zzbu {
        int i10;
        int i11;
        try {
            if (bArr[0] != 2) {
                throw zzbu.a("Error parsing vorbis codec private", null);
            }
            int i12 = 1;
            int i13 = 0;
            while (true) {
                i10 = bArr[i12] & 255;
                if (i10 != 255) {
                    break;
                }
                i12++;
                i13 += 255;
            }
            int i14 = i13 + i10;
            int i15 = i12 + 1;
            int i16 = 0;
            while (true) {
                i11 = bArr[i15] & 255;
                if (i11 != 255) {
                    break;
                }
                i15++;
                i16 += 255;
            }
            int i17 = i15 + 1;
            int i18 = i16 + i11;
            if (bArr[i17] != 1) {
                throw zzbu.a("Error parsing vorbis codec private", null);
            }
            byte[] bArr2 = new byte[i14];
            System.arraycopy(bArr, i17, bArr2, 0, i14);
            int i19 = i17 + i14;
            if (bArr[i19] != 3) {
                throw zzbu.a("Error parsing vorbis codec private", null);
            }
            int i20 = i19 + i18;
            if (bArr[i20] != 5) {
                throw zzbu.a("Error parsing vorbis codec private", null);
            }
            int length = bArr.length - i20;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i20, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbu.a("Error parsing vorbis codec private", null);
        }
    }

    private static boolean h(zzen zzenVar) throws zzbu {
        try {
            int iQ = zzenVar.q();
            if (iQ == 1) {
                return true;
            }
            if (iQ == 65534) {
                zzenVar.f(24);
                if (zzenVar.z() == zzaeu.f8669h0.getMostSignificantBits()) {
                    if (zzenVar.z() == zzaeu.f8669h0.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbu.a("Error parsing MS/ACM codec private", null);
        }
    }

    @EnsuresNonNull({"codecPrivate"})
    private final byte[] i(String str) throws zzbu {
        byte[] bArr = this.f8648k;
        if (bArr != null) {
            return bArr;
        }
        throw zzbu.a("Missing CodecPrivate for codec ".concat(String.valueOf(str)), null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x05b6  */
    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"this.output"})
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"codecId"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(com.google.android.gms.internal.ads.zzzx r21, int r22) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instruction units count: 1732
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaet.e(com.google.android.gms.internal.ads.zzzx, int):void");
    }
}
