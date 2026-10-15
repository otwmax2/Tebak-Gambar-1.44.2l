package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaav {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzaay f8349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzaay f8350b;

    public zzaav(zzaay zzaayVar, zzaay zzaayVar2) {
        this.f8349a = zzaayVar;
        this.f8350b = zzaayVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaav.class == obj.getClass()) {
            zzaav zzaavVar = (zzaav) obj;
            if (this.f8349a.equals(zzaavVar.f8349a) && this.f8350b.equals(zzaavVar.f8350b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f8349a.hashCode() * 31) + this.f8350b.hashCode();
    }

    public final String toString() {
        return "[" + this.f8349a.toString() + (this.f8349a.equals(this.f8350b) ? BuildConfig.FLAVOR : ", ".concat(this.f8350b.toString())) + "]";
    }
}
