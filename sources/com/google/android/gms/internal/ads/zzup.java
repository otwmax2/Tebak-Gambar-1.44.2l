package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f20812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f20813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdp f20814c;

    public zzup() {
        zzuo zzuoVar = new zzdp() { // from class: com.google.android.gms.internal.ads.zzuo
        };
        throw null;
    }

    public final Object a(int i10) {
        if (this.f20812a == -1) {
            this.f20812a = 0;
        }
        while (true) {
            int i11 = this.f20812a;
            if (i11 <= 0 || i10 >= this.f20813b.keyAt(i11)) {
                break;
            }
            this.f20812a--;
        }
        while (this.f20812a < this.f20813b.size() - 1 && i10 >= this.f20813b.keyAt(this.f20812a + 1)) {
            this.f20812a++;
        }
        return this.f20813b.valueAt(this.f20812a);
    }

    public final Object b() {
        return this.f20813b.valueAt(r0.size() - 1);
    }

    public final void c(int i10, Object obj) {
        if (this.f20812a == -1) {
            zzdl.f(this.f20813b.size() == 0);
            this.f20812a = 0;
        }
        if (this.f20813b.size() > 0) {
            int iKeyAt = this.f20813b.keyAt(r0.size() - 1);
            zzdl.d(i10 >= iKeyAt);
            if (iKeyAt == i10) {
                zzui.A((zzug) this.f20813b.valueAt(r0.size() - 1));
            }
        }
        this.f20813b.append(i10, obj);
    }

    public final void d() {
        for (int i10 = 0; i10 < this.f20813b.size(); i10++) {
            zzui.A((zzug) this.f20813b.valueAt(i10));
        }
        this.f20812a = -1;
        this.f20813b.clear();
    }

    public final void e(int i10) {
        int i11 = 0;
        while (i11 < this.f20813b.size() - 1) {
            int i12 = i11 + 1;
            if (i10 < this.f20813b.keyAt(i12)) {
                return;
            }
            zzui.A((zzug) this.f20813b.valueAt(i11));
            this.f20813b.removeAt(i11);
            int i13 = this.f20812a;
            if (i13 > 0) {
                this.f20812a = i13 - 1;
            }
            i11 = i12;
        }
    }

    public final boolean f() {
        return this.f20813b.size() == 0;
    }

    public zzup(zzdp zzdpVar) {
        this.f20813b = new SparseArray();
        this.f20814c = zzdpVar;
        this.f20812a = -1;
    }
}
