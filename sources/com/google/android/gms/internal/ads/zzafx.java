package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzafx implements zzzu {
    public static final zzaab E = new zzaab() { // from class: com.google.android.gms.internal.ads.zzaft
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzafx.E;
            return new zzzu[]{new zzafx(0, null)};
        }
    };
    private static final byte[] F = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzaf G;
    private zzzx A;
    private zzabb[] B;
    private zzabb[] C;
    private boolean D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f8831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f8832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzen f8833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzen f8834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzen f8835e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f8836f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzen f8837g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzacs f8838h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzen f8839i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ArrayDeque f8840j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ArrayDeque f8841k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f8842l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f8843m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f8844n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f8845o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzen f8846p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f8847q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f8848r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f8849s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f8850t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f8851u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzafw f8852v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f8853w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f8854x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f8855y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f8856z;

    static {
        zzad zzadVar = new zzad();
        zzadVar.s("application/x-emsg");
        G = zzadVar.y();
    }

    public zzafx() {
        this(0, null);
    }

    private static int b(int i10) throws zzbu {
        if (i10 >= 0) {
            return i10;
        }
        throw zzbu.a("Unexpected negative value: " + i10, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzx c(java.util.List r14) {
        /*
            int r0 = r14.size()
            r1 = 0
            r2 = 0
            r4 = r2
            r3 = 0
        L8:
            if (r3 >= r0) goto Lb9
            java.lang.Object r5 = r14.get(r3)
            com.google.android.gms.internal.ads.zzafi r5 = (com.google.android.gms.internal.ads.zzafi) r5
            int r6 = r5.f8780a
            r7 = 1886614376(0x70737368, float:3.013775E29)
            if (r6 != r7) goto Lb5
            if (r4 != 0) goto L1e
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
        L1e:
            com.google.android.gms.internal.ads.zzen r5 = r5.f8779b
            byte[] r5 = r5.h()
            com.google.android.gms.internal.ads.zzen r6 = new com.google.android.gms.internal.ads.zzen
            r6.<init>(r5)
            int r8 = r6.l()
            r9 = 32
            if (r8 >= r9) goto L33
        L31:
            r6 = r2
            goto L99
        L33:
            r6.f(r1)
            int r8 = r6.m()
            int r9 = r6.i()
            int r9 = r9 + 4
            if (r8 == r9) goto L43
            goto L31
        L43:
            int r8 = r6.m()
            if (r8 == r7) goto L4a
            goto L31
        L4a:
            int r7 = r6.m()
            int r7 = com.google.android.gms.internal.ads.zzafj.a(r7)
            r8 = 1
            if (r7 <= r8) goto L6c
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r8 = "Unsupported pssh version: "
            r6.append(r8)
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            java.lang.String r7 = "PsshAtomUtil"
            com.google.android.gms.internal.ads.zzee.e(r7, r6)
            goto L31
        L6c:
            java.util.UUID r9 = new java.util.UUID
            long r10 = r6.z()
            long r12 = r6.z()
            r9.<init>(r10, r12)
            if (r7 != r8) goto L84
            int r8 = r6.v()
            int r8 = r8 * 16
            r6.g(r8)
        L84:
            int r8 = r6.v()
            int r10 = r6.i()
            if (r8 == r10) goto L8f
            goto L31
        L8f:
            byte[] r10 = new byte[r8]
            r6.b(r10, r1, r8)
            com.google.android.gms.internal.ads.zzagd r6 = new com.google.android.gms.internal.ads.zzagd
            r6.<init>(r9, r7, r10)
        L99:
            if (r6 != 0) goto L9d
            r6 = r2
            goto La1
        L9d:
            java.util.UUID r6 = com.google.android.gms.internal.ads.zzagd.a(r6)
        La1:
            if (r6 != 0) goto Lab
            java.lang.String r5 = "FragmentedMp4Extractor"
            java.lang.String r6 = "Skipped pssh atom (failed to extract uuid)"
            com.google.android.gms.internal.ads.zzee.e(r5, r6)
            goto Lb5
        Lab:
            com.google.android.gms.internal.ads.zzw r7 = new com.google.android.gms.internal.ads.zzw
            java.lang.String r8 = "video/mp4"
            r7.<init>(r6, r2, r8, r5)
            r4.add(r7)
        Lb5:
            int r3 = r3 + 1
            goto L8
        Lb9:
            if (r4 != 0) goto Lbc
            return r2
        Lbc:
            com.google.android.gms.internal.ads.zzx r14 = new com.google.android.gms.internal.ads.zzx
            r14.<init>(r4)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafx.c(java.util.List):com.google.android.gms.internal.ads.zzx");
    }

    private final void d() {
        this.f8842l = 0;
        this.f8845o = 0;
    }

    private static void f(zzen zzenVar, int i10, zzagi zzagiVar) throws zzbu {
        zzenVar.f(i10 + 8);
        int iM = zzenVar.m() & 16777215;
        if ((iM & 1) != 0) {
            throw zzbu.c("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z10 = (iM & 2) != 0;
        int iV = zzenVar.v();
        if (iV == 0) {
            Arrays.fill(zzagiVar.f8924l, 0, zzagiVar.f8917e, false);
            return;
        }
        int i11 = zzagiVar.f8917e;
        if (iV != i11) {
            throw zzbu.a("Senc sample count " + iV + " is different from fragment sample count" + i11, null);
        }
        Arrays.fill(zzagiVar.f8924l, 0, iV, z10);
        zzagiVar.a(zzenVar.i());
        zzen zzenVar2 = zzagiVar.f8926n;
        zzenVar.b(zzenVar2.h(), 0, zzenVar2.l());
        zzagiVar.f8926n.f(0);
        zzagiVar.f8927o = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:247:0x061e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void i(long r47) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instruction units count: 1775
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafx.i(long):void");
    }

    private static final zzafs j(SparseArray sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return (zzafs) sparseArray.valueAt(0);
        }
        zzafs zzafsVar = (zzafs) sparseArray.get(i10);
        Objects.requireNonNull(zzafsVar);
        return zzafsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        return zzagf.a(zzzvVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0246, code lost:
    
        r23 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0248, code lost:
    
        r5.f(r10, r20, r33.f8853w, 0, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x025b, code lost:
    
        if (r33.f8841k.isEmpty() != false) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x025d, code lost:
    
        r1 = (com.google.android.gms.internal.ads.zzafv) r33.f8841k.removeFirst();
        r33.f8848r -= r1.f8818c;
        r3 = r1.f8816a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0270, code lost:
    
        if (r1.f8817b == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0272, code lost:
    
        r3 = r3 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0273, code lost:
    
        r5 = r33.B;
        r6 = r5.length;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0277, code lost:
    
        if (r8 >= r6) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0279, code lost:
    
        r5[r8].f(r3, 1, r1.f8818c, r33.f8848r, null);
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0291, code lost:
    
        if (r2.k() != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0293, code lost:
    
        r33.f8852v = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0295, code lost:
    
        r33.f8842l = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0099, code lost:
    
        r4 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
    
        if (r33.f8842l != 3) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
    
        r3 = r2.b();
        r33.f8853w = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
    
        if (r2.f8824f >= r2.f8827i) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00aa, code lost:
    
        ((com.google.android.gms.internal.ads.zzzk) r1).o(r3, false);
        r1 = r2.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
    
        if (r1 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b6, code lost:
    
        r3 = r2.f8820b.f8926n;
        r1 = r1.f8911d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bc, code lost:
    
        if (r1 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00be, code lost:
    
        r3.g(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
    
        if (r2.f8820b.b(r2.f8824f) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cb, code lost:
    
        r3.g(r3.w() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d8, code lost:
    
        if (r2.k() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00da, code lost:
    
        r33.f8852v = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00dc, code lost:
    
        r33.f8842l = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00de, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e7, code lost:
    
        if (r2.f8822d.f8930a.f8903g != 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e9, code lost:
    
        r33.f8853w = r3 - 8;
        ((com.google.android.gms.internal.ads.zzzk) r1).o(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0103, code lost:
    
        if ("audio/ac4".equals(r2.f8822d.f8930a.f8902f.f8731l) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0105, code lost:
    
        r33.f8854x = r2.c(r33.f8853w, 7);
        com.google.android.gms.internal.ads.zzyy.b(r33.f8853w, r33.f8837g);
        r2.f8819a.d(r33.f8837g, 7);
        r3 = r33.f8854x + 7;
        r33.f8854x = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0122, code lost:
    
        r3 = r2.c(r33.f8853w, 0);
        r33.f8854x = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012a, code lost:
    
        r33.f8853w += r3;
        r33.f8842l = 4;
        r33.f8855y = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0134, code lost:
    
        r3 = r2.f8822d.f8930a;
        r5 = r2.f8819a;
        r10 = r2.e();
        r6 = r3.f8906j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0140, code lost:
    
        if (r6 != 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0142, code lost:
    
        r3 = r33.f8854x;
        r4 = r33.f8853w;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0146, code lost:
    
        if (r3 >= r4) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0148, code lost:
    
        r33.f8854x += r5.b(r1, r4 - r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0153, code lost:
    
        r13 = r33.f8834d.h();
        r13[0] = 0;
        r13[1] = 0;
        r13[2] = 0;
        r14 = r6 + 1;
        r6 = 4 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0169, code lost:
    
        if (r33.f8854x >= r33.f8853w) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016b, code lost:
    
        r12 = r33.f8855y;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016f, code lost:
    
        if (r12 != 0) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0171, code lost:
    
        ((com.google.android.gms.internal.ads.zzzk) r1).g(r13, r6, r14, r9);
        r33.f8834d.f(r9);
        r12 = r33.f8834d.m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0182, code lost:
    
        if (r12 <= 0) goto L399;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0184, code lost:
    
        r33.f8855y = r12 - 1;
        r33.f8833c.f(r9);
        r5.d(r33.f8833c, 4);
        r5.d(r33.f8834d, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x019b, code lost:
    
        if (r33.C.length <= 0) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x019d, code lost:
    
        r12 = r3.f8902f.f8731l;
        r17 = r13[4];
        r9 = com.google.android.gms.internal.ads.zzaar.f8340a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01ab, code lost:
    
        if ("video/avc".equals(r12) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01af, code lost:
    
        if ((r17 & 31) == r4) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01b2, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b8, code lost:
    
        if ("video/hevc".equals(r12) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01bf, code lost:
    
        if (((r17 & 126) >> r8) != 39) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c2, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c3, code lost:
    
        r33.f8856z = r9;
        r33.f8854x += 5;
        r33.f8853w += r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d7, code lost:
    
        throw com.google.android.gms.internal.ads.zzbu.a("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01da, code lost:
    
        if (r33.f8856z == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01dc, code lost:
    
        r33.f8835e.c(r12);
        ((com.google.android.gms.internal.ads.zzzk) r1).g(r33.f8835e.h(), 0, r33.f8855y, false);
        r5.d(r33.f8835e, r33.f8855y);
        r4 = r33.f8855y;
        r8 = r33.f8835e;
        r8 = com.google.android.gms.internal.ads.zzaar.b(r8.h(), r8.l());
        r33.f8835e.f("video/hevc".equals(r3.f8902f.f8731l) ? 1 : 0);
        r33.f8835e.e(r8);
        com.google.android.gms.internal.ads.zzzh.a(r10, r33.f8835e, r33.C);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0221, code lost:
    
        r4 = r5.b(r1, r12, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0227, code lost:
    
        r33.f8854x += r4;
        r33.f8855y -= r4;
        r4 = 6;
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0233, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0237, code lost:
    
        r20 = r2.a();
        r1 = r2.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x023f, code lost:
    
        if (r1 == null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0241, code lost:
    
        r23 = r1.f8910c;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(com.google.android.gms.internal.ads.zzzv r34, com.google.android.gms.internal.ads.zzaau r35) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1870
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafx.e(com.google.android.gms.internal.ads.zzzv, com.google.android.gms.internal.ads.zzaau):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.A = zzzxVar;
        d();
        zzabb[] zzabbVarArr = new zzabb[2];
        this.B = zzabbVarArr;
        int i10 = 0;
        zzabb[] zzabbVarArr2 = (zzabb[]) zzew.G(zzabbVarArr, 0);
        this.B = zzabbVarArr2;
        for (zzabb zzabbVar : zzabbVarArr2) {
            zzabbVar.e(G);
        }
        this.C = new zzabb[this.f8831a.size()];
        int i11 = 100;
        while (i10 < this.C.length) {
            int i12 = i11 + 1;
            zzabb zzabbVarQ = this.A.q(i11, 3);
            zzabbVarQ.e((zzaf) this.f8831a.get(i10));
            this.C[i10] = zzabbVarQ;
            i10++;
            i11 = i12;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        int size = this.f8832b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((zzafw) this.f8832b.valueAt(i10)).i();
        }
        this.f8841k.clear();
        this.f8848r = 0;
        this.f8849s = j11;
        this.f8840j.clear();
        d();
    }

    public zzafx(int i10, zzeu zzeuVar) {
        this.f8831a = Collections.unmodifiableList(Collections.emptyList());
        this.f8838h = new zzacs();
        this.f8839i = new zzen(16);
        this.f8833c = new zzen(zzaar.f8340a);
        this.f8834d = new zzen(5);
        this.f8835e = new zzen();
        byte[] bArr = new byte[16];
        this.f8836f = bArr;
        this.f8837g = new zzen(bArr);
        this.f8840j = new ArrayDeque();
        this.f8841k = new ArrayDeque();
        this.f8832b = new SparseArray();
        this.f8850t = -9223372036854775807L;
        this.f8849s = -9223372036854775807L;
        this.f8851u = -9223372036854775807L;
        this.A = zzzx.f21213c;
        this.B = new zzabb[0];
        this.C = new zzabb[0];
    }
}
