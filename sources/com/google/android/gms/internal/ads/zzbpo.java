package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbpo extends zzbpb {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RtbAdapter f11094o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private MediationInterstitialAd f11095p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private MediationRewardedAd f11096q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private MediationAppOpenAd f11097r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f11098s = BuildConfig.FLAVOR;

    public zzbpo(RtbAdapter rtbAdapter) {
        this.f11094o = rtbAdapter;
    }

    private final Bundle Wa(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        Bundle bundle;
        Bundle bundle2 = zzlVar.A;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.f11094o.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private static final Bundle Xa(String str) throws RemoteException {
        zzbza.g("Server parameters: ".concat(String.valueOf(str)));
        try {
            Bundle bundle = new Bundle();
            if (str == null) {
                return bundle;
            }
            JSONObject jSONObject = new JSONObject(str);
            Bundle bundle2 = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle2.putString(next, jSONObject.getString(next));
            }
            return bundle2;
        } catch (JSONException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            throw new RemoteException();
        }
    }

    private static final boolean Ya(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        if (zzlVar.f5911t) {
            return true;
        }
        com.google.android.gms.ads.internal.client.zzay.b();
        return zzbyt.x();
    }

    private static final String Za(String str, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        String str2 = zzlVar.I;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void D5(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbon zzbonVar, zzbnl zzbnlVar) throws RemoteException {
        try {
            this.f11094o.loadRtbAppOpenAd(new MediationAppOpenAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), str, Xa(str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str2, zzlVar), this.f11098s), new zzbpl(this, zzbonVar, zzbnlVar));
        } catch (Throwable th) {
            zzbza.e("Adapter failed to render app open ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean D6(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.f11095p;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) ObjectWrapper.t1(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzbza.e(BuildConfig.FLAVOR, th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean D9(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.f11096q;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) ObjectWrapper.t1(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzbza.e(BuildConfig.FLAVOR, th);
            return true;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0052  */
    @Override // com.google.android.gms.internal.ads.zzbpc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void F8(com.google.android.gms.dynamic.IObjectWrapper r9, java.lang.String r10, android.os.Bundle r11, android.os.Bundle r12, com.google.android.gms.ads.internal.client.zzq r13, com.google.android.gms.internal.ads.zzbpf r14) throws android.os.RemoteException {
        /*
            r8 = this;
            com.google.android.gms.internal.ads.zzbpm r0 = new com.google.android.gms.internal.ads.zzbpm     // Catch: java.lang.Throwable -> L9c
            r0.<init>(r8, r14)     // Catch: java.lang.Throwable -> L9c
            com.google.android.gms.ads.mediation.rtb.RtbAdapter r14 = r8.f11094o     // Catch: java.lang.Throwable -> L9c
            com.google.android.gms.ads.mediation.MediationConfiguration r1 = new com.google.android.gms.ads.mediation.MediationConfiguration     // Catch: java.lang.Throwable -> L9c
            int r2 = r10.hashCode()     // Catch: java.lang.Throwable -> L9c
            r3 = 5
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            switch(r2) {
                case -1396342996: goto L48;
                case -1052618729: goto L3e;
                case -239580146: goto L34;
                case 604727084: goto L2a;
                case 1167692200: goto L20;
                case 1911491517: goto L16;
                default: goto L15;
            }
        L15:
            goto L52
        L16:
            java.lang.String r2 = "rewarded_interstitial"
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L52
            r10 = 3
            goto L53
        L20:
            java.lang.String r2 = "app_open"
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L52
            r10 = 5
            goto L53
        L2a:
            java.lang.String r2 = "interstitial"
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L52
            r10 = 1
            goto L53
        L34:
            java.lang.String r2 = "rewarded"
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L52
            r10 = 2
            goto L53
        L3e:
            java.lang.String r2 = "native"
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L52
            r10 = 4
            goto L53
        L48:
            java.lang.String r2 = "banner"
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L52
            r10 = 0
            goto L53
        L52:
            r10 = -1
        L53:
            if (r10 == 0) goto L76
            if (r10 == r7) goto L73
            if (r10 == r6) goto L70
            if (r10 == r5) goto L6d
            if (r10 == r4) goto L6a
            if (r10 != r3) goto L62
            com.google.android.gms.ads.AdFormat r10 = com.google.android.gms.ads.AdFormat.APP_OPEN_AD     // Catch: java.lang.Throwable -> L9c
            goto L78
        L62:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L9c
            java.lang.String r10 = "Internal Error"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L9c
            throw r9     // Catch: java.lang.Throwable -> L9c
        L6a:
            com.google.android.gms.ads.AdFormat r10 = com.google.android.gms.ads.AdFormat.NATIVE     // Catch: java.lang.Throwable -> L9c
            goto L78
        L6d:
            com.google.android.gms.ads.AdFormat r10 = com.google.android.gms.ads.AdFormat.REWARDED_INTERSTITIAL     // Catch: java.lang.Throwable -> L9c
            goto L78
        L70:
            com.google.android.gms.ads.AdFormat r10 = com.google.android.gms.ads.AdFormat.REWARDED     // Catch: java.lang.Throwable -> L9c
            goto L78
        L73:
            com.google.android.gms.ads.AdFormat r10 = com.google.android.gms.ads.AdFormat.INTERSTITIAL     // Catch: java.lang.Throwable -> L9c
            goto L78
        L76:
            com.google.android.gms.ads.AdFormat r10 = com.google.android.gms.ads.AdFormat.BANNER     // Catch: java.lang.Throwable -> L9c
        L78:
            r1.<init>(r10, r12)     // Catch: java.lang.Throwable -> L9c
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9c
            r10.<init>()     // Catch: java.lang.Throwable -> L9c
            r10.add(r1)     // Catch: java.lang.Throwable -> L9c
            com.google.android.gms.ads.mediation.rtb.RtbSignalData r12 = new com.google.android.gms.ads.mediation.rtb.RtbSignalData     // Catch: java.lang.Throwable -> L9c
            java.lang.Object r9 = com.google.android.gms.dynamic.ObjectWrapper.t1(r9)     // Catch: java.lang.Throwable -> L9c
            android.content.Context r9 = (android.content.Context) r9     // Catch: java.lang.Throwable -> L9c
            int r1 = r13.f5935s     // Catch: java.lang.Throwable -> L9c
            int r2 = r13.f5932p     // Catch: java.lang.Throwable -> L9c
            java.lang.String r13 = r13.f5931o     // Catch: java.lang.Throwable -> L9c
            com.google.android.gms.ads.AdSize r13 = com.google.android.gms.ads.zzb.c(r1, r2, r13)     // Catch: java.lang.Throwable -> L9c
            r12.<init>(r9, r10, r11, r13)     // Catch: java.lang.Throwable -> L9c
            r14.collectSignals(r12, r0)     // Catch: java.lang.Throwable -> L9c
            return
        L9c:
            r9 = move-exception
            java.lang.String r10 = "Error generating signals for RTB"
            com.google.android.gms.internal.ads.zzbza.e(r10, r9)
            android.os.RemoteException r9 = new android.os.RemoteException
            r9.<init>()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbpo.F8(com.google.android.gms.dynamic.IObjectWrapper, java.lang.String, android.os.Bundle, android.os.Bundle, com.google.android.gms.ads.internal.client.zzq, com.google.android.gms.internal.ads.zzbpf):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void K3(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbot zzbotVar, zzbnl zzbnlVar) throws RemoteException {
        try {
            this.f11094o.loadRtbInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), str, Xa(str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str2, zzlVar), this.f11098s), new zzbpj(this, zzbotVar, zzbnlVar));
        } catch (Throwable th) {
            zzbza.e("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void K9(String str) {
        this.f11098s = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void R4(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzboq zzboqVar, zzbnl zzbnlVar, com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        try {
            this.f11094o.loadRtbBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), str, Xa(str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str2, zzlVar), com.google.android.gms.ads.zzb.c(zzqVar.f5935s, zzqVar.f5932p, zzqVar.f5931o), this.f11098s), new zzbph(this, zzboqVar, zzbnlVar));
        } catch (Throwable th) {
            zzbza.e("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void a8(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbow zzbowVar, zzbnl zzbnlVar, zzbdl zzbdlVar) throws RemoteException {
        try {
            this.f11094o.loadRtbNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), str, Xa(str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str2, zzlVar), this.f11098s, zzbdlVar), new zzbpk(this, zzbowVar, zzbnlVar));
        } catch (Throwable th) {
            zzbza.e("Adapter failed to render native ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final com.google.android.gms.ads.internal.client.zzdq b() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f11094o;
        if (mediationExtrasReceiver instanceof com.google.android.gms.ads.mediation.zza) {
            try {
                return ((com.google.android.gms.ads.mediation.zza) mediationExtrasReceiver).getVideoController();
            } catch (Throwable th) {
                zzbza.e(BuildConfig.FLAVOR, th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final zzbpq c() throws RemoteException {
        return zzbpq.V3(this.f11094o.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean c0(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationAppOpenAd mediationAppOpenAd = this.f11097r;
        if (mediationAppOpenAd == null) {
            return false;
        }
        try {
            mediationAppOpenAd.showAd((Context) ObjectWrapper.t1(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzbza.e(BuildConfig.FLAVOR, th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final zzbpq e() throws RemoteException {
        return zzbpq.V3(this.f11094o.getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void f6(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzboq zzboqVar, zzbnl zzbnlVar, com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        try {
            this.f11094o.loadRtbInterscrollerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), str, Xa(str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str2, zzlVar), com.google.android.gms.ads.zzb.c(zzqVar.f5935s, zzqVar.f5932p, zzqVar.f5931o), this.f11098s), new zzbpi(this, zzboqVar, zzbnlVar));
        } catch (Throwable th) {
            zzbza.e("Adapter failed to render interscroller ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void l2(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzboz zzbozVar, zzbnl zzbnlVar) throws RemoteException {
        try {
            this.f11094o.loadRtbRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), str, Xa(str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str2, zzlVar), this.f11098s), new zzbpn(this, zzbozVar, zzbnlVar));
        } catch (Throwable th) {
            zzbza.e("Adapter failed to render rewarded interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void r3(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbow zzbowVar, zzbnl zzbnlVar) throws RemoteException {
        a8(str, str2, zzlVar, iObjectWrapper, zzbowVar, zzbnlVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void xa(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzboz zzbozVar, zzbnl zzbnlVar) throws RemoteException {
        try {
            this.f11094o.loadRtbRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), str, Xa(str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str2, zzlVar), this.f11098s), new zzbpn(this, zzbozVar, zzbnlVar));
        } catch (Throwable th) {
            zzbza.e("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }
}
