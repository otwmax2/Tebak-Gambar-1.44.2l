package com.google.ads.mediation.vungle;

import android.util.Log;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.vungle.mediation.VungleBannerAdapter;
import com.vungle.warren.VungleBanner;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: VungleBannerAd.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f5518d = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<VungleBannerAdapter> f5519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private VungleBanner f5521c;

    public a(String str, VungleBannerAdapter vungleBannerAdapter) {
        this.f5520b = str;
        this.f5519a = new WeakReference<>(vungleBannerAdapter);
    }

    public void a() {
        RelativeLayout adLayout;
        VungleBanner vungleBanner;
        VungleBannerAdapter vungleBannerAdapter = this.f5519a.get();
        if (vungleBannerAdapter == null || (adLayout = vungleBannerAdapter.getAdLayout()) == null || (vungleBanner = this.f5521c) == null || vungleBanner.getParent() != null) {
            return;
        }
        adLayout.addView(this.f5521c);
    }

    public void b() {
        if (this.f5521c != null) {
            Log.d(f5518d, "Vungle banner adapter cleanUp: destroyAd # " + this.f5521c.hashCode());
            this.f5521c.destroyAd();
            this.f5521c = null;
        }
    }

    public void c() {
        VungleBanner vungleBanner = this.f5521c;
        if (vungleBanner == null || vungleBanner.getParent() == null) {
            return;
        }
        ((ViewGroup) this.f5521c.getParent()).removeView(this.f5521c);
    }

    public VungleBannerAdapter d() {
        return this.f5519a.get();
    }

    public VungleBanner e() {
        return this.f5521c;
    }

    public void f(VungleBanner vungleBanner) {
        this.f5521c = vungleBanner;
    }
}
