package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzjt f23616d = new zzjt(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzmh f23617a = new zzlx(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f23618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23619c;

    private zzjt() {
    }

    public static zzjt a() {
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final void d(com.google.android.gms.internal.measurement.zzjs r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.measurement.zznb r0 = r4.zzb()
            com.google.android.gms.internal.measurement.zzkk.e(r5)
            com.google.android.gms.internal.measurement.zznb r1 = com.google.android.gms.internal.measurement.zznb.f23778p
            com.google.android.gms.internal.measurement.zznc r1 = com.google.android.gms.internal.measurement.zznc.INT
            com.google.android.gms.internal.measurement.zznc r0 = r0.c()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L41;
                case 1: goto L3e;
                case 2: goto L3b;
                case 3: goto L38;
                case 4: goto L35;
                case 5: goto L32;
                case 6: goto L29;
                case 7: goto L20;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L46
        L17:
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzlj
            if (r0 != 0) goto L45
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzko
            if (r0 == 0) goto L46
            goto L45
        L20:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L45
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzke
            if (r0 == 0) goto L46
            goto L45
        L29:
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzjb
            if (r0 != 0) goto L45
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L46
            goto L45
        L32:
            boolean r0 = r5 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r5 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r5 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r5 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r5 instanceof java.lang.Integer
        L43:
            if (r0 == 0) goto L46
        L45:
            return
        L46:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            int r3 = r4.zza()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            r2 = 1
            com.google.android.gms.internal.measurement.zznb r4 = r4.zzb()
            com.google.android.gms.internal.measurement.zznc r4 = r4.c()
            r1[r2] = r4
            r4 = 2
            java.lang.Class r5 = r5.getClass()
            java.lang.String r5 = r5.getName()
            r1[r4] = r5
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r4 = java.lang.String.format(r4, r1)
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjt.d(com.google.android.gms.internal.measurement.zzjs, java.lang.Object):void");
    }

    public final void b() {
        if (this.f23618b) {
            return;
        }
        this.f23617a.a();
        this.f23618b = true;
    }

    public final void c(zzjs zzjsVar, Object obj) {
        if (!zzjsVar.a()) {
            d(zzjsVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                d(zzjsVar, arrayList.get(i10));
            }
            obj = arrayList;
        }
        if (obj instanceof zzko) {
            this.f23619c = true;
        }
        this.f23617a.put(zzjsVar, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzjt zzjtVar = new zzjt();
        for (int i10 = 0; i10 < this.f23617a.b(); i10++) {
            Map.Entry entryH = this.f23617a.h(i10);
            zzjtVar.c((zzjs) entryH.getKey(), entryH.getValue());
        }
        for (Map.Entry entry : this.f23617a.c()) {
            zzjtVar.c((zzjs) entry.getKey(), entry.getValue());
        }
        zzjtVar.f23619c = this.f23619c;
        return zzjtVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzjt) {
            return this.f23617a.equals(((zzjt) obj).f23617a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f23617a.hashCode();
    }

    private zzjt(boolean z10) {
        b();
        b();
    }
}
