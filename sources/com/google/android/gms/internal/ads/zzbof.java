package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbof extends zzbnh {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f11049o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzboh f11050p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzbuo f11051q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private IObjectWrapper f11052r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f11053s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private MediationInterstitialAd f11054t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private UnifiedNativeAdMapper f11055u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private MediationRewardedAd f11056v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private MediationInterscrollerAd f11057w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private MediationAppOpenAd f11058x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final String f11059y = BuildConfig.FLAVOR;

    public zzbof(Adapter adapter) {
        this.f11049o = adapter;
    }

    private final Bundle Wa(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        Bundle bundle;
        Bundle bundle2 = zzlVar.A;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.f11049o.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private final Bundle Xa(String str, com.google.android.gms.ads.internal.client.zzl zzlVar, String str2) throws RemoteException {
        zzbza.b("Server parameters: ".concat(String.valueOf(str)));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.f11049o instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzlVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzlVar.f5912u);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            zzbza.e(BuildConfig.FLAVOR, th);
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

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void Aa(IObjectWrapper iObjectWrapper) throws RemoteException {
        Object obj = this.f11049o;
        if ((obj instanceof Adapter) || (obj instanceof MediationInterstitialAdapter)) {
            if (obj instanceof MediationInterstitialAdapter) {
                T();
                return;
            }
            zzbza.b("Show interstitial ad from adapter.");
            MediationInterstitialAd mediationInterstitialAd = this.f11054t;
            if (mediationInterstitialAd != null) {
                mediationInterstitialAd.showAd((Context) ObjectWrapper.t1(iObjectWrapper));
                return;
            } else {
                zzbza.d("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
        zzbza.g(MediationInterstitialAdapter.class.getCanonicalName() + " or " + Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void D1(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbnl zzbnlVar) throws RemoteException {
        if (this.f11049o instanceof Adapter) {
            zzbza.b("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) this.f11049o).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), BuildConfig.FLAVOR, Xa(str, zzlVar, null), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str, zzlVar), BuildConfig.FLAVOR), new zzbod(this, zzbnlVar));
                return;
            } catch (Exception e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
                throw new RemoteException();
            }
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void E8(com.google.android.gms.ads.internal.client.zzl zzlVar, String str) throws RemoteException {
        La(zzlVar, str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void H() throws RemoteException {
        Object obj = this.f11049o;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                zzbza.e(BuildConfig.FLAVOR, th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void I7(boolean z10) throws RemoteException {
        Object obj = this.f11049o;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z10);
                return;
            } catch (Throwable th) {
                zzbza.e(BuildConfig.FLAVOR, th);
                return;
            }
        }
        zzbza.b(OnImmersiveModeUpdatedListener.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final boolean J() throws RemoteException {
        if (this.f11049o instanceof Adapter) {
            return this.f11051q != null;
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void K8(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbnl zzbnlVar) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f11049o;
        if (!(obj instanceof MediationInterstitialAdapter) && !(obj instanceof Adapter)) {
            zzbza.g(MediationInterstitialAdapter.class.getCanonicalName() + " or " + Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
            throw new RemoteException();
        }
        zzbza.b("Requesting interstitial ad from adapter.");
        Object obj2 = this.f11049o;
        if (!(obj2 instanceof MediationInterstitialAdapter)) {
            if (obj2 instanceof Adapter) {
                try {
                    ((Adapter) obj2).loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), BuildConfig.FLAVOR, Xa(str, zzlVar, str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str, zzlVar), this.f11059y), new zzbob(this, zzbnlVar));
                    return;
                } finally {
                }
            }
            return;
        }
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
            List list = zzlVar.f5910s;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j10 = zzlVar.f5907p;
            zzbnx zzbnxVar = new zzbnx(j10 == -1 ? null : new Date(j10), zzlVar.f5909r, hashSet, zzlVar.f5916y, Ya(zzlVar), zzlVar.f5912u, zzlVar.F, zzlVar.H, Za(str, zzlVar));
            Bundle bundle = zzlVar.A;
            mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.t1(iObjectWrapper), new zzboh(zzbnlVar), Xa(str, zzlVar, str2), zzbnxVar, bundle != null ? bundle.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void L() throws RemoteException {
        Object obj = this.f11049o;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                zzbza.e(BuildConfig.FLAVOR, th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void La(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2) throws RemoteException {
        Object obj = this.f11049o;
        if (obj instanceof Adapter) {
            T4(this.f11052r, zzlVar, str, new zzboi((Adapter) obj, this.f11051q));
            return;
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbnq M() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void M6(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.f11049o instanceof Adapter) {
            zzbza.b("Show app open ad from adapter.");
            MediationAppOpenAd mediationAppOpenAd = this.f11058x;
            if (mediationAppOpenAd != null) {
                mediationAppOpenAd.showAd((Context) ObjectWrapper.t1(iObjectWrapper));
                return;
            } else {
                zzbza.d("Can not show null mediation app open ad.");
                throw new RemoteException();
            }
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void S9(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbnl zzbnlVar) throws RemoteException {
        h6(iObjectWrapper, zzqVar, zzlVar, str, null, zzbnlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void T() throws RemoteException {
        if (this.f11049o instanceof MediationInterstitialAdapter) {
            zzbza.b("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.f11049o).showInterstitial();
                return;
            } catch (Throwable th) {
                zzbza.e(BuildConfig.FLAVOR, th);
                throw new RemoteException();
            }
        }
        zzbza.g(MediationInterstitialAdapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void T4(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbnl zzbnlVar) throws RemoteException {
        if (this.f11049o instanceof Adapter) {
            zzbza.b("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) this.f11049o).loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), BuildConfig.FLAVOR, Xa(str, zzlVar, null), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str, zzlVar), BuildConfig.FLAVOR), new zzbod(this, zzbnlVar));
                return;
            } catch (Exception e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
                throw new RemoteException();
            }
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void T8(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbnl zzbnlVar) throws RemoteException {
        K8(iObjectWrapper, zzlVar, str, null, zzbnlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void W8(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.f11049o instanceof Adapter) {
            zzbza.b("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.f11056v;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.t1(iObjectWrapper));
                return;
            } else {
                zzbza.d("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final boolean Y() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final Bundle b() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final Bundle c() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final Bundle e() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final com.google.android.gms.ads.internal.client.zzdq f() {
        Object obj = this.f11049o;
        if (obj instanceof com.google.android.gms.ads.mediation.zza) {
            try {
                return ((com.google.android.gms.ads.mediation.zza) obj).getVideoController();
            } catch (Throwable th) {
                zzbza.e(BuildConfig.FLAVOR, th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzber g() {
        zzboh zzbohVar = this.f11050p;
        if (zzbohVar == null) {
            return null;
        }
        NativeCustomTemplateAd nativeCustomTemplateAdW = zzbohVar.w();
        if (nativeCustomTemplateAdW instanceof zzbes) {
            return ((zzbes) nativeCustomTemplateAdW).b();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbnr g0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbno h() {
        MediationInterscrollerAd mediationInterscrollerAd = this.f11057w;
        if (mediationInterscrollerAd != null) {
            return new zzbog(mediationInterscrollerAd);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    @Override // com.google.android.gms.internal.ads.zzbni
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h2(com.google.android.gms.dynamic.IObjectWrapper r10, com.google.android.gms.internal.ads.zzbjp r11, java.util.List r12) throws android.os.RemoteException {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbof.h2(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.ads.zzbjp, java.util.List):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void h6(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbnl zzbnlVar) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f11049o;
        if (!(obj instanceof MediationBannerAdapter) && !(obj instanceof Adapter)) {
            zzbza.g(MediationBannerAdapter.class.getCanonicalName() + " or " + Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
            throw new RemoteException();
        }
        zzbza.b("Requesting banner ad from adapter.");
        AdSize adSizeD = zzqVar.B ? com.google.android.gms.ads.zzb.d(zzqVar.f5935s, zzqVar.f5932p) : com.google.android.gms.ads.zzb.c(zzqVar.f5935s, zzqVar.f5932p, zzqVar.f5931o);
        Object obj2 = this.f11049o;
        if (!(obj2 instanceof MediationBannerAdapter)) {
            if (obj2 instanceof Adapter) {
                try {
                    ((Adapter) obj2).loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), BuildConfig.FLAVOR, Xa(str, zzlVar, str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str, zzlVar), adSizeD, this.f11059y), new zzboa(this, zzbnlVar));
                    return;
                } finally {
                }
            }
            return;
        }
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
            List list = zzlVar.f5910s;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j10 = zzlVar.f5907p;
            zzbnx zzbnxVar = new zzbnx(j10 == -1 ? null : new Date(j10), zzlVar.f5909r, hashSet, zzlVar.f5916y, Ya(zzlVar), zzlVar.f5912u, zzlVar.F, zzlVar.H, Za(str, zzlVar));
            Bundle bundle = zzlVar.A;
            mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.t1(iObjectWrapper), new zzboh(zzbnlVar), Xa(str, zzlVar, str2), adSizeD, zzbnxVar, bundle != null ? bundle.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbnu i() {
        UnifiedNativeAdMapper unifiedNativeAdMapper;
        UnifiedNativeAdMapper unifiedNativeAdMapperX;
        Object obj = this.f11049o;
        if (!(obj instanceof MediationNativeAdapter)) {
            if (!(obj instanceof Adapter) || (unifiedNativeAdMapper = this.f11055u) == null) {
                return null;
            }
            return new zzbok(unifiedNativeAdMapper);
        }
        zzboh zzbohVar = this.f11050p;
        if (zzbohVar == null || (unifiedNativeAdMapperX = zzbohVar.x()) == null) {
            return null;
        }
        return new zzbok(unifiedNativeAdMapperX);
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbpq j() {
        Object obj = this.f11049o;
        if (obj instanceof Adapter) {
            return zzbpq.V3(((Adapter) obj).getVersionInfo());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final IObjectWrapper k() throws RemoteException {
        Object obj = this.f11049o;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.Q4(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                zzbza.e(BuildConfig.FLAVOR, th);
                throw new RemoteException();
            }
        }
        if (obj instanceof Adapter) {
            return ObjectWrapper.Q4(this.f11053s);
        }
        zzbza.g(MediationBannerAdapter.class.getCanonicalName() + " or " + Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final zzbpq l() {
        Object obj = this.f11049o;
        if (obj instanceof Adapter) {
            return zzbpq.V3(((Adapter) obj).getSDKVersionInfo());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void m() throws RemoteException {
        Object obj = this.f11049o;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                zzbza.e(BuildConfig.FLAVOR, th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void m4(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbnl zzbnlVar) throws RemoteException {
        if (this.f11049o instanceof Adapter) {
            zzbza.b("Requesting app open ad from adapter.");
            try {
                ((Adapter) this.f11049o).loadAppOpenAd(new MediationAppOpenAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), BuildConfig.FLAVOR, Xa(str, zzlVar, null), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str, zzlVar), BuildConfig.FLAVOR), new zzboe(this, zzbnlVar));
                return;
            } catch (Exception e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
                throw new RemoteException();
            }
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void q0() throws RemoteException {
        if (this.f11049o instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.f11056v;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.t1(this.f11052r));
                return;
            } else {
                zzbza.d("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void v9(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbnl zzbnlVar, zzbdl zzbdlVar, List list) throws RemoteException {
        RemoteException remoteException;
        Object obj = this.f11049o;
        if (!(obj instanceof MediationNativeAdapter) && !(obj instanceof Adapter)) {
            zzbza.g(MediationNativeAdapter.class.getCanonicalName() + " or " + Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
            throw new RemoteException();
        }
        zzbza.b("Requesting native ad from adapter.");
        Object obj2 = this.f11049o;
        if (!(obj2 instanceof MediationNativeAdapter)) {
            if (obj2 instanceof Adapter) {
                try {
                    ((Adapter) obj2).loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), BuildConfig.FLAVOR, Xa(str, zzlVar, str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str, zzlVar), this.f11059y, zzbdlVar), new zzboc(this, zzbnlVar));
                    return;
                } finally {
                }
            }
            return;
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj2;
            List list2 = zzlVar.f5910s;
            HashSet hashSet = list2 != null ? new HashSet(list2) : null;
            long j10 = zzlVar.f5907p;
            zzboj zzbojVar = new zzboj(j10 == -1 ? null : new Date(j10), zzlVar.f5909r, hashSet, zzlVar.f5916y, Ya(zzlVar), zzlVar.f5912u, zzbdlVar, list, zzlVar.F, zzlVar.H, Za(str, zzlVar));
            Bundle bundle = zzlVar.A;
            Bundle bundle2 = bundle != null ? bundle.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.f11050p = new zzboh(zzbnlVar);
            mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.t1(iObjectWrapper), this.f11050p, Xa(str, zzlVar, str2), zzbojVar, bundle2);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void w1(IObjectWrapper iObjectWrapper) throws RemoteException {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        Object obj = this.f11049o;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).a(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void w8(IObjectWrapper iObjectWrapper, zzbuo zzbuoVar, List list) throws RemoteException {
        zzbza.g("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void x8(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbuo zzbuoVar, String str2) throws RemoteException {
        Object obj = this.f11049o;
        if (obj instanceof Adapter) {
            this.f11052r = iObjectWrapper;
            this.f11051q = zzbuoVar;
            zzbuoVar.ja(ObjectWrapper.Q4(obj));
            return;
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void y2(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbnl zzbnlVar) throws RemoteException {
        if (this.f11049o instanceof Adapter) {
            zzbza.b("Requesting interscroller ad from adapter.");
            try {
                Adapter adapter = (Adapter) this.f11049o;
                adapter.loadInterscrollerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.t1(iObjectWrapper), BuildConfig.FLAVOR, Xa(str, zzlVar, str2), Wa(zzlVar), Ya(zzlVar), zzlVar.f5916y, zzlVar.f5912u, zzlVar.H, Za(str, zzlVar), com.google.android.gms.ads.zzb.e(zzqVar.f5935s, zzqVar.f5932p), BuildConfig.FLAVOR), new zzbny(this, zzbnlVar, adapter));
                return;
            } catch (Exception e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
                throw new RemoteException();
            }
        }
        zzbza.g(Adapter.class.getCanonicalName() + " #009 Class mismatch: " + this.f11049o.getClass().getCanonicalName());
        throw new RemoteException();
    }

    public zzbof(MediationAdapter mediationAdapter) {
        this.f11049o = mediationAdapter;
    }
}
