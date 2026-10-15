package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzbh;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzby;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.client.zzcf;
import com.google.android.gms.ads.internal.client.zzci;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.client.zzdn;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdu;
import com.google.android.gms.ads.internal.client.zzfl;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzw;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzapw;
import com.google.android.gms.internal.ads.zzapx;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzbbp;
import com.google.android.gms.internal.ads.zzbby;
import com.google.android.gms.internal.ads.zzbrl;
import com.google.android.gms.internal.ads.zzbro;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzbzn;
import java.util.Map;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzs extends zzbt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzbzg f6234o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzq f6235p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Future f6236q = zzbzn.f11614a.e(new d(this));

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Context f6237r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final f f6238s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private WebView f6239t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zzbh f6240u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzapw f6241v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private AsyncTask f6242w;

    public zzs(Context context, zzq zzqVar, String str, zzbzg zzbzgVar) {
        this.f6237r = context;
        this.f6234o = zzbzgVar;
        this.f6235p = zzqVar;
        this.f6239t = new WebView(context);
        this.f6238s = new f(context, str);
        Ta(0);
        this.f6239t.setVerticalScrollBarEnabled(false);
        this.f6239t.getSettings().setJavaScriptEnabled(true);
        this.f6239t.setWebViewClient(new b(this));
        this.f6239t.setOnTouchListener(new c(this));
    }

    static /* bridge */ /* synthetic */ String Za(zzs zzsVar, String str) {
        if (zzsVar.f6241v == null) {
            return str;
        }
        Uri uriA = Uri.parse(str);
        try {
            uriA = zzsVar.f6241v.a(uriA, zzsVar.f6237r, null, null);
        } catch (zzapx e10) {
            zzbza.h("Unable to process ad data", e10);
        }
        return uriA.toString();
    }

    static /* bridge */ /* synthetic */ void cb(zzs zzsVar, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        zzsVar.f6237r.startActivity(intent);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void A4(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void B() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D3(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbk zzbkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D7(zzcf zzcfVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D8(boolean z10) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void Da(boolean z10) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void E7(zzw zzwVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void F0() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void G6(zzbuj zzbujVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void Ha(zzbro zzbroVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void K7(zzby zzbyVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void M3(zzbe zzbeVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void N() throws RemoteException {
        Preconditions.f("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void O1(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean P9(com.google.android.gms.ads.internal.client.zzl zzlVar) throws RemoteException {
        Preconditions.l(this.f6239t, "This Search Ad has already been torn down");
        this.f6238s.f(zzlVar, this.f6234o);
        this.f6242w = new e(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void R() throws RemoteException {
        Preconditions.f("resume must be called on the main UI thread.");
    }

    @VisibleForTesting
    final void Ta(int i10) {
        if (this.f6239t == null) {
            return;
        }
        this.f6239t.setLayoutParams(new ViewGroup.LayoutParams(-1, i10));
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean Z9() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void aa(zzavb zzavbVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle d() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void d6(zzcb zzcbVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzq e() throws RemoteException {
        return this.f6235p;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void e8(zzq zzqVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzbh g() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzcb h() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzdn i() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzdq j() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper k() throws RemoteException {
        Preconditions.f("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.Q4(this.f6239t);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void l5(zzbbp zzbbpVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void m3(zzdu zzduVar) {
        throw new IllegalStateException("Unused method");
    }

    @VisibleForTesting
    final String n() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) zzbby.f10497d.e());
        builder.appendQueryParameter("query", this.f6238s.d());
        builder.appendQueryParameter("pubId", this.f6238s.c());
        builder.appendQueryParameter("mappver", this.f6238s.a());
        Map mapE = this.f6238s.e();
        for (String str : mapE.keySet()) {
            builder.appendQueryParameter(str, (String) mapE.get(str));
        }
        Uri uriBuild = builder.build();
        zzapw zzapwVar = this.f6241v;
        if (zzapwVar != null) {
            try {
                uriBuild = zzapwVar.b(uriBuild, this.f6237r);
            } catch (zzapx e10) {
                zzbza.h("Unable to process ad data", e10);
            }
        }
        return r() + "#" + uriBuild.getEncodedQuery();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean n1() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void o6(zzbh zzbhVar) throws RemoteException {
        this.f6240u = zzbhVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String p() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String q() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void q2(zzci zzciVar) {
    }

    @VisibleForTesting
    final String r() {
        String strB = this.f6238s.b();
        if (true == TextUtils.isEmpty(strB)) {
            strB = "www.google.com";
        }
        return "https://" + strB + ((String) zzbby.f10497d.e());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void s3(zzdg zzdgVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void t6(zzfl zzflVar) {
        throw new IllegalStateException("Unused method");
    }

    @VisibleForTesting
    final int u(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzay.b();
            return zzbyt.D(this.f6237r, Integer.parseInt(queryParameter));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void v2(zzbrl zzbrlVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String x() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void y() throws RemoteException {
        Preconditions.f("destroy must be called on the main UI thread.");
        this.f6242w.cancel(true);
        this.f6236q.cancel(true);
        this.f6239t.destroy();
        this.f6239t = null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void y4(IObjectWrapper iObjectWrapper) {
    }
}
