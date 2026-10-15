package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgs extends zzcn {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f19562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzum f19563g;

    public zzgs(boolean z10, zzum zzumVar, byte[] bArr) {
        this.f19563g = zzumVar;
        this.f19562f = zzumVar.c();
    }

    private final int w(int i10, boolean z10) {
        if (z10) {
            return this.f19563g.d(i10);
        }
        if (i10 >= this.f19562f - 1) {
            return -1;
        }
        return i10 + 1;
    }

    private final int x(int i10, boolean z10) {
        if (z10) {
            return this.f19563g.e(i10);
        }
        if (i10 <= 0) {
            return -1;
        }
        return i10 - 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int a(Object obj) {
        int iA;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int iP = p(obj2);
        if (iP == -1 || (iA = u(iP).a(obj3)) == -1) {
            return -1;
        }
        return s(iP) + iA;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck d(int i10, zzck zzckVar, boolean z10) {
        int iQ = q(i10);
        int iT = t(iQ);
        u(iQ).d(i10 - s(iQ), zzckVar, z10);
        zzckVar.f13166c += iT;
        if (z10) {
            Object objV = v(iQ);
            Object obj = zzckVar.f13165b;
            Objects.requireNonNull(obj);
            zzckVar.f13165b = Pair.create(objV, obj);
        }
        return zzckVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzcm e(int i10, zzcm zzcmVar, long j10) {
        int iR = r(i10);
        int iT = t(iR);
        int iS = s(iR);
        u(iR).e(i10 - iT, zzcmVar, j10);
        Object objV = v(iR);
        if (!zzcm.f13450o.equals(zzcmVar.f13462a)) {
            objV = Pair.create(objV, zzcmVar.f13462a);
        }
        zzcmVar.f13462a = objV;
        zzcmVar.f13474m += iS;
        zzcmVar.f13475n += iS;
        return zzcmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final Object f(int i10) {
        int iQ = q(i10);
        return Pair.create(v(iQ), u(iQ).f(i10 - s(iQ)));
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int g(boolean z10) {
        if (this.f19562f == 0) {
            return -1;
        }
        int iA = z10 ? this.f19563g.a() : 0;
        while (u(iA).o()) {
            iA = w(iA, z10);
            if (iA == -1) {
                return -1;
            }
        }
        return t(iA) + u(iA).g(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int h(boolean z10) {
        int i10 = this.f19562f;
        if (i10 == 0) {
            return -1;
        }
        int iB = z10 ? this.f19563g.b() : i10 - 1;
        while (u(iB).o()) {
            iB = x(iB, z10);
            if (iB == -1) {
                return -1;
            }
        }
        return t(iB) + u(iB).h(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int j(int i10, int i11, boolean z10) {
        int iR = r(i10);
        int iT = t(iR);
        int iJ = u(iR).j(i10 - iT, i11 == 2 ? 0 : i11, z10);
        if (iJ != -1) {
            return iT + iJ;
        }
        int iW = w(iR, z10);
        while (iW != -1 && u(iW).o()) {
            iW = w(iW, z10);
        }
        if (iW != -1) {
            return t(iW) + u(iW).g(z10);
        }
        if (i11 == 2) {
            return g(z10);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int k(int i10, int i11, boolean z10) {
        int iR = r(i10);
        int iT = t(iR);
        int iK = u(iR).k(i10 - iT, 0, false);
        if (iK != -1) {
            return iT + iK;
        }
        int iX = x(iR, false);
        while (iX != -1 && u(iX).o()) {
            iX = x(iX, false);
        }
        if (iX != -1) {
            return t(iX) + u(iX).h(false);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck n(Object obj, zzck zzckVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int iP = p(obj2);
        int iT = t(iP);
        u(iP).n(obj3, zzckVar);
        zzckVar.f13166c += iT;
        zzckVar.f13165b = obj;
        return zzckVar;
    }

    protected abstract int p(Object obj);

    protected abstract int q(int i10);

    protected abstract int r(int i10);

    protected abstract int s(int i10);

    protected abstract int t(int i10);

    protected abstract zzcn u(int i10);

    protected abstract Object v(int i10);
}
