package com.google.android.gms.internal.ads;

import com.facebook.internal.security.CertificateUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzti implements zzsq, zzsp {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzsq[] f20682o;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzsp f20686s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzur f20687t;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zzsd f20690w;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ArrayList f20684q = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final HashMap f20685r = new HashMap();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzul f20689v = new zzsc(new zzul[0]);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final IdentityHashMap f20683p = new IdentityHashMap();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zzsq[] f20688u = new zzsq[0];

    public zzti(zzsd zzsdVar, long[] jArr, zzsq[] zzsqVarArr, byte... bArr) {
        this.f20690w = zzsdVar;
        this.f20682o = zzsqVarArr;
        for (int i10 = 0; i10 < zzsqVarArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                this.f20682o[i10] = new zztg(zzsqVarArr[i10], j10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long D(long j10) {
        long jD = this.f20688u[0].D(j10);
        int i10 = 1;
        while (true) {
            zzsq[] zzsqVarArr = this.f20688u;
            if (i10 >= zzsqVarArr.length) {
                return jD;
            }
            if (zzsqVarArr[i10].D(jD) != jD) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long a() {
        return this.f20689v.a();
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final void b(long j10) {
        this.f20689v.b(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean c(long j10) {
        if (this.f20684q.isEmpty()) {
            return this.f20689v.c(j10);
        }
        int size = this.f20684q.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((zzsq) this.f20684q.get(i10)).c(j10);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long d() {
        long j10 = -9223372036854775807L;
        for (zzsq zzsqVar : this.f20688u) {
            long jD = zzsqVar.d();
            if (jD == -9223372036854775807L) {
                if (j10 != -9223372036854775807L && zzsqVar.D(j10) != j10) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j10 == -9223372036854775807L) {
                for (zzsq zzsqVar2 : this.f20688u) {
                    if (zzsqVar2 == zzsqVar) {
                        break;
                    }
                    if (zzsqVar2.D(jD) != jD) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j10 = jD;
            } else if (jD != j10) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void e(zzsq zzsqVar) {
        this.f20684q.remove(zzsqVar);
        if (!this.f20684q.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (zzsq zzsqVar2 : this.f20682o) {
            i10 += zzsqVar2.f().f20819a;
        }
        zzcp[] zzcpVarArr = new zzcp[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            zzsq[] zzsqVarArr = this.f20682o;
            if (i11 >= zzsqVarArr.length) {
                this.f20687t = new zzur(zzcpVarArr);
                zzsp zzspVar = this.f20686s;
                Objects.requireNonNull(zzspVar);
                zzspVar.e(this);
                return;
            }
            zzur zzurVarF = zzsqVarArr[i11].f();
            int i13 = zzurVarF.f20819a;
            int i14 = 0;
            while (i14 < i13) {
                zzcp zzcpVarB = zzurVarF.b(i14);
                zzcp zzcpVarC = zzcpVarB.c(i11 + CertificateUtil.DELIMITER + zzcpVarB.f13691b);
                this.f20685r.put(zzcpVarC, zzcpVarB);
                zzcpVarArr[i12] = zzcpVarC;
                i14++;
                i12++;
            }
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final zzur f() {
        zzur zzurVar = this.f20687t;
        Objects.requireNonNull(zzurVar);
        return zzurVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuk
    public final /* bridge */ /* synthetic */ void g(zzul zzulVar) {
        zzsp zzspVar = this.f20686s;
        Objects.requireNonNull(zzspVar);
        zzspVar.g(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void h(long j10, boolean z10) {
        for (zzsq zzsqVar : this.f20688u) {
            zzsqVar.h(j10, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void i() throws IOException {
        for (zzsq zzsqVar : this.f20682o) {
            zzsqVar.i();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzsq
    public final long j(zzwe[] zzweVarArr, boolean[] zArr, zzuj[] zzujVarArr, boolean[] zArr2, long j10) {
        int length;
        Integer num;
        int length2 = zzweVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i10 = 0;
        while (true) {
            length = zzweVarArr.length;
            if (i10 >= length) {
                break;
            }
            zzuj zzujVar = zzujVarArr[i10];
            num = zzujVar != null ? (Integer) this.f20683p.get(zzujVar) : null;
            iArr[i10] = num == null ? -1 : num.intValue();
            iArr2[i10] = -1;
            zzwe zzweVar = zzweVarArr[i10];
            if (zzweVar != null) {
                zzcp zzcpVar = (zzcp) this.f20685r.get(zzweVar.b());
                Objects.requireNonNull(zzcpVar);
                int i11 = 0;
                while (true) {
                    zzsq[] zzsqVarArr = this.f20682o;
                    if (i11 >= zzsqVarArr.length) {
                        break;
                    }
                    if (zzsqVarArr[i11].f().a(zzcpVar) != -1) {
                        iArr2[i10] = i11;
                        break;
                    }
                    i11++;
                }
            }
            i10++;
        }
        this.f20683p.clear();
        zzuj[] zzujVarArr2 = new zzuj[length];
        Object[] objArr = new zzwe[length];
        ArrayList arrayList = new ArrayList(this.f20682o.length);
        long j11 = j10;
        int i12 = 0;
        Object[] objArr2 = new zzuj[length];
        while (i12 < this.f20682o.length) {
            for (int i13 = 0; i13 < zzweVarArr.length; i13++) {
                objArr2[i13] = iArr[i13] == i12 ? zzujVarArr[i13] : num;
                if (iArr2[i13] == i12) {
                    zzwe zzweVar2 = zzweVarArr[i13];
                    Objects.requireNonNull(zzweVar2);
                    zzcp zzcpVar2 = (zzcp) this.f20685r.get(zzweVar2.b());
                    Objects.requireNonNull(zzcpVar2);
                    objArr[i13] = new zztf(zzweVar2, zzcpVar2);
                } else {
                    objArr[i13] = num;
                }
            }
            int i14 = i12;
            ArrayList arrayList2 = arrayList;
            Object[] objArr3 = objArr2;
            Object[] objArr4 = objArr;
            long j12 = this.f20682o[i12].j(objArr, zArr, objArr2, zArr2, j11);
            if (i14 == 0) {
                j11 = j12;
            } else if (j12 != j11) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i15 = 0; i15 < zzweVarArr.length; i15++) {
                if (iArr2[i15] == i14) {
                    Object obj = objArr3[i15];
                    Objects.requireNonNull(obj);
                    zzujVarArr2[i15] = obj;
                    this.f20683p.put(obj, Integer.valueOf(i14));
                    z10 = true;
                } else if (iArr[i15] == i14) {
                    zzdl.f(objArr3[i15] == null);
                }
            }
            if (z10) {
                arrayList2.add(this.f20682o[i14]);
            }
            i12 = i14 + 1;
            arrayList = arrayList2;
            objArr2 = objArr3;
            objArr = objArr4;
            num = null;
        }
        System.arraycopy(zzujVarArr2, 0, zzujVarArr, 0, length);
        zzsq[] zzsqVarArr2 = (zzsq[]) arrayList.toArray(new zzsq[0]);
        this.f20688u = zzsqVarArr2;
        this.f20689v = new zzsc(zzsqVarArr2);
        return j11;
    }

    public final zzsq k(int i10) {
        zzsq zzsqVar = this.f20682o[i10];
        return zzsqVar instanceof zztg ? ((zztg) zzsqVar).f20677o : zzsqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void m(zzsp zzspVar, long j10) {
        this.f20686s = zzspVar;
        Collections.addAll(this.f20684q, this.f20682o);
        for (zzsq zzsqVar : this.f20682o) {
            zzsqVar.m(this, j10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean n() {
        return this.f20689v.n();
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long o(long j10, zzkq zzkqVar) {
        zzsq[] zzsqVarArr = this.f20688u;
        return (zzsqVarArr.length > 0 ? zzsqVarArr[0] : this.f20682o[0]).o(j10, zzkqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long zzb() {
        return this.f20689v.zzb();
    }
}
