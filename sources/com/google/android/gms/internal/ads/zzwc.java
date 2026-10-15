package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzwc extends zzwh {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final zzfrs f20929k = zzfrs.b(new Comparator() { // from class: com.google.android.gms.internal.ads.zzvi
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i10 = zzwc.f20931m;
            if (num.intValue() == -1) {
                return num2.intValue() == -1 ? 0 : -1;
            }
            if (num2.intValue() == -1) {
                return 1;
            }
            return num.intValue() - num2.intValue();
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final zzfrs f20930l = zzfrs.b(new Comparator() { // from class: com.google.android.gms.internal.ads.zzvj
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int i10 = zzwc.f20931m;
            return 0;
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f20931m = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f20932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f20933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f20934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzvq f20935g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzvv f20936h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzk f20937i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzux f20938j;

    @Deprecated
    public zzwc() {
        zzvq zzvqVar = zzvq.f20868s0;
        throw null;
    }

    protected static int j(zzaf zzafVar, String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(zzafVar.f8722c)) {
            return 4;
        }
        String strN = n(str);
        String strN2 = n(zzafVar.f8722c);
        if (strN2 == null || strN == null) {
            return (z10 && strN2 == null) ? 1 : 0;
        }
        if (strN2.startsWith(strN) || strN.startsWith(strN2)) {
            return 3;
        }
        return zzew.J(strN2, "-")[0].equals(zzew.J(strN, "-")[0]) ? 2 : 0;
    }

    protected static String n(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ boolean q(com.google.android.gms.internal.ads.zzwc r8, com.google.android.gms.internal.ads.zzaf r9) {
        /*
            java.lang.Object r0 = r8.f20932d
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzvq r1 = r8.f20935g     // Catch: java.lang.Throwable -> L8e
            boolean r1 = r1.f20885m0     // Catch: java.lang.Throwable -> L8e
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L8b
            boolean r1 = r8.f20934f     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto L8b
            int r1 = r9.f8744y     // Catch: java.lang.Throwable -> L8e
            r4 = 2
            if (r1 <= r4) goto L8b
            java.lang.String r1 = r9.f8731l     // Catch: java.lang.Throwable -> L8e
            r5 = 32
            if (r1 != 0) goto L1b
            goto L65
        L1b:
            int r6 = r1.hashCode()     // Catch: java.lang.Throwable -> L8e
            r7 = 3
            switch(r6) {
                case -2123537834: goto L42;
                case 187078296: goto L38;
                case 187078297: goto L2e;
                case 1504578661: goto L24;
                default: goto L23;
            }
        L23:
            goto L4c
        L24:
            java.lang.String r6 = "audio/eac3"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = 1
            goto L4d
        L2e:
            java.lang.String r6 = "audio/ac4"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = 3
            goto L4d
        L38:
            java.lang.String r6 = "audio/ac3"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = 0
            goto L4d
        L42:
            java.lang.String r6 = "audio/eac3-joc"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = 2
            goto L4d
        L4c:
            r1 = -1
        L4d:
            if (r1 == 0) goto L56
            if (r1 == r3) goto L56
            if (r1 == r4) goto L56
            if (r1 == r7) goto L56
            goto L65
        L56:
            int r1 = com.google.android.gms.internal.ads.zzew.f17494a     // Catch: java.lang.Throwable -> L8e
            if (r1 < r5) goto L8b
            com.google.android.gms.internal.ads.zzvv r1 = r8.f20936h     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8b
            boolean r1 = r1.g()     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto L65
            goto L8b
        L65:
            int r1 = com.google.android.gms.internal.ads.zzew.f17494a     // Catch: java.lang.Throwable -> L8e
            if (r1 < r5) goto L8c
            com.google.android.gms.internal.ads.zzvv r1 = r8.f20936h     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8c
            boolean r4 = r1.g()     // Catch: java.lang.Throwable -> L8e
            if (r4 == 0) goto L8c
            boolean r1 = r1.e()     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8c
            com.google.android.gms.internal.ads.zzvv r1 = r8.f20936h     // Catch: java.lang.Throwable -> L8e
            boolean r1 = r1.f()     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8c
            com.google.android.gms.internal.ads.zzvv r1 = r8.f20936h     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.zzk r8 = r8.f20937i     // Catch: java.lang.Throwable -> L8e
            boolean r8 = r1.d(r8, r9)     // Catch: java.lang.Throwable -> L8e
            if (r8 == 0) goto L8c
        L8b:
            r2 = 1
        L8c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8e
            return r2
        L8e:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8e
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwc.q(com.google.android.gms.internal.ads.zzwc, com.google.android.gms.internal.ads.zzaf):boolean");
    }

    protected static boolean r(int i10, boolean z10) {
        int i11 = i10 & 7;
        return i11 == 4 || (z10 && i11 == 3);
    }

    private static void s(zzur zzurVar, zzcu zzcuVar, Map map) {
        for (int i10 = 0; i10 < zzurVar.f20819a; i10++) {
            if (((zzcr) zzcuVar.f14054y.get(zzurVar.b(i10))) != null) {
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        boolean z10;
        zzvv zzvvVar;
        synchronized (this.f20932d) {
            z10 = false;
            if (this.f20935g.f20885m0 && !this.f20934f && zzew.f17494a >= 32 && (zzvvVar = this.f20936h) != null && zzvvVar.g()) {
                z10 = true;
            }
        }
        if (z10) {
            h();
        }
    }

    private static final Pair u(int i10, zzwg zzwgVar, int[][][] iArr, zzvx zzvxVar, Comparator comparator) {
        RandomAccess randomAccessV;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < 2; i11++) {
            if (i10 == zzwgVar.c(i11)) {
                zzur zzurVarD = zzwgVar.d(i11);
                for (int i12 = 0; i12 < zzurVarD.f20819a; i12++) {
                    zzcp zzcpVarB = zzurVarD.b(i12);
                    List listA = zzvxVar.a(i11, zzcpVarB, iArr[i11][i12]);
                    int i13 = zzcpVarB.f13690a;
                    int i14 = 1;
                    boolean[] zArr = new boolean[1];
                    int i15 = 0;
                    while (i15 <= 0) {
                        zzvy zzvyVar = (zzvy) listA.get(i15);
                        int iC = zzvyVar.c();
                        if (!zArr[i15] && iC != 0) {
                            if (iC == i14) {
                                randomAccessV = zzfqk.v(zzvyVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(zzvyVar);
                                for (int i16 = i15 + 1; i16 <= 0; i16++) {
                                    zzvy zzvyVar2 = (zzvy) listA.get(i16);
                                    if (zzvyVar2.c() == 2 && zzvyVar.e(zzvyVar2)) {
                                        arrayList2.add(zzvyVar2);
                                        zArr[i16] = true;
                                    }
                                }
                                randomAccessV = arrayList2;
                            }
                            arrayList.add(randomAccessV);
                        }
                        i15++;
                        i14 = 1;
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i17 = 0; i17 < list.size(); i17++) {
            iArr2[i17] = ((zzvy) list.get(i17)).f20912q;
        }
        zzvy zzvyVar3 = (zzvy) list.get(0);
        return Pair.create(new zzwd(zzvyVar3.f20911p, iArr2, 0), Integer.valueOf(zzvyVar3.f20910o));
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void a() {
        zzvv zzvvVar;
        synchronized (this.f20932d) {
            if (zzew.f17494a >= 32 && (zzvvVar = this.f20936h) != null) {
                zzvvVar.c();
            }
        }
        super.a();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void b(zzk zzkVar) {
        boolean z10;
        synchronized (this.f20932d) {
            z10 = !this.f20937i.equals(zzkVar);
            this.f20937i = zzkVar;
        }
        if (z10) {
            t();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean c() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    protected final Pair i(zzwg zzwgVar, int[][][] iArr, final int[] iArr2, zzss zzssVar, zzcn zzcnVar) throws zzhj {
        final zzvq zzvqVar;
        int i10;
        final boolean z10;
        final String str;
        int[] iArr3;
        int length;
        zzvv zzvvVar;
        int[][][] iArr4 = iArr;
        synchronized (this.f20932d) {
            zzvqVar = this.f20935g;
            if (zzvqVar.f20885m0 && zzew.f17494a >= 32 && (zzvvVar = this.f20936h) != null) {
                Looper looperMyLooper = Looper.myLooper();
                zzdl.b(looperMyLooper);
                zzvvVar.b(this, looperMyLooper);
            }
        }
        int i11 = 2;
        zzwd[] zzwdVarArr = new zzwd[2];
        Pair pairU = u(2, zzwgVar, iArr4, new zzvx() { // from class: com.google.android.gms.internal.ads.zzve
            /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0048  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
            @Override // com.google.android.gms.internal.ads.zzvx
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.util.List a(int r17, com.google.android.gms.internal.ads.zzcp r18, int[] r19) {
                /*
                    r16 = this;
                    r0 = r16
                    r9 = r18
                    com.google.android.gms.internal.ads.zzvq r10 = r1
                    int[] r1 = r2
                    int r2 = com.google.android.gms.internal.ads.zzwc.f20931m
                    r11 = r1[r17]
                    int r1 = r10.f14038i
                    int r2 = r10.f14039j
                    boolean r3 = r10.f14040k
                    r14 = 2147483647(0x7fffffff, float:NaN)
                    if (r1 == r14) goto L80
                    if (r2 != r14) goto L1b
                    goto L83
                L1b:
                    r4 = 0
                    r5 = 2147483647(0x7fffffff, float:NaN)
                L1f:
                    int r6 = r9.f13690a
                    if (r4 > 0) goto L7e
                    com.google.android.gms.internal.ads.zzaf r6 = r9.b(r4)
                    int r7 = r6.f8736q
                    if (r7 <= 0) goto L78
                    int r8 = r6.f8737r
                    if (r8 <= 0) goto L78
                    if (r3 == 0) goto L40
                    if (r7 > r8) goto L35
                    r15 = 0
                    goto L36
                L35:
                    r15 = 1
                L36:
                    if (r1 > r2) goto L3a
                    r12 = 0
                    goto L3b
                L3a:
                    r12 = 1
                L3b:
                    if (r15 == r12) goto L40
                    r12 = r1
                    r15 = r2
                    goto L42
                L40:
                    r15 = r1
                    r12 = r2
                L42:
                    int r13 = r7 * r12
                    int r14 = r8 * r15
                    if (r13 < r14) goto L52
                    android.graphics.Point r8 = new android.graphics.Point
                    int r7 = com.google.android.gms.internal.ads.zzew.P(r14, r7)
                    r8.<init>(r15, r7)
                    goto L5c
                L52:
                    android.graphics.Point r7 = new android.graphics.Point
                    int r8 = com.google.android.gms.internal.ads.zzew.P(r13, r8)
                    r7.<init>(r8, r12)
                    r8 = r7
                L5c:
                    int r7 = r6.f8736q
                    int r6 = r6.f8737r
                    int r12 = r7 * r6
                    int r13 = r8.x
                    float r13 = (float) r13
                    r14 = 1065017672(0x3f7ae148, float:0.98)
                    float r13 = r13 * r14
                    int r13 = (int) r13
                    if (r7 < r13) goto L78
                    int r7 = r8.y
                    float r7 = (float) r7
                    float r7 = r7 * r14
                    int r7 = (int) r7
                    if (r6 < r7) goto L78
                    if (r12 >= r5) goto L78
                    r5 = r12
                L78:
                    int r4 = r4 + 1
                    r14 = 2147483647(0x7fffffff, float:NaN)
                    goto L1f
                L7e:
                    r14 = r5
                    goto L83
                L80:
                    r14 = 2147483647(0x7fffffff, float:NaN)
                L83:
                    com.google.android.gms.internal.ads.zzfqh r12 = com.google.android.gms.internal.ads.zzfqk.o()
                    r13 = 0
                L88:
                    int r1 = r9.f13690a
                    if (r13 > 0) goto Lb8
                    com.google.android.gms.internal.ads.zzaf r1 = r9.b(r13)
                    int r1 = r1.a()
                    r15 = 2147483647(0x7fffffff, float:NaN)
                    if (r14 == r15) goto La1
                    r2 = -1
                    if (r1 == r2) goto L9f
                    if (r1 > r14) goto L9f
                    goto La1
                L9f:
                    r8 = 0
                    goto La2
                La1:
                    r8 = 1
                La2:
                    com.google.android.gms.internal.ads.zzwb r7 = new com.google.android.gms.internal.ads.zzwb
                    r6 = r19[r13]
                    r1 = r7
                    r2 = r17
                    r3 = r18
                    r4 = r13
                    r5 = r10
                    r15 = r7
                    r7 = r11
                    r1.<init>(r2, r3, r4, r5, r6, r7, r8)
                    r12.g(r15)
                    int r13 = r13 + 1
                    goto L88
                Lb8:
                    com.google.android.gms.internal.ads.zzfqk r1 = r12.j()
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzve.a(int, com.google.android.gms.internal.ads.zzcp, int[]):java.util.List");
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzvf
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list = (List) obj;
                List list2 = (List) obj2;
                zzfpz zzfpzVarI = zzfpz.i();
                zzvz zzvzVar = new Comparator() { // from class: com.google.android.gms.internal.ads.zzvz
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzwb.g((zzwb) obj3, (zzwb) obj4);
                    }
                };
                zzfpz zzfpzVarB = zzfpzVarI.c((zzwb) Collections.max(list, zzvzVar), (zzwb) Collections.max(list2, zzvzVar), zzvzVar).b(list.size(), list2.size());
                zzwa zzwaVar = new Comparator() { // from class: com.google.android.gms.internal.ads.zzwa
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzwb.f((zzwb) obj3, (zzwb) obj4);
                    }
                };
                return zzfpzVarB.c((zzwb) Collections.max(list, zzwaVar), (zzwb) Collections.max(list2, zzwaVar), zzwaVar).a();
            }
        });
        if (pairU != null) {
            zzwdVarArr[((Integer) pairU.second).intValue()] = (zzwd) pairU.first;
        }
        int i12 = 0;
        while (true) {
            i10 = 1;
            if (i12 >= 2) {
                z10 = false;
                break;
            }
            if (zzwgVar.c(i12) == 2 && zzwgVar.d(i12).f20819a > 0) {
                z10 = true;
                break;
            }
            i12++;
        }
        Pair pairU2 = u(1, zzwgVar, iArr4, new zzvx() { // from class: com.google.android.gms.internal.ads.zzvc
            @Override // com.google.android.gms.internal.ads.zzvx
            public final List a(int i13, zzcp zzcpVar, int[] iArr5) {
                final zzwc zzwcVar = this.f20837a;
                zzvq zzvqVar2 = zzvqVar;
                boolean z11 = z10;
                zzfnv zzfnvVar = new zzfnv() { // from class: com.google.android.gms.internal.ads.zzvb
                    @Override // com.google.android.gms.internal.ads.zzfnv
                    public final boolean a(Object obj) {
                        return zzwc.q(zzwcVar, (zzaf) obj);
                    }
                };
                zzfqh zzfqhVarO = zzfqk.o();
                int i14 = 0;
                while (true) {
                    int i15 = zzcpVar.f13690a;
                    if (i14 > 0) {
                        return zzfqhVarO.j();
                    }
                    zzfqhVarO.g(new zzvk(i13, zzcpVar, i14, zzvqVar2, iArr5[i14], z11, zzfnvVar));
                    i14++;
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzvd
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzvk) Collections.max((List) obj)).f((zzvk) Collections.max((List) obj2));
            }
        });
        if (pairU2 != null) {
            zzwdVarArr[((Integer) pairU2.second).intValue()] = (zzwd) pairU2.first;
        }
        if (pairU2 == null) {
            str = null;
        } else {
            Object obj = pairU2.first;
            str = ((zzwd) obj).f20939a.b(((zzwd) obj).f20940b[0]).f8722c;
        }
        int i13 = 3;
        Pair pairU3 = u(3, zzwgVar, iArr4, new zzvx() { // from class: com.google.android.gms.internal.ads.zzvg
            @Override // com.google.android.gms.internal.ads.zzvx
            public final List a(int i14, zzcp zzcpVar, int[] iArr5) {
                zzvq zzvqVar2 = zzvqVar;
                String str2 = str;
                int i15 = zzwc.f20931m;
                zzfqh zzfqhVarO = zzfqk.o();
                int i16 = 0;
                while (true) {
                    int i17 = zzcpVar.f13690a;
                    if (i16 > 0) {
                        return zzfqhVarO.j();
                    }
                    zzfqhVarO.g(new zzvw(i14, zzcpVar, i16, zzvqVar2, iArr5[i16], str2));
                    i16++;
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzvh
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((zzvw) ((List) obj2).get(0)).f((zzvw) ((List) obj3).get(0));
            }
        });
        if (pairU3 != null) {
            zzwdVarArr[((Integer) pairU3.second).intValue()] = (zzwd) pairU3.first;
        }
        int i14 = 0;
        while (i14 < i11) {
            int iC = zzwgVar.c(i14);
            if (iC != i11 && iC != i10 && iC != i13) {
                zzur zzurVarD = zzwgVar.d(i14);
                int[][] iArr5 = iArr4[i14];
                int i15 = 0;
                zzcp zzcpVar = null;
                int i16 = 0;
                zzvl zzvlVar = null;
                while (i15 < zzurVarD.f20819a) {
                    zzcp zzcpVarB = zzurVarD.b(i15);
                    int[] iArr6 = iArr5[i15];
                    zzvl zzvlVar2 = zzvlVar;
                    int i17 = 0;
                    while (true) {
                        int i18 = zzcpVarB.f13690a;
                        if (i17 <= 0) {
                            if (r(iArr6[i17], zzvqVar.f20886n0)) {
                                zzvl zzvlVar3 = new zzvl(zzcpVarB.b(i17), iArr6[i17]);
                                if (zzvlVar2 == null || zzvlVar3.compareTo(zzvlVar2) > 0) {
                                    i16 = i17;
                                    zzvlVar2 = zzvlVar3;
                                    zzcpVar = zzcpVarB;
                                }
                            }
                            i17++;
                        }
                    }
                    i15++;
                    zzvlVar = zzvlVar2;
                }
                zzwdVarArr[i14] = zzcpVar == null ? null : new zzwd(zzcpVar, new int[]{i16}, 0);
            }
            i14++;
            iArr4 = iArr;
            i11 = 2;
            i10 = 1;
            i13 = 3;
        }
        HashMap map = new HashMap();
        for (int i19 = 0; i19 < 2; i19++) {
            s(zzwgVar.d(i19), zzvqVar, map);
        }
        s(zzwgVar.e(), zzvqVar, map);
        for (int i20 = 0; i20 < 2; i20++) {
            if (((zzcr) map.get(Integer.valueOf(zzwgVar.c(i20)))) != null) {
                throw null;
            }
        }
        int i21 = 0;
        for (int i22 = 2; i21 < i22; i22 = 2) {
            zzur zzurVarD2 = zzwgVar.d(i21);
            if (zzvqVar.g(i21, zzurVarD2)) {
                if (zzvqVar.e(i21, zzurVarD2) != null) {
                    throw null;
                }
                zzwdVarArr[i21] = null;
            }
            i21++;
        }
        int i23 = 0;
        for (int i24 = 2; i23 < i24; i24 = 2) {
            int iC2 = zzwgVar.c(i23);
            if (zzvqVar.f(i23) || zzvqVar.f14055z.contains(Integer.valueOf(iC2))) {
                zzwdVarArr[i23] = null;
            }
            i23++;
        }
        zzux zzuxVar = this.f20938j;
        zzws zzwsVarF = f();
        zzfqk zzfqkVarC = zzuy.c(zzwdVarArr);
        int i25 = 2;
        zzwe[] zzweVarArr = new zzwe[2];
        int i26 = 0;
        while (i26 < i25) {
            zzwd zzwdVar = zzwdVarArr[i26];
            if (zzwdVar != null && (length = (iArr3 = zzwdVar.f20940b).length) != 0) {
                zzweVarArr[i26] = length == 1 ? new zzwf(zzwdVar.f20939a, iArr3[0], 0, 0, null) : zzuxVar.a(zzwdVar.f20939a, iArr3, 0, zzwsVarF, (zzfqk) zzfqkVarC.get(i26));
            }
            i26++;
            i25 = 2;
        }
        zzkp[] zzkpVarArr = new zzkp[i25];
        for (int i27 = 0; i27 < i25; i27++) {
            zzkpVarArr[i27] = (zzvqVar.f(i27) || zzvqVar.f14055z.contains(Integer.valueOf(zzwgVar.c(i27))) || (zzwgVar.c(i27) != -2 && zzweVarArr[i27] == null)) ? null : zzkp.f20077a;
        }
        return Pair.create(zzkpVarArr, zzweVarArr);
    }

    public final zzvq k() {
        zzvq zzvqVar;
        synchronized (this.f20932d) {
            zzvqVar = this.f20935g;
        }
        return zzvqVar;
    }

    public final void p(zzvo zzvoVar) {
        boolean z10;
        zzvq zzvqVar = new zzvq(zzvoVar);
        synchronized (this.f20932d) {
            z10 = !this.f20935g.equals(zzvqVar);
            this.f20935g = zzvqVar;
        }
        if (z10) {
            if (zzvqVar.f20885m0 && this.f20933e == null) {
                zzee.e("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            h();
        }
    }

    public zzwc(Context context) {
        zzux zzuxVar = new zzux();
        zzvq zzvqVarD = zzvq.d(context);
        this.f20932d = new Object();
        this.f20933e = context != null ? context.getApplicationContext() : null;
        this.f20938j = zzuxVar;
        this.f20935g = zzvqVarD;
        this.f20937i = zzk.f20001c;
        boolean z10 = false;
        if (context != null && zzew.y(context)) {
            z10 = true;
        }
        this.f20934f = z10;
        if (!z10 && context != null && zzew.f17494a >= 32) {
            this.f20936h = zzvv.a(context);
        }
        if (this.f20935g.f20885m0 && context == null) {
            zzee.e("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }
}
