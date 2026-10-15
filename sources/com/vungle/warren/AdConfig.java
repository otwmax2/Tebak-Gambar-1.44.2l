package com.vungle.warren;

import androidx.annotation.Keep;
import b7.c;
import com.vungle.warren.model.ReportDBAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class AdConfig extends BaseAdConfig {
    public static final int AUTO_ROTATE = 2;
    public static final int IMMEDIATE_BACK = 2;
    public static final int IMMERSIVE = 4;
    public static final int LANDSCAPE = 1;
    public static final int MATCH_VIDEO = 3;
    public static final int PORTRAIT = 0;
    public static final int TRANSITION_ANIMATE = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @c(ReportDBAdapter.ReportColumns.COLUMN_ORDINAL)
    private int f27630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @c("adOrientation")
    @Orientation
    private int f27631d;

    @Keep
    public enum AdSize {
        VUNGLE_MREC("mrec", 300, 250),
        VUNGLE_DEFAULT("default", -1, -1),
        BANNER("banner", 320, 50),
        BANNER_SHORT("banner_short", 300, 50),
        BANNER_LEADERBOARD("banner_leaderboard", 728, 90);

        private final int height;
        private final String name;
        private final int width;

        AdSize(String str, int i10, int i11) {
            this.width = i10;
            this.height = i11;
            this.name = str;
        }

        public static AdSize fromName(String str) {
            for (AdSize adSize : values()) {
                if (adSize.name.equals(str)) {
                    return adSize;
                }
            }
            return VUNGLE_DEFAULT;
        }

        public static boolean isBannerAdSize(AdSize adSize) {
            return adSize == BANNER || adSize == BANNER_LEADERBOARD || adSize == BANNER_SHORT || adSize == VUNGLE_MREC;
        }

        public static boolean isDefaultAdSize(AdSize adSize) {
            return adSize == VUNGLE_DEFAULT || adSize == VUNGLE_MREC;
        }

        public static boolean isNonMrecBannerAdSize(AdSize adSize) {
            return adSize != VUNGLE_MREC && isBannerAdSize(adSize);
        }

        public int getHeight() {
            return this.height;
        }

        public String getName() {
            return this.name;
        }

        public int getWidth() {
            return this.width;
        }
    }

    public @interface Orientation {
    }

    public @interface Settings {
    }

    public AdConfig() {
        this.f27631d = 2;
    }

    @Orientation
    public int getAdOrientation() {
        return this.f27631d;
    }

    @Override // com.vungle.warren.BaseAdConfig
    public /* bridge */ /* synthetic */ AdSize getAdSize() {
        return super.getAdSize();
    }

    public int getOrdinal() {
        return this.f27630c;
    }

    @Override // com.vungle.warren.BaseAdConfig
    public /* bridge */ /* synthetic */ int getSettings() {
        return super.getSettings();
    }

    public void setAdOrientation(@Orientation int i10) {
        this.f27631d = i10;
    }

    @Override // com.vungle.warren.BaseAdConfig
    public /* bridge */ /* synthetic */ void setAdSize(AdSize adSize) {
        super.setAdSize(adSize);
    }

    public void setBackButtonImmediatelyEnabled(boolean z10) {
        if (z10) {
            this.f27770a |= 2;
        } else {
            this.f27770a &= -3;
        }
    }

    public void setImmersiveMode(boolean z10) {
        if (z10) {
            this.f27770a |= 4;
        } else {
            this.f27770a &= -5;
        }
    }

    @Override // com.vungle.warren.BaseAdConfig
    public /* bridge */ /* synthetic */ void setMuted(boolean z10) {
        super.setMuted(z10);
    }

    public void setOrdinal(int i10) {
        this.f27630c = i10;
    }

    public void setTransitionAnimationEnabled(boolean z10) {
        if (z10) {
            this.f27770a |= 8;
        } else {
            this.f27770a &= -9;
        }
    }

    public AdConfig(AdSize adSize) {
        super(adSize);
        this.f27631d = 2;
    }

    public AdConfig(BaseAdConfig baseAdConfig) {
        super(baseAdConfig);
        this.f27631d = 2;
    }
}
