package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdsz extends com.google.android.gms.ads.internal.client.zzdi {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    final Map f15620o = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f15621p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzdsn f15622q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzfuu f15623r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzdta f15624s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzdsf f15625t;

    zzdsz(Context context, zzdsn zzdsnVar, zzdta zzdtaVar, zzfuu zzfuuVar) {
        this.f15621p = context;
        this.f15622q = zzdsnVar;
        this.f15623r = zzfuuVar;
        this.f15624s = zzdtaVar;
    }

    private static AdRequest Za() {
        return new AdRequest.Builder().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ab(Object obj) {
        ResponseInfo responseInfoD;
        com.google.android.gms.ads.internal.client.zzdn zzdnVarF;
        if (obj instanceof LoadAdError) {
            responseInfoD = ((LoadAdError) obj).f();
        } else if (obj instanceof AppOpenAd) {
            responseInfoD = ((AppOpenAd) obj).a();
        } else if (obj instanceof InterstitialAd) {
            responseInfoD = ((InterstitialAd) obj).b();
        } else if (obj instanceof RewardedAd) {
            responseInfoD = ((RewardedAd) obj).b();
        } else if (obj instanceof RewardedInterstitialAd) {
            responseInfoD = ((RewardedInterstitialAd) obj).a();
        } else {
            if (!(obj instanceof AdView)) {
                if (obj instanceof NativeAd) {
                    responseInfoD = ((NativeAd) obj).d();
                }
                return BuildConfig.FLAVOR;
            }
            responseInfoD = ((AdView) obj).getResponseInfo();
        }
        if (responseInfoD == null || (zzdnVarF = responseInfoD.f()) == null) {
            return BuildConfig.FLAVOR;
        }
        try {
            return zzdnVarF.f();
        } catch (RemoteException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void bb(String str, String str2) {
        try {
            zzfuj.q(this.f15625t.b(str), new zzdsx(this, str2), this.f15623r);
        } catch (NullPointerException e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "OutOfContextTester.setAdAsOutOfContext");
            this.f15622q.f(str2);
        }
    }

    private final synchronized void cb(String str, String str2) {
        try {
            zzfuj.q(this.f15625t.b(str), new zzdsy(this, str2), this.f15623r);
        } catch (NullPointerException e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "OutOfContextTester.setAdAsShown");
            this.f15622q.f(str2);
        }
    }

    public final void Va(zzdsf zzdsfVar) {
        this.f15625t = zzdsfVar;
    }

    protected final synchronized void Wa(String str, Object obj, String str2) {
        this.f15620o.put(str, obj);
        bb(ab(obj), str2);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void Xa(final java.lang.String r7, java.lang.String r8, final java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsz.Xa(java.lang.String, java.lang.String, java.lang.String):void");
    }

    public final synchronized void Ya(String str, String str2) {
        Activity activityA = this.f15622q.a();
        if (activityA == null) {
            return;
        }
        Object obj = this.f15620o.get(str);
        if (obj == null) {
            return;
        }
        zzbaj zzbajVar = zzbar.C8;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue() || (obj instanceof AppOpenAd) || (obj instanceof InterstitialAd) || (obj instanceof RewardedAd) || (obj instanceof RewardedInterstitialAd)) {
            this.f15620o.remove(str);
        }
        cb(ab(obj), str2);
        if (obj instanceof AppOpenAd) {
            ((AppOpenAd) obj).c(activityA);
            return;
        }
        if (obj instanceof InterstitialAd) {
            ((InterstitialAd) obj).f(activityA);
            return;
        }
        if (obj instanceof RewardedAd) {
            ((RewardedAd) obj).e(activityA, new OnUserEarnedRewardListener() { // from class: com.google.android.gms.internal.ads.zzdso
                @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
                public final void a(RewardItem rewardItem) {
                }
            });
            return;
        }
        if (obj instanceof RewardedInterstitialAd) {
            ((RewardedInterstitialAd) obj).c(activityA, new OnUserEarnedRewardListener() { // from class: com.google.android.gms.internal.ads.zzdsp
                @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
                public final void a(RewardItem rewardItem) {
                }
            });
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue() && ((obj instanceof AdView) || (obj instanceof NativeAd))) {
            Intent intent = new Intent();
            intent.setClassName(this.f15621p, "com.google.android.gms.ads.OutOfContextTestingActivity");
            intent.putExtra("adUnit", str);
            com.google.android.gms.ads.internal.zzt.r();
            com.google.android.gms.ads.internal.util.zzs.q(this.f15621p, intent);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdj
    public final void x7(String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        ViewGroup viewGroup = (ViewGroup) ObjectWrapper.t1(iObjectWrapper2);
        if (context == null || viewGroup == null) {
            return;
        }
        Object obj = this.f15620o.get(str);
        if (obj != null) {
            this.f15620o.remove(str);
        }
        if (obj instanceof AdView) {
            zzdta.a(context, viewGroup, (AdView) obj);
        } else if (obj instanceof NativeAd) {
            zzdta.b(context, viewGroup, (NativeAd) obj);
        }
    }
}
