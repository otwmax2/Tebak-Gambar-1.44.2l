package j8;

import android.app.Activity;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.tebakgambar.TGApplication;
import com.tebakgambar.model.constant.AdManagerConstant;

/* JADX INFO: compiled from: AdManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f30759d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f30760a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RewardedAd f30761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InterstitialAd f30762c;

    /* JADX INFO: compiled from: AdManager.java */
    class a extends RewardedAdLoadCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ FullScreenContentCallback f30763a;

        a(FullScreenContentCallback fullScreenContentCallback) {
            this.f30763a = fullScreenContentCallback;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void a(LoadAdError loadAdError) {
            super.a(loadAdError);
            b.this.f30761b = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(RewardedAd rewardedAd) {
            super.b(rewardedAd);
            b.this.f30761b = rewardedAd;
            if (this.f30763a != null) {
                b.this.f30761b.d(this.f30763a);
            }
        }
    }

    /* JADX INFO: renamed from: j8.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdManager.java */
    class C0182b extends InterstitialAdLoadCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ FullScreenContentCallback f30765a;

        C0182b(FullScreenContentCallback fullScreenContentCallback) {
            this.f30765a = fullScreenContentCallback;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void a(LoadAdError loadAdError) {
            super.a(loadAdError);
            b.this.f30762c = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(InterstitialAd interstitialAd) {
            super.b(interstitialAd);
            b.this.f30762c = interstitialAd;
            b.this.f30762c.d(this.f30765a);
        }
    }

    public static AdRequest k() {
        return new AdRequest.Builder().c();
    }

    public static b l() {
        if (f30759d == null) {
            f30759d = new b();
        }
        return f30759d;
    }

    public static boolean n(InterstitialAd interstitialAd) {
        return (interstitialAd == null || interstitialAd.a() == null) ? false : true;
    }

    public static boolean o(RewardedAd rewardedAd) {
        return (rewardedAd == null || rewardedAd.a() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(RewardItem rewardItem) {
        this.f30760a = true;
    }

    private void u() {
        v(null);
    }

    public void A(Activity activity) {
        this.f30761b.e(activity, new OnUserEarnedRewardListener() { // from class: j8.a
            @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
            public final void a(RewardItem rewardItem) {
                this.f30742a.r(rewardItem);
            }
        });
    }

    public void f() {
        i();
        j();
    }

    public void g() {
        this.f30762c = null;
        s();
    }

    public void h() {
        this.f30761b = null;
        this.f30760a = false;
        u();
    }

    public void i() {
        InterstitialAd interstitialAd = this.f30762c;
        if (interstitialAd != null) {
            interstitialAd.d(null);
        } else {
            s();
        }
    }

    public void j() {
        this.f30760a = false;
        RewardedAd rewardedAd = this.f30761b;
        if (rewardedAd != null) {
            rewardedAd.d(null);
        } else {
            u();
        }
    }

    public boolean m() {
        InterstitialAd interstitialAd = this.f30762c;
        return (interstitialAd == null || interstitialAd.a() == null) ? false : true;
    }

    public boolean p() {
        RewardedAd rewardedAd = this.f30761b;
        return (rewardedAd == null || rewardedAd.a() == null) ? false : true;
    }

    public boolean q() {
        return this.f30760a;
    }

    public void s() {
        t(null);
    }

    public void t(FullScreenContentCallback fullScreenContentCallback) {
        InterstitialAd interstitialAd = this.f30762c;
        if (interstitialAd == null) {
            w(AdManagerConstant.COMMON_INTERSTITIAL_AD_UNIT_ID, new C0182b(fullScreenContentCallback));
        } else if (fullScreenContentCallback != null) {
            interstitialAd.d(fullScreenContentCallback);
        }
    }

    public void v(FullScreenContentCallback fullScreenContentCallback) {
        RewardedAd rewardedAd = this.f30761b;
        if (rewardedAd != null) {
            if (fullScreenContentCallback != null) {
                rewardedAd.d(fullScreenContentCallback);
            }
        } else {
            RewardedAd.c(TGApplication.d().getApplicationContext(), AdManagerConstant.COMMON_REWARDED_AD_UNIT_ID, new AdRequest.Builder().c(), new a(fullScreenContentCallback));
        }
    }

    public void w(String str, InterstitialAdLoadCallback interstitialAdLoadCallback) {
        InterstitialAd.c(TGApplication.d().getApplicationContext(), str, k(), interstitialAdLoadCallback);
    }

    public void x(boolean z10) {
        this.f30760a = z10;
    }

    public void y() {
        f30759d.s();
        f30759d.u();
    }

    public void z(Activity activity) {
        this.f30762c.f(activity);
    }
}
