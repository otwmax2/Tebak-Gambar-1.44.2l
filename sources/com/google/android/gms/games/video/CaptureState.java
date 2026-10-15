package com.google.android.gms.games.video;

import android.os.Bundle;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class CaptureState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f8262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f8265d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f8266e;

    private CaptureState(boolean z10, int i10, int i11, boolean z11, boolean z12) {
        Preconditions.a(VideoConfiguration.Z3(i10, true));
        Preconditions.a(VideoConfiguration.a4(i11, true));
        this.f8262a = z10;
        this.f8263b = i10;
        this.f8264c = i11;
        this.f8265d = z11;
        this.f8266e = z12;
    }

    public static CaptureState a(Bundle bundle) {
        if (bundle == null || bundle.get("IsCapturing") == null) {
            return null;
        }
        return new CaptureState(bundle.getBoolean("IsCapturing", false), bundle.getInt("CaptureMode", -1), bundle.getInt("CaptureQuality", -1), bundle.getBoolean("IsOverlayVisible", false), bundle.getBoolean("IsPaused", false));
    }

    public final String toString() {
        return Objects.d(this).a("IsCapturing", Boolean.valueOf(this.f8262a)).a("CaptureMode", Integer.valueOf(this.f8263b)).a("CaptureQuality", Integer.valueOf(this.f8264c)).a("IsOverlayVisible", Boolean.valueOf(this.f8265d)).a("IsPaused", Boolean.valueOf(this.f8266e)).toString();
    }
}
