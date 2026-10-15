package com.google.android.gms.internal.games;

import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f23187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f23188c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f23189d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f23190e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f23191f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f23192g = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public IBinder f23186a = null;

    public zzfg(int i10, IBinder iBinder) {
        this.f23187b = i10;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt("popupLocationInfo.gravity", this.f23187b);
        bundle.putInt("popupLocationInfo.displayId", this.f23188c);
        bundle.putInt("popupLocationInfo.left", this.f23189d);
        bundle.putInt("popupLocationInfo.top", this.f23190e);
        bundle.putInt("popupLocationInfo.right", this.f23191f);
        bundle.putInt("popupLocationInfo.bottom", this.f23192g);
        return bundle;
    }
}
