package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzhx;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhv<T extends zzhx<T>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzhv f22688d = new zzhv(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzki<T, Object> f22689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f22690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f22691c;

    private zzhv() {
        this.f22689a = zzki.b(16);
    }

    public static int a(zzhx<?> zzhxVar, Object obj) {
        zzlm zzlmVarZzb = zzhxVar.zzb();
        int iZza = zzhxVar.zza();
        if (!zzhxVar.d()) {
            return b(zzlmVarZzb, iZza, obj);
        }
        int iB = 0;
        if (zzhxVar.b()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iB += j(zzlmVarZzb, it.next());
            }
            return zzhm.h0(iZza) + iB + zzhm.E0(iB);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iB += b(zzlmVarZzb, iZza, it2.next());
        }
        return iB;
    }

    static int b(zzlm zzlmVar, int i10, Object obj) {
        int iH0 = zzhm.h0(i10);
        if (zzlmVar == zzlm.f22918z) {
            zzii.g((zzjn) obj);
            iH0 <<= 1;
        }
        return iH0 + j(zzlmVar, obj);
    }

    public static <T extends zzhx<T>> zzhv<T> c() {
        return f22688d;
    }

    private final Object d(T t10) {
        Object obj = this.f22689a.get(t10);
        if (!(obj instanceof zzis)) {
            return obj;
        }
        return zzis.e();
    }

    private static Object e(Object obj) {
        if (obj instanceof zzjt) {
            return ((zzjt) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static void f(zzhm zzhmVar, zzlm zzlmVar, int i10, Object obj) throws IOException {
        if (zzlmVar == zzlm.f22918z) {
            zzjn zzjnVar = (zzjn) obj;
            zzii.g(zzjnVar);
            zzhmVar.m(i10, 3);
            zzjnVar.d(zzhmVar);
            zzhmVar.m(i10, 4);
        }
        zzhmVar.m(i10, zzlmVar.e());
        switch (zzhy.f22695b[zzlmVar.ordinal()]) {
            case 1:
                zzhmVar.h(((Double) obj).doubleValue());
                break;
            case 2:
                zzhmVar.i(((Float) obj).floatValue());
                break;
            case 3:
                zzhmVar.t(((Long) obj).longValue());
                break;
            case 4:
                zzhmVar.t(((Long) obj).longValue());
                break;
            case 5:
                zzhmVar.j(((Integer) obj).intValue());
                break;
            case 6:
                zzhmVar.a0(((Long) obj).longValue());
                break;
            case 7:
                zzhmVar.f0(((Integer) obj).intValue());
                break;
            case 8:
                zzhmVar.y(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzjn) obj).d(zzhmVar);
                break;
            case 10:
                zzhmVar.v((zzjn) obj);
                break;
            case 11:
                if (!(obj instanceof zzgv)) {
                    zzhmVar.w((String) obj);
                } else {
                    zzhmVar.u((zzgv) obj);
                }
                break;
            case 12:
                if (!(obj instanceof zzgv)) {
                    byte[] bArr = (byte[]) obj;
                    zzhmVar.T(bArr, 0, bArr.length);
                } else {
                    zzhmVar.u((zzgv) obj);
                }
                break;
            case 13:
                zzhmVar.O(((Integer) obj).intValue());
                break;
            case 14:
                zzhmVar.f0(((Integer) obj).intValue());
                break;
            case 15:
                zzhmVar.a0(((Long) obj).longValue());
                break;
            case 16:
                zzhmVar.X(((Integer) obj).intValue());
                break;
            case 17:
                zzhmVar.S(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof zzih)) {
                    zzhmVar.j(((Integer) obj).intValue());
                } else {
                    zzhmVar.j(((zzih) obj).zza());
                }
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void h(com.google.android.gms.internal.firebase_auth.zzlm r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.firebase_auth.zzii.d(r3)
            int[] r0 = com.google.android.gms.internal.firebase_auth.zzhy.f22694a
            com.google.android.gms.internal.firebase_auth.zzlt r2 = r2.c()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L3a;
                case 4: goto L37;
                case 5: goto L34;
                case 6: goto L31;
                case 7: goto L28;
                case 8: goto L1f;
                case 9: goto L16;
                default: goto L14;
            }
        L14:
            r0 = 0
            goto L42
        L16:
            boolean r2 = r3 instanceof com.google.android.gms.internal.firebase_auth.zzjn
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof com.google.android.gms.internal.firebase_auth.zzis
            if (r2 == 0) goto L14
            goto L42
        L1f:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof com.google.android.gms.internal.firebase_auth.zzih
            if (r2 == 0) goto L14
            goto L42
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.firebase_auth.zzgv
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L14
            goto L42
        L31:
            boolean r0 = r3 instanceof java.lang.String
            goto L42
        L34:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L42
        L37:
            boolean r0 = r3 instanceof java.lang.Double
            goto L42
        L3a:
            boolean r0 = r3 instanceof java.lang.Float
            goto L42
        L3d:
            boolean r0 = r3 instanceof java.lang.Long
            goto L42
        L40:
            boolean r0 = r3 instanceof java.lang.Integer
        L42:
            if (r0 == 0) goto L45
            return
        L45:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L4e
        L4d:
            throw r2
        L4e:
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzhv.h(com.google.android.gms.internal.firebase_auth.zzlm, java.lang.Object):void");
    }

    private static <T extends zzhx<T>> boolean i(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.a() == zzlt.MESSAGE) {
            if (key.d()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((zzjn) it.next()).b()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof zzjn)) {
                    if (value instanceof zzis) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((zzjn) value).b()) {
                    return false;
                }
            }
        }
        return true;
    }

    private static int j(zzlm zzlmVar, Object obj) {
        switch (zzhy.f22695b[zzlmVar.ordinal()]) {
            case 1:
                return zzhm.z(((Double) obj).doubleValue());
            case 2:
                return zzhm.A(((Float) obj).floatValue());
            case 3:
                return zzhm.e0(((Long) obj).longValue());
            case 4:
                return zzhm.j0(((Long) obj).longValue());
            case 5:
                return zzhm.l0(((Integer) obj).intValue());
            case 6:
                return zzhm.s0(((Long) obj).longValue());
            case 7:
                return zzhm.x0(((Integer) obj).intValue());
            case 8:
                return zzhm.L(((Boolean) obj).booleanValue());
            case 9:
                return zzhm.W((zzjn) obj);
            case 10:
                return obj instanceof zzis ? zzhm.d((zzis) obj) : zzhm.J((zzjn) obj);
            case 11:
                return obj instanceof zzgv ? zzhm.I((zzgv) obj) : zzhm.K((String) obj);
            case 12:
                return obj instanceof zzgv ? zzhm.I((zzgv) obj) : zzhm.M((byte[]) obj);
            case 13:
                return zzhm.p0(((Integer) obj).intValue());
            case 14:
                return zzhm.A0(((Integer) obj).intValue());
            case 15:
                return zzhm.w0(((Long) obj).longValue());
            case 16:
                return zzhm.t0(((Integer) obj).intValue());
            case 17:
                return zzhm.o0(((Long) obj).longValue());
            case 18:
                return obj instanceof zzih ? zzhm.C0(((zzih) obj).zza()) : zzhm.C0(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private final void l(T t10, Object obj) {
        if (!t10.d()) {
            h(t10.zzb(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj2 = arrayList.get(i10);
                i10++;
                h(t10.zzb(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzis) {
            this.f22691c = true;
        }
        this.f22689a.put(t10, obj);
    }

    private final void m(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzis) {
            value = zzis.e();
        }
        if (key.d()) {
            Object objD = d(key);
            if (objD == null) {
                objD = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objD).add(e(it.next()));
            }
            this.f22689a.put(key, objD);
            return;
        }
        if (key.a() != zzlt.MESSAGE) {
            this.f22689a.put(key, e(value));
            return;
        }
        Object objD2 = d(key);
        if (objD2 == null) {
            this.f22689a.put(key, e(value));
        } else {
            this.f22689a.put(key, objD2 instanceof zzjt ? key.D((zzjt) objD2, (zzjt) value) : key.v(((zzjn) objD2).R(), (zzjn) value).e());
        }
    }

    private static int n(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.a() != zzlt.MESSAGE || key.d() || key.b()) ? a(key, value) : value instanceof zzis ? zzhm.D(entry.getKey().zza(), (zzis) value) : zzhm.E(entry.getKey().zza(), (zzjn) value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzhv zzhvVar = new zzhv();
        for (int i10 = 0; i10 < this.f22689a.l(); i10++) {
            Map.Entry<K, Object> entryJ = this.f22689a.j(i10);
            zzhvVar.l((zzhx) entryJ.getKey(), entryJ.getValue());
        }
        Iterator it = this.f22689a.o().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzhvVar.l((zzhx) entry.getKey(), entry.getValue());
        }
        zzhvVar.f22691c = this.f22691c;
        return zzhvVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzhv) {
            return this.f22689a.equals(((zzhv) obj).f22689a);
        }
        return false;
    }

    public final void g(zzhv<T> zzhvVar) {
        for (int i10 = 0; i10 < zzhvVar.f22689a.l(); i10++) {
            m(zzhvVar.f22689a.j(i10));
        }
        Iterator it = zzhvVar.f22689a.o().iterator();
        while (it.hasNext()) {
            m((Map.Entry) it.next());
        }
    }

    public final int hashCode() {
        return this.f22689a.hashCode();
    }

    public final void k() {
        if (this.f22690b) {
            return;
        }
        this.f22689a.e();
        this.f22690b = true;
    }

    public final boolean o() {
        return this.f22690b;
    }

    public final Iterator<Map.Entry<T, Object>> p() {
        return this.f22691c ? new zzit(this.f22689a.entrySet().iterator()) : this.f22689a.entrySet().iterator();
    }

    final Iterator<Map.Entry<T, Object>> q() {
        return this.f22691c ? new zzit(this.f22689a.q().iterator()) : this.f22689a.q().iterator();
    }

    public final boolean r() {
        for (int i10 = 0; i10 < this.f22689a.l(); i10++) {
            if (!i(this.f22689a.j(i10))) {
                return false;
            }
        }
        Iterator it = this.f22689a.o().iterator();
        while (it.hasNext()) {
            if (!i((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int s() {
        int iN = 0;
        for (int i10 = 0; i10 < this.f22689a.l(); i10++) {
            iN += n(this.f22689a.j(i10));
        }
        Iterator it = this.f22689a.o().iterator();
        while (it.hasNext()) {
            iN += n((Map.Entry) it.next());
        }
        return iN;
    }

    private zzhv(boolean z10) {
        this(zzki.b(0));
        k();
    }

    private zzhv(zzki<T, Object> zzkiVar) {
        this.f22689a = zzkiVar;
        k();
    }
}
