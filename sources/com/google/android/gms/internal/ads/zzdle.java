package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdle implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference f15057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbhp f15059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzdlf f15060d;

    /* synthetic */ zzdle(zzdlf zzdlfVar, WeakReference weakReference, String str, zzbhp zzbhpVar, zzdld zzdldVar) {
        this.f15060d = zzdlfVar;
        this.f15057a = weakReference;
        this.f15058b = str;
        this.f15059c = zzbhpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        Object obj2 = this.f15057a.get();
        if (obj2 == null) {
            this.f15060d.k(this.f15058b, this);
        } else {
            this.f15059c.a(obj2, map);
        }
    }
}
