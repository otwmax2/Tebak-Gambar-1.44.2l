package com.vungle.mediation;

import android.os.Bundle;
import android.text.TextUtils;
import com.vungle.warren.AdConfig;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class VungleExtrasBuilder {
    public static final String EXTRA_USER_ID = "userId";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f27604a;

    public VungleExtrasBuilder(String[] strArr) {
        Bundle bundle = new Bundle();
        this.f27604a = bundle;
        bundle.putStringArray("allPlacements", strArr);
    }

    public static AdConfig adConfigWithNetworkExtras(Bundle bundle, boolean z10) {
        AdConfig adConfig = new AdConfig();
        adConfig.setMuted(z10);
        if (bundle != null) {
            adConfig.setMuted(bundle.getBoolean("startMuted", z10));
            adConfig.setOrdinal(bundle.getInt("ordinalViewCount", 0));
            adConfig.setAdOrientation(bundle.getInt("adOrientation", 2));
        }
        return adConfig;
    }

    public Bundle build() {
        if (TextUtils.isEmpty(this.f27604a.getString("uniqueVungleRequestKey", null))) {
            this.f27604a.putString("uniqueVungleRequestKey", UUID.randomUUID().toString());
        }
        return this.f27604a;
    }

    public VungleExtrasBuilder setAdOrientation(int i10) {
        this.f27604a.putInt("adOrientation", i10);
        return this;
    }

    public VungleExtrasBuilder setBannerUniqueRequestID(String str) {
        this.f27604a.putString("uniqueVungleRequestKey", str);
        return this;
    }

    public VungleExtrasBuilder setOrdinalViewCount(int i10) {
        this.f27604a.putInt("ordinalViewCount", i10);
        return this;
    }

    public VungleExtrasBuilder setPlayingPlacement(String str) {
        this.f27604a.putString("playPlacement", str);
        return this;
    }

    @Deprecated
    public VungleExtrasBuilder setSoundEnabled(boolean z10) {
        return setStartMuted(!z10);
    }

    public VungleExtrasBuilder setStartMuted(boolean z10) {
        this.f27604a.putBoolean("startMuted", z10);
        return this;
    }

    public VungleExtrasBuilder setUserId(String str) {
        this.f27604a.putString(EXTRA_USER_ID, str);
        return this;
    }
}
