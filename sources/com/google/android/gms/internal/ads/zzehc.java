package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzehc extends com.google.android.gms.ads.internal.client.zzbt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f16650o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzbh f16651p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzeyx f16652q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzcok f16653r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ViewGroup f16654s;

    public zzehc(Context context, com.google.android.gms.ads.internal.client.zzbh zzbhVar, zzeyx zzeyxVar, zzcok zzcokVar) {
        this.f16650o = context;
        this.f16651p = zzbhVar;
        this.f16652q = zzeyxVar;
        this.f16653r = zzcokVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        View viewI = zzcokVar.i();
        com.google.android.gms.ads.internal.zzt.r();
        frameLayout.addView(viewI, new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setMinimumHeight(e().f5933q);
        frameLayout.setMinimumWidth(e().f5936t);
        this.f16654s = frameLayout;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void A4(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void B() throws RemoteException {
        this.f16653r.m();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D3(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D7(com.google.android.gms.ads.internal.client.zzcf zzcfVar) throws RemoteException {
        zzbza.f("setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D8(boolean z10) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void Da(boolean z10) throws RemoteException {
        zzbza.f("setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void E7(com.google.android.gms.ads.internal.client.zzw zzwVar) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void F0() throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void G6(zzbuj zzbujVar) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void Ha(zzbro zzbroVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void K7(com.google.android.gms.ads.internal.client.zzby zzbyVar) throws RemoteException {
        zzbza.f("setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void M3(com.google.android.gms.ads.internal.client.zzbe zzbeVar) throws RemoteException {
        zzbza.f("setAdClickListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void N() throws RemoteException {
        Preconditions.f("destroy must be called on the main UI thread.");
        this.f16653r.d().c1(null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void O1(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean P9(com.google.android.gms.ads.internal.client.zzl zzlVar) throws RemoteException {
        zzbza.f("loadAd is not supported for an Ad Manager AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void R() throws RemoteException {
        Preconditions.f("destroy must be called on the main UI thread.");
        this.f16653r.d().d1(null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean Z9() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void aa(zzavb zzavbVar) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle d() throws RemoteException {
        zzbza.f("getAdMetadata is not supported in Ad Manager AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void d6(com.google.android.gms.ads.internal.client.zzcb zzcbVar) throws RemoteException {
        zzeib zzeibVar = this.f16652q.f17730c;
        if (zzeibVar != null) {
            zzeibVar.C(zzcbVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzq e() {
        Preconditions.f("getAdSize must be called on the main UI thread.");
        return zzezb.a(this.f16650o, Collections.singletonList(this.f16653r.k()));
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void e8(com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        Preconditions.f("setAdSize must be called on the main UI thread.");
        zzcok zzcokVar = this.f16653r;
        if (zzcokVar != null) {
            zzcokVar.n(this.f16654s, zzqVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh g() throws RemoteException {
        return this.f16651p;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb h() throws RemoteException {
        return this.f16652q.f17741n;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzdn i() {
        return this.f16653r.c();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzdq j() throws RemoteException {
        return this.f16653r.j();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper k() throws RemoteException {
        return ObjectWrapper.Q4(this.f16654s);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void l5(zzbbp zzbbpVar) throws RemoteException {
        zzbza.f("setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void m3(com.google.android.gms.ads.internal.client.zzdu zzduVar) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean n1() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void o6(com.google.android.gms.ads.internal.client.zzbh zzbhVar) throws RemoteException {
        zzbza.f("setAdListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String p() throws RemoteException {
        return this.f16652q.f17733f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String q() throws RemoteException {
        if (this.f16653r.c() != null) {
            return this.f16653r.c().e();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void q2(com.google.android.gms.ads.internal.client.zzci zzciVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void s3(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.J9)).booleanValue()) {
            zzbza.f("setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader.");
            return;
        }
        zzeib zzeibVar = this.f16652q.f17730c;
        if (zzeibVar != null) {
            zzeibVar.w(zzdgVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void t6(com.google.android.gms.ads.internal.client.zzfl zzflVar) throws RemoteException {
        zzbza.f("setVideoOptions is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void v2(zzbrl zzbrlVar) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String x() throws RemoteException {
        if (this.f16653r.c() != null) {
            return this.f16653r.c().e();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void y() throws RemoteException {
        Preconditions.f("destroy must be called on the main UI thread.");
        this.f16653r.a();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void y4(IObjectWrapper iObjectWrapper) {
    }
}
