package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzld {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaa f20117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f20118b;

    public zzld(zzaa zzaaVar, SparseArray sparseArray) {
        this.f20117a = zzaaVar;
        SparseArray sparseArray2 = new SparseArray(zzaaVar.b());
        for (int i10 = 0; i10 < zzaaVar.b(); i10++) {
            int iA = zzaaVar.a(i10);
            zzlc zzlcVar = (zzlc) sparseArray.get(iA);
            Objects.requireNonNull(zzlcVar);
            sparseArray2.append(iA, zzlcVar);
        }
        this.f20118b = sparseArray2;
    }

    public final int a(int i10) {
        return this.f20117a.a(i10);
    }

    public final int b() {
        return this.f20117a.b();
    }

    public final zzlc c(int i10) {
        zzlc zzlcVar = (zzlc) this.f20118b.get(i10);
        Objects.requireNonNull(zzlcVar);
        return zzlcVar;
    }

    public final boolean d(int i10) {
        return this.f20117a.c(i10);
    }
}
