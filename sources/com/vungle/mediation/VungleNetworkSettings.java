package com.vungle.mediation;

import com.vungle.warren.VungleSettings;

/* JADX INFO: loaded from: classes2.dex */
public class VungleNetworkSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f27611a = 52428800;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f27612b = 53477376;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f27613c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static VungleSettings f27614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static VungleSettingsChangedListener f27615e;

    public interface VungleSettingsChangedListener {
        void onVungleSettingsChanged(VungleSettings vungleSettings);
    }

    private static void a() {
        VungleSettings vungleSettingsBuild = new VungleSettings.Builder().setMinimumSpaceForInit(f27611a).setMinimumSpaceForAd(f27612b).setAndroidIdOptOut(f27613c).disableBannerRefresh().build();
        f27614d = vungleSettingsBuild;
        VungleSettingsChangedListener vungleSettingsChangedListener = f27615e;
        if (vungleSettingsChangedListener != null) {
            vungleSettingsChangedListener.onVungleSettingsChanged(vungleSettingsBuild);
        }
    }

    public static VungleSettings getVungleSettings() {
        if (f27614d == null) {
            f27614d = new VungleSettings.Builder().disableBannerRefresh().build();
        }
        return f27614d;
    }

    public static void setAndroidIdOptOut(boolean z10) {
        f27613c = z10;
        a();
    }

    public static void setMinSpaceForAdLoad(long j10) {
        f27612b = j10;
        a();
    }

    public static void setMinSpaceForInit(long j10) {
        f27611a = j10;
        a();
    }

    public static void setVungleSettingsChangedListener(VungleSettingsChangedListener vungleSettingsChangedListener) {
        f27615e = vungleSettingsChangedListener;
    }
}
