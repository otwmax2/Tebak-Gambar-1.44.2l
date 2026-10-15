package com.google.android.gms.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.zzdw;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import java.util.Date;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class AdRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final zzdx f5576a;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final zzdw f5577a;

        public Builder() {
            zzdw zzdwVar = new zzdw();
            this.f5577a = zzdwVar;
            zzdwVar.w("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public Builder a(String str) {
            this.f5577a.u(str);
            return this;
        }

        public Builder b(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.f5577a.v(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f5577a.x("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        public AdRequest c() {
            return new AdRequest(this);
        }

        public Builder d(String str) {
            this.f5577a.c(str);
            return this;
        }

        @Deprecated
        public final Builder e(String str) {
            this.f5577a.w(str);
            return this;
        }

        @Deprecated
        public final Builder f(Date date) {
            this.f5577a.y(date);
            return this;
        }

        @Deprecated
        public final Builder g(int i10) {
            this.f5577a.a(i10);
            return this;
        }

        @Deprecated
        public final Builder h(boolean z10) {
            this.f5577a.b(z10);
            return this;
        }

        @Deprecated
        public final Builder i(boolean z10) {
            this.f5577a.d(z10);
            return this;
        }
    }

    protected AdRequest(Builder builder) {
        this.f5576a = new zzdx(builder.f5577a, null);
    }

    public final zzdx a() {
        return this.f5576a;
    }
}
