package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.WindowManager;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzya implements zzxz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WindowManager f21074a;

    private zzya(WindowManager windowManager) {
        this.f21074a = windowManager;
    }

    public static zzxz b(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            return new zzya(windowManager);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxz
    public final void a(zzxx zzxxVar) {
        zzyd.b(zzxxVar.f21071a, this.f21074a.getDefaultDisplay());
    }

    @Override // com.google.android.gms.internal.ads.zzxz
    public final void zza() {
    }
}
