package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzaz extends AdListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5792a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdListener f5793b;

    @Override // com.google.android.gms.ads.AdListener
    public final void e() {
        synchronized (this.f5792a) {
            AdListener adListener = this.f5793b;
            if (adListener != null) {
                adListener.e();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void m(LoadAdError loadAdError) {
        synchronized (this.f5792a) {
            AdListener adListener = this.f5793b;
            if (adListener != null) {
                adListener.m(loadAdError);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void n() {
        synchronized (this.f5792a) {
            AdListener adListener = this.f5793b;
            if (adListener != null) {
                adListener.n();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void o() {
        synchronized (this.f5792a) {
            AdListener adListener = this.f5793b;
            if (adListener != null) {
                adListener.o();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void p() {
        synchronized (this.f5792a) {
            AdListener adListener = this.f5793b;
            if (adListener != null) {
                adListener.p();
            }
        }
    }

    public final void v(AdListener adListener) {
        synchronized (this.f5792a) {
            this.f5793b = adListener;
        }
    }

    @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        synchronized (this.f5792a) {
            AdListener adListener = this.f5793b;
            if (adListener != null) {
                adListener.w0();
            }
        }
    }
}
