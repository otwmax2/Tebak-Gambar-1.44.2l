package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzkb<FieldDescriptorType extends zzkd<FieldDescriptorType>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzkb f22119d = new zzkb(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f22121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f22122c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzmi<FieldDescriptorType, Object> f22120a = zzmi.f(16);

    private zzkb() {
    }

    static int e(zznm zznmVar, int i10, Object obj) {
        int iQ = zzjr.q(i10);
        if (zznmVar == zznm.f22352z) {
            zzkm.i((zzlq) obj);
            iQ <<= 1;
        }
        return iQ + l(zznmVar, obj);
    }

    private final Object f(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f22120a.get(fielddescriptortype);
        return obj instanceof zzkt ? zzkt.e() : obj;
    }

    static void g(zzjr zzjrVar, zznm zznmVar, int i10, Object obj) throws IOException {
        if (zznmVar == zznm.f22352z) {
            zzlq zzlqVar = (zzlq) obj;
            zzkm.i(zzlqVar);
            zzjrVar.J(i10, 3);
            zzlqVar.d(zzjrVar);
            zzjrVar.J(i10, 4);
        }
        zzjrVar.J(i10, zznmVar.e());
        switch (zzkc.f22124b[zznmVar.ordinal()]) {
            case 1:
                zzjrVar.e(((Double) obj).doubleValue());
                break;
            case 2:
                zzjrVar.f(((Float) obj).floatValue());
                break;
            case 3:
                zzjrVar.s0(((Long) obj).longValue());
                break;
            case 4:
                zzjrVar.s0(((Long) obj).longValue());
                break;
            case 5:
                zzjrVar.D0(((Integer) obj).intValue());
                break;
            case 6:
                zzjrVar.w0(((Long) obj).longValue());
                break;
            case 7:
                zzjrVar.p(((Integer) obj).intValue());
                break;
            case 8:
                zzjrVar.W(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzlq) obj).d(zzjrVar);
                break;
            case 10:
                zzjrVar.N((zzlq) obj);
                break;
            case 11:
                if (!(obj instanceof zzjc)) {
                    zzjrVar.t0((String) obj);
                } else {
                    zzjrVar.n((zzjc) obj);
                }
                break;
            case 12:
                if (!(obj instanceof zzjc)) {
                    byte[] bArr = (byte[]) obj;
                    zzjrVar.f0(bArr, 0, bArr.length);
                } else {
                    zzjrVar.n((zzjc) obj);
                }
                break;
            case 13:
                zzjrVar.E0(((Integer) obj).intValue());
                break;
            case 14:
                zzjrVar.p(((Integer) obj).intValue());
                break;
            case 15:
                zzjrVar.w0(((Long) obj).longValue());
                break;
            case 16:
                zzjrVar.F0(((Integer) obj).intValue());
                break;
            case 17:
                zzjrVar.v0(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof zzkn)) {
                    zzjrVar.D0(((Integer) obj).intValue());
                } else {
                    zzjrVar.D0(((zzkn) obj).t());
                }
                break;
        }
    }

    private final void i(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.C()) {
            j(fielddescriptortype.G(), obj);
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
                j(fielddescriptortype.G(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzkt) {
            this.f22122c = true;
        }
        this.f22120a.put(fielddescriptortype, obj);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0011. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void j(com.google.android.gms.internal.drive.zznm r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.drive.zzkm.a(r3)
            int[] r0 = com.google.android.gms.internal.drive.zzkc.f22123a
            com.google.android.gms.internal.drive.zznr r2 = r2.c()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L41;
                case 2: goto L3e;
                case 3: goto L3b;
                case 4: goto L38;
                case 5: goto L35;
                case 6: goto L32;
                case 7: goto L29;
                case 8: goto L20;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L44
        L15:
            boolean r2 = r3 instanceof com.google.android.gms.internal.drive.zzlq
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof com.google.android.gms.internal.drive.zzkt
            if (r2 == 0) goto L1e
            goto L43
        L1e:
            r0 = 0
            goto L43
        L20:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof com.google.android.gms.internal.drive.zzkn
            if (r2 == 0) goto L1e
            goto L43
        L29:
            boolean r2 = r3 instanceof com.google.android.gms.internal.drive.zzjc
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L1e
            goto L43
        L32:
            boolean r0 = r3 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r3 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r3 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r3 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r3 instanceof java.lang.Integer
        L43:
            r1 = r0
        L44:
            if (r1 == 0) goto L47
            return
        L47:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L50
        L4f:
            throw r2
        L50:
            goto L4f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzkb.j(com.google.android.gms.internal.drive.zznm, java.lang.Object):void");
    }

    public static int k(zzkd<?> zzkdVar, Object obj) {
        zznm zznmVarG = zzkdVar.G();
        int iT = zzkdVar.t();
        if (!zzkdVar.C()) {
            return e(zznmVarG, iT, obj);
        }
        int iE = 0;
        if (zzkdVar.z()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iE += l(zznmVarG, it.next());
            }
            return zzjr.q(iT) + iE + zzjr.y(iE);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iE += e(zznmVarG, iT, it2.next());
        }
        return iE;
    }

    private static int l(zznm zznmVar, Object obj) {
        switch (zzkc.f22124b[zznmVar.ordinal()]) {
            case 1:
                return zzjr.z(((Double) obj).doubleValue());
            case 2:
                return zzjr.A(((Float) obj).floatValue());
            case 3:
                return zzjr.x0(((Long) obj).longValue());
            case 4:
                return zzjr.y0(((Long) obj).longValue());
            case 5:
                return zzjr.r(((Integer) obj).intValue());
            case 6:
                return zzjr.A0(((Long) obj).longValue());
            case 7:
                return zzjr.u(((Integer) obj).intValue());
            case 8:
                return zzjr.d0(((Boolean) obj).booleanValue());
            case 9:
                return zzjr.c0((zzlq) obj);
            case 10:
                return obj instanceof zzkt ? zzjr.c((zzkt) obj) : zzjr.R((zzlq) obj);
            case 11:
                return obj instanceof zzjc ? zzjr.H((zzjc) obj) : zzjr.u0((String) obj);
            case 12:
                return obj instanceof zzjc ? zzjr.H((zzjc) obj) : zzjr.S((byte[]) obj);
            case 13:
                return zzjr.s(((Integer) obj).intValue());
            case 14:
                return zzjr.v(((Integer) obj).intValue());
            case 15:
                return zzjr.B0(((Long) obj).longValue());
            case 16:
                return zzjr.t(((Integer) obj).intValue());
            case 17:
                return zzjr.z0(((Long) obj).longValue());
            case 18:
                return obj instanceof zzkn ? zzjr.w(((zzkn) obj).t()) : zzjr.w(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean m(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.B() == zznr.MESSAGE) {
            if (key.C()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((zzlq) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof zzlq)) {
                    if (value instanceof zzkt) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((zzlq) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    private final void o(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzkt) {
            value = zzkt.e();
        }
        if (key.C()) {
            Object objF = f(key);
            if (objF == null) {
                objF = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objF).add(s(it.next()));
            }
            this.f22120a.put(key, objF);
            return;
        }
        if (key.B() != zznr.MESSAGE) {
            this.f22120a.put(key, s(value));
            return;
        }
        Object objF2 = f(key);
        if (objF2 == null) {
            this.f22120a.put(key, s(value));
        } else {
            this.f22120a.put(key, objF2 instanceof zzlx ? key.A((zzlx) objF2, (zzlx) value) : key.y(((zzlq) objF2).g(), (zzlq) value).n1());
        }
    }

    public static <T extends zzkd<T>> zzkb<T> p() {
        return f22119d;
    }

    private static int r(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.B() != zznr.MESSAGE || key.C() || key.z()) ? k(key, value) : value instanceof zzkt ? zzjr.D(entry.getKey().t(), (zzkt) value) : zzjr.E(entry.getKey().t(), (zzlq) value);
    }

    private static Object s(Object obj) {
        if (obj instanceof zzlx) {
            return ((zzlx) obj).x3();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    final Iterator<Map.Entry<FieldDescriptorType, Object>> a() {
        return this.f22122c ? new zzkw(this.f22120a.q().iterator()) : this.f22120a.q().iterator();
    }

    public final boolean b() {
        return this.f22121b;
    }

    public final boolean c() {
        for (int i10 = 0; i10 < this.f22120a.o(); i10++) {
            if (!m(this.f22120a.h(i10))) {
                return false;
            }
        }
        Iterator it = this.f22120a.p().iterator();
        while (it.hasNext()) {
            if (!m((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzkb zzkbVar = new zzkb();
        for (int i10 = 0; i10 < this.f22120a.o(); i10++) {
            Map.Entry<K, Object> entryH = this.f22120a.h(i10);
            zzkbVar.i((zzkd) entryH.getKey(), entryH.getValue());
        }
        Iterator it = this.f22120a.p().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzkbVar.i((zzkd) entry.getKey(), entry.getValue());
        }
        zzkbVar.f22122c = this.f22122c;
        return zzkbVar;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> d() {
        return this.f22122c ? new zzkw(this.f22120a.entrySet().iterator()) : this.f22120a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzkb) {
            return this.f22120a.equals(((zzkb) obj).f22120a);
        }
        return false;
    }

    public final void h(zzkb<FieldDescriptorType> zzkbVar) {
        for (int i10 = 0; i10 < zzkbVar.f22120a.o(); i10++) {
            o(zzkbVar.f22120a.h(i10));
        }
        Iterator it = zzkbVar.f22120a.p().iterator();
        while (it.hasNext()) {
            o((Map.Entry) it.next());
        }
    }

    public final int hashCode() {
        return this.f22120a.hashCode();
    }

    public final void n() {
        if (this.f22121b) {
            return;
        }
        this.f22120a.l();
        this.f22121b = true;
    }

    public final int q() {
        int iR = 0;
        for (int i10 = 0; i10 < this.f22120a.o(); i10++) {
            iR += r(this.f22120a.h(i10));
        }
        Iterator it = this.f22120a.p().iterator();
        while (it.hasNext()) {
            iR += r((Map.Entry) it.next());
        }
        return iR;
    }

    private zzkb(boolean z10) {
        n();
    }
}
