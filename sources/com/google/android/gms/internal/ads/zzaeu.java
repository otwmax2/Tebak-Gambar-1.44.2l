package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaeu implements zzzu {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final zzaab f8664c0 = new zzaab() { // from class: com.google.android.gms.internal.ads.zzaeq
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzaeu.f8664c0;
            return new zzzu[]{new zzaeu(0)};
        }
    };

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final byte[] f8665d0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final byte[] f8666e0 = zzew.C("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final byte[] f8667f0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final byte[] f8668g0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final UUID f8669h0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final Map f8670i0;
    private long A;
    private long B;
    private zzef C;
    private zzef D;
    private boolean E;
    private boolean F;
    private int G;
    private long H;
    private long I;
    private int J;
    private int K;
    private int[] L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private byte Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaep f8671a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f8672a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaew f8673b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private zzzx f8674b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseArray f8675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f8676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzen f8677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzen f8678f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzen f8679g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzen f8680h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzen f8681i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzen f8682j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzen f8683k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzen f8684l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzen f8685m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzen f8686n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ByteBuffer f8687o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f8688p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f8689q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f8690r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f8691s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f8692t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zzaet f8693u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f8694v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f8695w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f8696x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f8697y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f8698z;

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        f8670i0 = Collections.unmodifiableMap(map);
    }

    public zzaeu() {
        this(0);
    }

    protected static final int n(int i10) {
        switch (i10) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    protected static final boolean o(int i10) {
        return i10 == 357149030 || i10 == 524531317 || i10 == 475249515 || i10 == 374648427;
    }

    @RequiresNonNull({"#2.output"})
    private final int p(zzzv zzzvVar, zzaet zzaetVar, int i10, boolean z10) throws IOException {
        int i11;
        if ("S_TEXT/UTF8".equals(zzaetVar.f8639b)) {
            x(zzzvVar, f8665d0, i10);
            int i12 = this.T;
            w();
            return i12;
        }
        if ("S_TEXT/ASS".equals(zzaetVar.f8639b)) {
            x(zzzvVar, f8667f0, i10);
            int i13 = this.T;
            w();
            return i13;
        }
        if ("S_TEXT/WEBVTT".equals(zzaetVar.f8639b)) {
            x(zzzvVar, f8668g0, i10);
            int i14 = this.T;
            w();
            return i14;
        }
        zzabb zzabbVar = zzaetVar.X;
        if (!this.V) {
            if (zzaetVar.f8645h) {
                this.O &= -1073741825;
                if (!this.W) {
                    ((zzzk) zzzvVar).g(this.f8679g.h(), 0, 1, false);
                    this.S++;
                    if ((this.f8679g.h()[0] & 128) == 128) {
                        throw zzbu.a("Extension bit is set in signal byte", null);
                    }
                    this.Z = this.f8679g.h()[0];
                    this.W = true;
                }
                byte b10 = this.Z;
                if ((b10 & 1) == 1) {
                    int i15 = b10 & 2;
                    this.O |= 1073741824;
                    if (!this.f8672a0) {
                        ((zzzk) zzzvVar).g(this.f8684l.h(), 0, 8, false);
                        this.S += 8;
                        this.f8672a0 = true;
                        this.f8679g.h()[0] = (byte) ((i15 != 2 ? 0 : 128) | 8);
                        this.f8679g.f(0);
                        zzabbVar.a(this.f8679g, 1, 1);
                        this.T++;
                        this.f8684l.f(0);
                        zzabbVar.a(this.f8684l, 8, 1);
                        this.T += 8;
                    }
                    if (i15 == 2) {
                        if (!this.X) {
                            ((zzzk) zzzvVar).g(this.f8679g.h(), 0, 1, false);
                            this.S++;
                            this.f8679g.f(0);
                            this.Y = this.f8679g.s();
                            this.X = true;
                        }
                        int i16 = this.Y * 4;
                        this.f8679g.c(i16);
                        ((zzzk) zzzvVar).g(this.f8679g.h(), 0, i16, false);
                        this.S += i16;
                        int i17 = (this.Y >> 1) + 1;
                        int i18 = (i17 * 6) + 2;
                        ByteBuffer byteBuffer = this.f8687o;
                        if (byteBuffer == null || byteBuffer.capacity() < i18) {
                            this.f8687o = ByteBuffer.allocate(i18);
                        }
                        this.f8687o.position(0);
                        this.f8687o.putShort((short) i17);
                        int i19 = 0;
                        int i20 = 0;
                        while (true) {
                            i11 = this.Y;
                            if (i19 >= i11) {
                                break;
                            }
                            int iV = this.f8679g.v();
                            if (i19 % 2 == 0) {
                                this.f8687o.putShort((short) (iV - i20));
                            } else {
                                this.f8687o.putInt(iV - i20);
                            }
                            i19++;
                            i20 = iV;
                        }
                        int i21 = (i10 - this.S) - i20;
                        if ((i11 & 1) == 1) {
                            this.f8687o.putInt(i21);
                        } else {
                            this.f8687o.putShort((short) i21);
                            this.f8687o.putInt(0);
                        }
                        this.f8685m.d(this.f8687o.array(), i18);
                        zzabbVar.a(this.f8685m, i18, 1);
                        this.T += i18;
                    }
                }
            } else {
                byte[] bArr = zzaetVar.f8646i;
                if (bArr != null) {
                    this.f8682j.d(bArr, bArr.length);
                }
            }
            if (!"A_OPUS".equals(zzaetVar.f8639b) ? zzaetVar.f8643f > 0 : z10) {
                this.O |= 268435456;
                this.f8686n.c(0);
                int iL = (this.f8682j.l() + i10) - this.S;
                this.f8679g.c(4);
                this.f8679g.h()[0] = (byte) ((iL >> 24) & 255);
                this.f8679g.h()[1] = (byte) ((iL >> 16) & 255);
                this.f8679g.h()[2] = (byte) ((iL >> 8) & 255);
                this.f8679g.h()[3] = (byte) (iL & 255);
                zzabbVar.a(this.f8679g, 4, 2);
                this.T += 4;
            }
            this.V = true;
        }
        int iL2 = i10 + this.f8682j.l();
        if (!"V_MPEG4/ISO/AVC".equals(zzaetVar.f8639b) && !"V_MPEGH/ISO/HEVC".equals(zzaetVar.f8639b)) {
            if (zzaetVar.T != null) {
                zzdl.f(this.f8682j.l() == 0);
                zzaetVar.T.d(zzzvVar);
            }
            while (true) {
                int i22 = this.S;
                if (i22 >= iL2) {
                    break;
                }
                int iQ = q(zzzvVar, zzabbVar, iL2 - i22);
                this.S += iQ;
                this.T += iQ;
            }
        } else {
            byte[] bArrH = this.f8678f.h();
            bArrH[0] = 0;
            bArrH[1] = 0;
            bArrH[2] = 0;
            int i23 = zzaetVar.Y;
            int i24 = 4 - i23;
            while (this.S < iL2) {
                int i25 = this.U;
                if (i25 == 0) {
                    int iMin = Math.min(i23, this.f8682j.i());
                    ((zzzk) zzzvVar).g(bArrH, i24 + iMin, i23 - iMin, false);
                    if (iMin > 0) {
                        this.f8682j.b(bArrH, i24, iMin);
                    }
                    this.S += i23;
                    this.f8678f.f(0);
                    this.U = this.f8678f.v();
                    this.f8677e.f(0);
                    zzaaz.b(zzabbVar, this.f8677e, 4);
                    this.T += 4;
                } else {
                    int iQ2 = q(zzzvVar, zzabbVar, i25);
                    this.S += iQ2;
                    this.T += iQ2;
                    this.U -= iQ2;
                }
            }
        }
        if ("A_VORBIS".equals(zzaetVar.f8639b)) {
            this.f8680h.f(0);
            zzaaz.b(zzabbVar, this.f8680h, 4);
            this.T += 4;
        }
        int i26 = this.T;
        w();
        return i26;
    }

    private final int q(zzzv zzzvVar, zzabb zzabbVar, int i10) throws IOException {
        int i11 = this.f8682j.i();
        if (i11 <= 0) {
            return zzaaz.a(zzabbVar, zzzvVar, i10, false);
        }
        int iMin = Math.min(i10, i11);
        zzaaz.b(zzabbVar, this.f8682j, iMin);
        return iMin;
    }

    private final long r(long j10) throws zzbu {
        long j11 = this.f8690r;
        if (j11 != -9223372036854775807L) {
            return zzew.h0(j10, j11, 1000L);
        }
        throw zzbu.a("Can't scale timecode prior to timecodeScale being set.", null);
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    private final void s(int i10) throws zzbu {
        if (this.C == null || this.D == null) {
            throw zzbu.a("Element " + i10 + " must be in a Cues", null);
        }
    }

    @EnsuresNonNull({"currentTrack"})
    private final void t(int i10) throws zzbu {
        if (this.f8693u != null) {
            return;
        }
        throw zzbu.a("Element " + i10 + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e0 A[EDGE_INSN: B:62:0x00e0->B:51:0x00e0 BREAK  A[LOOP:0: B:45:0x00c5->B:50:0x00dd], SYNTHETIC] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#1.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void u(com.google.android.gms.internal.ads.zzaet r18, long r19, int r21, int r22, int r23) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeu.u(com.google.android.gms.internal.ads.zzaet, long, int, int, int):void");
    }

    private final void v(zzzv zzzvVar, int i10) throws IOException {
        if (this.f8679g.l() >= i10) {
            return;
        }
        if (this.f8679g.j() < i10) {
            zzen zzenVar = this.f8679g;
            int iJ = zzenVar.j();
            zzenVar.H(Math.max(iJ + iJ, i10));
        }
        ((zzzk) zzzvVar).g(this.f8679g.h(), this.f8679g.l(), i10 - this.f8679g.l(), false);
        this.f8679g.e(i10);
    }

    private final void w() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.f8672a0 = false;
        this.f8682j.c(0);
    }

    private final void x(zzzv zzzvVar, byte[] bArr, int i10) throws IOException {
        int length = bArr.length;
        int i11 = length + i10;
        if (this.f8683k.j() < i11) {
            zzen zzenVar = this.f8683k;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i11 + i10);
            zzenVar.d(bArrCopyOf, bArrCopyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.f8683k.h(), 0, length);
        }
        ((zzzk) zzzvVar).g(this.f8683k.h(), length, i10, false);
        this.f8683k.f(0);
        this.f8683k.e(i11);
    }

    private static byte[] y(long j10, String str, long j11) {
        zzdl.d(j10 != -9223372036854775807L);
        int i10 = (int) (j10 / 3600000000L);
        long j12 = j10 - (((long) i10) * 3600000000L);
        int i11 = (int) (j12 / 60000000);
        long j13 = j12 - (((long) i11) * 60000000);
        int i12 = (int) (j13 / 1000000);
        return zzew.C(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (((long) i12) * 1000000)) / j11))));
    }

    private static int[] z(int[] iArr, int i10) {
        if (iArr == null) {
            return new int[i10];
        }
        int length = iArr.length;
        return length >= i10 ? iArr : new int[Math.max(length + length, i10)];
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        return new zzaev().a(zzzvVar);
    }

    protected final void d(int i10, int i11, zzzv zzzvVar) throws IOException {
        long j10;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = i10;
        int i17 = 1;
        int i18 = 0;
        if (i16 != 161 && i16 != 163) {
            if (i16 == 165) {
                if (this.G != 2) {
                    return;
                }
                zzaet zzaetVar = (zzaet) this.f8675c.get(this.M);
                if (this.P != 4 || !"V_VP9".equals(zzaetVar.f8639b)) {
                    ((zzzk) zzzvVar).o(i11, false);
                    return;
                }
                this.f8686n.c(i11);
                ((zzzk) zzzvVar).g(this.f8686n.h(), 0, i11, false);
                return;
            }
            if (i16 == 16877) {
                t(i10);
                zzaet zzaetVar2 = this.f8693u;
                if (zzaetVar2.f8644g != 1685485123 && zzaetVar2.f8644g != 1685480259) {
                    ((zzzk) zzzvVar).o(i11, false);
                    return;
                }
                byte[] bArr = new byte[i11];
                zzaetVar2.N = bArr;
                ((zzzk) zzzvVar).g(bArr, 0, i11, false);
                return;
            }
            if (i16 == 16981) {
                t(i10);
                byte[] bArr2 = new byte[i11];
                this.f8693u.f8646i = bArr2;
                ((zzzk) zzzvVar).g(bArr2, 0, i11, false);
                return;
            }
            if (i16 == 18402) {
                byte[] bArr3 = new byte[i11];
                ((zzzk) zzzvVar).g(bArr3, 0, i11, false);
                t(i10);
                this.f8693u.f8647j = new zzaba(1, bArr3, 0, 0);
                return;
            }
            if (i16 == 21419) {
                Arrays.fill(this.f8681i.h(), (byte) 0);
                ((zzzk) zzzvVar).g(this.f8681i.h(), 4 - i11, i11, false);
                this.f8681i.f(0);
                this.f8695w = (int) this.f8681i.A();
                return;
            }
            if (i16 == 25506) {
                t(i10);
                byte[] bArr4 = new byte[i11];
                this.f8693u.f8648k = bArr4;
                ((zzzk) zzzvVar).g(bArr4, 0, i11, false);
                return;
            }
            if (i16 != 30322) {
                throw zzbu.a("Unexpected id: " + i16, null);
            }
            t(i10);
            byte[] bArr5 = new byte[i11];
            this.f8693u.f8659v = bArr5;
            ((zzzk) zzzvVar).g(bArr5, 0, i11, false);
            return;
        }
        if (this.G == 0) {
            this.M = (int) this.f8673b.d(zzzvVar, false, true, 8);
            this.N = this.f8673b.a();
            this.I = -9223372036854775807L;
            this.G = 1;
            this.f8679g.c(0);
        }
        zzaet zzaetVar3 = (zzaet) this.f8675c.get(this.M);
        if (zzaetVar3 == null) {
            ((zzzk) zzzvVar).o(i11 - this.N, false);
            this.G = 0;
            return;
        }
        Objects.requireNonNull(zzaetVar3.X);
        if (this.G == 1) {
            v(zzzvVar, 3);
            int i19 = (this.f8679g.h()[2] & 6) >> 1;
            if (i19 == 0) {
                this.K = 1;
                int[] iArrZ = z(this.L, 1);
                this.L = iArrZ;
                iArrZ[0] = (i11 - this.N) - 3;
            } else {
                v(zzzvVar, 4);
                int i20 = (this.f8679g.h()[3] & 255) + 1;
                this.K = i20;
                int[] iArrZ2 = z(this.L, i20);
                this.L = iArrZ2;
                if (i19 == 2) {
                    int i21 = (i11 - this.N) - 4;
                    int i22 = this.K;
                    Arrays.fill(iArrZ2, 0, i22, i21 / i22);
                } else {
                    if (i19 != 1) {
                        if (i19 != 3) {
                            throw zzbu.a("Unexpected lacing value: 2", null);
                        }
                        int i23 = 0;
                        int i24 = 4;
                        int i25 = 0;
                        while (true) {
                            int i26 = this.K - 1;
                            if (i23 >= i26) {
                                this.L[i26] = ((i11 - this.N) - i24) - i25;
                                break;
                            }
                            this.L[i23] = i18;
                            i24++;
                            v(zzzvVar, i24);
                            int i27 = i24 - 1;
                            if (this.f8679g.h()[i27] == 0) {
                                throw zzbu.a("No valid varint length mask found", null);
                            }
                            int i28 = 0;
                            while (true) {
                                if (i28 >= 8) {
                                    j10 = 0;
                                    break;
                                }
                                int i29 = i17 << (7 - i28);
                                if ((this.f8679g.h()[i27] & i29) != 0) {
                                    i24 += i28;
                                    v(zzzvVar, i24);
                                    j10 = this.f8679g.h()[i27] & 255 & (i29 ^ (-1));
                                    for (int i30 = i27 + 1; i30 < i24; i30++) {
                                        j10 = (j10 << 8) | ((long) (this.f8679g.h()[i30] & 255));
                                    }
                                    if (i23 > 0) {
                                        j10 -= (1 << ((i28 * 7) + 6)) - 1;
                                    }
                                } else {
                                    i28++;
                                    i17 = 1;
                                }
                            }
                            if (j10 < -2147483648L || j10 > 2147483647L) {
                                break;
                            }
                            int[] iArr = this.L;
                            int i31 = (int) j10;
                            if (i23 != 0) {
                                i31 += iArr[i23 - 1];
                            }
                            iArr[i23] = i31;
                            i25 += i31;
                            i23++;
                            i17 = 1;
                            i18 = 0;
                        }
                        throw zzbu.a("EBML lacing sample size out of range.", null);
                    }
                    int i32 = 0;
                    int i33 = 0;
                    int i34 = 4;
                    while (true) {
                        i12 = this.K - 1;
                        if (i32 >= i12) {
                            break;
                        }
                        this.L[i32] = 0;
                        do {
                            i34++;
                            v(zzzvVar, i34);
                            i13 = this.f8679g.h()[i34 - 1] & 255;
                            int[] iArr2 = this.L;
                            i14 = iArr2[i32] + i13;
                            iArr2[i32] = i14;
                        } while (i13 == 255);
                        i33 += i14;
                        i32++;
                    }
                    this.L[i12] = ((i11 - this.N) - i34) - i33;
                }
            }
            this.H = this.B + r((this.f8679g.h()[0] << 8) | (this.f8679g.h()[1] & 255));
            if (zzaetVar3.f8641d == 2) {
                i15 = 1;
                this.O = i15;
                this.G = 2;
                this.J = 0;
            } else {
                if (i16 == 163) {
                    if ((this.f8679g.h()[2] & 128) == 128) {
                        i16 = 163;
                        i15 = 1;
                        this.O = i15;
                        this.G = 2;
                        this.J = 0;
                    } else {
                        i16 = 163;
                    }
                }
                i15 = 0;
                this.O = i15;
                this.G = 2;
                this.J = 0;
            }
        }
        if (i16 == 163) {
            while (true) {
                int i35 = this.J;
                if (i35 >= this.K) {
                    this.G = 0;
                    return;
                }
                u(zzaetVar3, ((long) ((this.J * zzaetVar3.f8642e) / 1000)) + this.H, this.O, p(zzzvVar, zzaetVar3, this.L[i35], false), 0);
                this.J++;
            }
        } else {
            while (true) {
                int i36 = this.J;
                if (i36 >= this.K) {
                    return;
                }
                int[] iArr3 = this.L;
                iArr3[i36] = p(zzzvVar, zzaetVar3, iArr3[i36], true);
                this.J++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final int e(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        this.F = false;
        while (!this.F) {
            if (!this.f8671a.b(zzzvVar)) {
                for (int i10 = 0; i10 < this.f8675c.size(); i10++) {
                    zzaet zzaetVar = (zzaet) this.f8675c.valueAt(i10);
                    Objects.requireNonNull(zzaetVar.X);
                    zzabc zzabcVar = zzaetVar.T;
                    if (zzabcVar != null) {
                        zzabcVar.a(zzaetVar.X, zzaetVar.f8647j);
                    }
                }
                return -1;
            }
            long jC = zzzvVar.c();
            if (this.f8697y) {
                this.A = jC;
                zzaauVar.f8348a = this.f8698z;
                this.f8697y = false;
                return 1;
            }
            if (this.f8694v) {
                long j10 = this.A;
                if (j10 != -1) {
                    zzaauVar.f8348a = j10;
                    this.A = -1L;
                    return 1;
                }
            }
        }
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0314  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void f(int r22) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instruction units count: 1152
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeu.f(int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8674b0 = zzzxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        this.B = -9223372036854775807L;
        this.G = 0;
        this.f8671a.zzb();
        this.f8673b.e();
        w();
        for (int i10 = 0; i10 < this.f8675c.size(); i10++) {
            zzabc zzabcVar = ((zzaet) this.f8675c.valueAt(i10)).T;
            if (zzabcVar != null) {
                zzabcVar.b();
            }
        }
    }

    protected final void i(int i10, double d10) throws zzbu {
        if (i10 == 181) {
            t(i10);
            this.f8693u.Q = (int) d10;
            return;
        }
        if (i10 == 17545) {
            this.f8691s = (long) d10;
            return;
        }
        switch (i10) {
            case 21969:
                t(i10);
                this.f8693u.D = (float) d10;
                break;
            case 21970:
                t(i10);
                this.f8693u.E = (float) d10;
                break;
            case 21971:
                t(i10);
                this.f8693u.F = (float) d10;
                break;
            case 21972:
                t(i10);
                this.f8693u.G = (float) d10;
                break;
            case 21973:
                t(i10);
                this.f8693u.H = (float) d10;
                break;
            case 21974:
                t(i10);
                this.f8693u.I = (float) d10;
                break;
            case 21975:
                t(i10);
                this.f8693u.J = (float) d10;
                break;
            case 21976:
                t(i10);
                this.f8693u.K = (float) d10;
                break;
            case 21977:
                t(i10);
                this.f8693u.L = (float) d10;
                break;
            case 21978:
                t(i10);
                this.f8693u.M = (float) d10;
                break;
            default:
                switch (i10) {
                    case 30323:
                        t(i10);
                        this.f8693u.f8656s = (float) d10;
                        break;
                    case 30324:
                        t(i10);
                        this.f8693u.f8657t = (float) d10;
                        break;
                    case 30325:
                        t(i10);
                        this.f8693u.f8658u = (float) d10;
                        break;
                }
                break;
        }
    }

    protected final void j(int i10, long j10) throws zzbu {
        if (i10 == 20529) {
            if (j10 == 0) {
                return;
            }
            throw zzbu.a("ContentEncodingOrder " + j10 + " not supported", null);
        }
        if (i10 == 20530) {
            if (j10 == 1) {
                return;
            }
            throw zzbu.a("ContentEncodingScope " + j10 + " not supported", null);
        }
        switch (i10) {
            case 131:
                t(i10);
                this.f8693u.f8641d = (int) j10;
                return;
            case 136:
                t(i10);
                this.f8693u.V = j10 == 1;
                return;
            case 155:
                this.I = r(j10);
                return;
            case 159:
                t(i10);
                this.f8693u.O = (int) j10;
                return;
            case 176:
                t(i10);
                this.f8693u.f8650m = (int) j10;
                return;
            case 179:
                s(i10);
                this.C.c(r(j10));
                return;
            case 186:
                t(i10);
                this.f8693u.f8651n = (int) j10;
                return;
            case 215:
                t(i10);
                this.f8693u.f8640c = (int) j10;
                return;
            case 231:
                this.B = r(j10);
                return;
            case 238:
                this.P = (int) j10;
                return;
            case 241:
                if (this.E) {
                    return;
                }
                s(i10);
                this.D.c(j10);
                this.E = true;
                return;
            case 251:
                this.Q = true;
                return;
            case 16871:
                t(i10);
                this.f8693u.f8644g = (int) j10;
                return;
            case 16980:
                if (j10 == 3) {
                    return;
                }
                throw zzbu.a("ContentCompAlgo " + j10 + " not supported", null);
            case 17029:
                if (j10 < 1 || j10 > 2) {
                    throw zzbu.a("DocTypeReadVersion " + j10 + " not supported", null);
                }
                return;
            case 17143:
                if (j10 == 1) {
                    return;
                }
                throw zzbu.a("EBMLReadVersion " + j10 + " not supported", null);
            case 18401:
                if (j10 == 5) {
                    return;
                }
                throw zzbu.a("ContentEncAlgo " + j10 + " not supported", null);
            case 18408:
                if (j10 == 1) {
                    return;
                }
                throw zzbu.a("AESSettingsCipherMode " + j10 + " not supported", null);
            case 21420:
                this.f8696x = j10 + this.f8689q;
                return;
            case 21432:
                int i11 = (int) j10;
                t(i10);
                if (i11 == 0) {
                    this.f8693u.f8660w = 0;
                    return;
                }
                if (i11 == 1) {
                    this.f8693u.f8660w = 2;
                    return;
                } else if (i11 == 3) {
                    this.f8693u.f8660w = 1;
                    return;
                } else {
                    if (i11 != 15) {
                        return;
                    }
                    this.f8693u.f8660w = 3;
                    return;
                }
            case 21680:
                t(i10);
                this.f8693u.f8652o = (int) j10;
                return;
            case 21682:
                t(i10);
                this.f8693u.f8654q = (int) j10;
                return;
            case 21690:
                t(i10);
                this.f8693u.f8653p = (int) j10;
                return;
            case 21930:
                t(i10);
                this.f8693u.U = j10 == 1;
                return;
            case 21998:
                t(i10);
                this.f8693u.f8643f = (int) j10;
                return;
            case 22186:
                t(i10);
                this.f8693u.R = j10;
                return;
            case 22203:
                t(i10);
                this.f8693u.S = j10;
                return;
            case 25188:
                t(i10);
                this.f8693u.P = (int) j10;
                return;
            case 30114:
                this.R = j10;
                return;
            case 30321:
                t(i10);
                int i12 = (int) j10;
                if (i12 == 0) {
                    this.f8693u.f8655r = 0;
                    return;
                }
                if (i12 == 1) {
                    this.f8693u.f8655r = 1;
                    return;
                } else if (i12 == 2) {
                    this.f8693u.f8655r = 2;
                    return;
                } else {
                    if (i12 != 3) {
                        return;
                    }
                    this.f8693u.f8655r = 3;
                    return;
                }
            case 2352003:
                t(i10);
                this.f8693u.f8642e = (int) j10;
                return;
            case 2807729:
                this.f8690r = j10;
                return;
            default:
                switch (i10) {
                    case 21945:
                        t(i10);
                        int i13 = (int) j10;
                        if (i13 == 1) {
                            this.f8693u.A = 2;
                            return;
                        } else {
                            if (i13 != 2) {
                                return;
                            }
                            this.f8693u.A = 1;
                            return;
                        }
                    case 21946:
                        t(i10);
                        int iB = zzq.b((int) j10);
                        if (iB != -1) {
                            this.f8693u.f8663z = iB;
                            return;
                        }
                        return;
                    case 21947:
                        t(i10);
                        this.f8693u.f8661x = true;
                        int iA = zzq.a((int) j10);
                        if (iA != -1) {
                            this.f8693u.f8662y = iA;
                            return;
                        }
                        return;
                    case 21948:
                        t(i10);
                        this.f8693u.B = (int) j10;
                        return;
                    case 21949:
                        t(i10);
                        this.f8693u.C = (int) j10;
                        return;
                    default:
                        return;
                }
        }
    }

    protected final void k(int i10, long j10, long j11) throws zzbu {
        zzdl.b(this.f8674b0);
        if (i10 == 160) {
            this.Q = false;
            this.R = 0L;
            return;
        }
        if (i10 == 174) {
            this.f8693u = new zzaet();
            return;
        }
        if (i10 == 187) {
            this.E = false;
            return;
        }
        if (i10 == 19899) {
            this.f8695w = -1;
            this.f8696x = -1L;
            return;
        }
        if (i10 == 20533) {
            t(i10);
            this.f8693u.f8645h = true;
            return;
        }
        if (i10 == 21968) {
            t(i10);
            this.f8693u.f8661x = true;
            return;
        }
        if (i10 == 408125543) {
            long j12 = this.f8689q;
            if (j12 != -1 && j12 != j10) {
                throw zzbu.a("Multiple Segment elements not supported", null);
            }
            this.f8689q = j10;
            this.f8688p = j11;
            return;
        }
        if (i10 == 475249515) {
            this.C = new zzef(32);
            this.D = new zzef(32);
        } else if (i10 == 524531317 && !this.f8694v) {
            if (this.f8676d && this.f8698z != -1) {
                this.f8697y = true;
            } else {
                this.f8674b0.e(new zzaaw(this.f8692t, 0L));
                this.f8694v = true;
            }
        }
    }

    protected final void l(int i10, String str) throws zzbu {
        if (i10 == 134) {
            t(i10);
            this.f8693u.f8639b = str;
            return;
        }
        if (i10 == 17026) {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            throw zzbu.a("DocType " + str + " not supported", null);
        }
        if (i10 == 21358) {
            t(i10);
            this.f8693u.f8638a = str;
        } else {
            if (i10 != 2274716) {
                return;
            }
            t(i10);
            this.f8693u.W = str;
        }
    }

    public zzaeu(int i10) {
        zzaen zzaenVar = new zzaen();
        this.f8689q = -1L;
        this.f8690r = -9223372036854775807L;
        this.f8691s = -9223372036854775807L;
        this.f8692t = -9223372036854775807L;
        this.f8698z = -1L;
        this.A = -1L;
        this.B = -9223372036854775807L;
        this.f8671a = zzaenVar;
        zzaenVar.a(new zzaes(this, null));
        this.f8676d = true;
        this.f8673b = new zzaew();
        this.f8675c = new SparseArray();
        this.f8679g = new zzen(4);
        this.f8680h = new zzen(ByteBuffer.allocate(4).putInt(-1).array());
        this.f8681i = new zzen(4);
        this.f8677e = new zzen(zzaar.f8340a);
        this.f8678f = new zzen(4);
        this.f8682j = new zzen();
        this.f8683k = new zzen();
        this.f8684l = new zzen(8);
        this.f8685m = new zzen();
        this.f8686n = new zzen();
        this.L = new int[1];
    }
}
