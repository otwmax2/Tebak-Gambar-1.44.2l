package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseBooleanArray f8285a;

    public final int a(int i10) {
        zzdl.a(i10, 0, this.f8285a.size());
        return this.f8285a.keyAt(i10);
    }

    public final int b() {
        return this.f8285a.size();
    }

    public final boolean c(int i10) {
        return this.f8285a.get(i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaa)) {
            return false;
        }
        zzaa zzaaVar = (zzaa) obj;
        if (zzew.f17494a >= 24) {
            return this.f8285a.equals(zzaaVar.f8285a);
        }
        if (this.f8285a.size() != zzaaVar.f8285a.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f8285a.size(); i10++) {
            if (a(i10) != zzaaVar.a(i10)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (zzew.f17494a >= 24) {
            return this.f8285a.hashCode();
        }
        int size = this.f8285a.size();
        for (int i10 = 0; i10 < this.f8285a.size(); i10++) {
            size = (size * 31) + a(i10);
        }
        return size;
    }
}
