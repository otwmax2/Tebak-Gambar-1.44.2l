package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcgg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbzg f12132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f12133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference f12134c;

    /* synthetic */ zzcgg(zzcge zzcgeVar, zzcgf zzcgfVar) {
        this.f12132a = zzcgeVar.f12129a;
        this.f12133b = zzcgeVar.f12130b;
        this.f12134c = zzcgeVar.f12131c;
    }

    final Context a() {
        return this.f12133b;
    }

    public final zzapw b() {
        return new zzapw(new com.google.android.gms.ads.internal.zzi(this.f12133b, this.f12132a));
    }

    final zzbde c() {
        return new zzbde(this.f12133b);
    }

    final zzbzg d() {
        return this.f12132a;
    }

    final String e() {
        return com.google.android.gms.ads.internal.zzt.r().B(this.f12133b, this.f12132a.f11605o);
    }

    final WeakReference f() {
        return this.f12134c;
    }
}
