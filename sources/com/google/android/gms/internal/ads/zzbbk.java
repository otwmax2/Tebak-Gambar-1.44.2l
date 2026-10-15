package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbbk extends zzbbl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.zzf f10474o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f10475p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f10476q;

    public zzbbk(com.google.android.gms.ads.internal.zzf zzfVar, String str, String str2) {
        this.f10474o = zzfVar;
        this.f10475p = str;
        this.f10476q = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbbm
    public final String a() {
        return this.f10476q;
    }

    @Override // com.google.android.gms.internal.ads.zzbbm
    public final void b() {
        this.f10474o.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbbm
    public final void c() {
        this.f10474o.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbbm
    public final void x0(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return;
        }
        this.f10474o.b((View) ObjectWrapper.t1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbbm
    public final String zzb() {
        return this.f10475p;
    }
}
