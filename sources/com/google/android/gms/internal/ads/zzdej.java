package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdej implements zzcuo, zzdbl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzbwn f14439o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f14440p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzbxf f14441q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final View f14442r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f14443s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzawo f14444t;

    public zzdej(zzbwn zzbwnVar, Context context, zzbxf zzbxfVar, View view, zzawo zzawoVar) {
        this.f14439o = zzbwnVar;
        this.f14440p = context;
        this.f14441q = zzbxfVar;
        this.f14442r = view;
        this.f14444t = zzawoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void I() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbl
    public final void c() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbl
    public final void e() {
        if (this.f14444t == zzawo.APP_OPEN) {
            return;
        }
        String strI = this.f14441q.i(this.f14440p);
        this.f14443s = strI;
        this.f14443s = String.valueOf(strI).concat(this.f14444t == zzawo.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial");
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void h() {
        this.f14439o.b(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void l() {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void m() {
        View view = this.f14442r;
        if (view != null && this.f14443s != null) {
            this.f14441q.x(view.getContext(), this.f14443s);
        }
        this.f14439o.b(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    @ParametersAreNonnullByDefault
    public final void n(zzbud zzbudVar, String str, String str2) {
        if (this.f14441q.z(this.f14440p)) {
            try {
                zzbxf zzbxfVar = this.f14441q;
                Context context = this.f14440p;
                zzbxfVar.t(context, zzbxfVar.f(context), this.f14439o.a(), zzbudVar.a(), zzbudVar.zzb());
            } catch (RemoteException e10) {
                zzbza.h("Remote Exception to get reward item.", e10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void r() {
    }
}
