package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzek;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzel<T extends zzek<T>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzel f21479d = new zzel(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzgl<T, Object> f21480a = new zzge(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f21481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f21482c;

    private zzel() {
    }

    public static <T extends zzek<T>> zzel<T> a() {
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final void d(T r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.auth.zzhe r0 = r4.zzb()
            com.google.android.gms.internal.auth.zzev.e(r5)
            com.google.android.gms.internal.auth.zzhe r1 = com.google.android.gms.internal.auth.zzhe.f21588p
            com.google.android.gms.internal.auth.zzhf r1 = com.google.android.gms.internal.auth.zzhf.INT
            com.google.android.gms.internal.auth.zzhf r0 = r0.c()
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
            boolean r0 = r5 instanceof com.google.android.gms.internal.auth.zzfq
            if (r0 != 0) goto L45
            boolean r0 = r5 instanceof com.google.android.gms.internal.auth.zzex
            if (r0 == 0) goto L46
            goto L45
        L20:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L45
            boolean r0 = r5 instanceof com.google.android.gms.internal.auth.zzes
            if (r0 == 0) goto L46
            goto L45
        L29:
            boolean r0 = r5 instanceof com.google.android.gms.internal.auth.zzeb
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
            com.google.android.gms.internal.auth.zzhe r4 = r4.zzb()
            com.google.android.gms.internal.auth.zzhf r4 = r4.c()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzel.d(com.google.android.gms.internal.auth.zzek, java.lang.Object):void");
    }

    public final void b() {
        if (this.f21481b) {
            return;
        }
        this.f21480a.a();
        this.f21481b = true;
    }

    public final void c(T t10, Object obj) {
        if (!t10.a()) {
            d(t10, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                d(t10, arrayList.get(i10));
            }
            obj = arrayList;
        }
        if (obj instanceof zzex) {
            this.f21482c = true;
        }
        this.f21480a.put(t10, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzel zzelVar = new zzel();
        for (int i10 = 0; i10 < this.f21480a.b(); i10++) {
            Map.Entry<K, Object> entryH = this.f21480a.h(i10);
            zzelVar.c((zzek) entryH.getKey(), entryH.getValue());
        }
        Iterator it = this.f21480a.c().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzelVar.c((zzek) entry.getKey(), entry.getValue());
        }
        zzelVar.f21482c = this.f21482c;
        return zzelVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzel) {
            return this.f21480a.equals(((zzel) obj).f21480a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f21480a.hashCode();
    }

    private zzel(boolean z10) {
        b();
        b();
    }
}
