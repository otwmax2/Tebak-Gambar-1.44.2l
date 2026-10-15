package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import com.facebook.internal.ServerProtocol;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzyb implements DisplayManager.DisplayListener, zzxz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DisplayManager f21075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzxx f21076b;

    private zzyb(DisplayManager displayManager) {
        this.f21075a = displayManager;
    }

    public static zzxz b(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
        if (displayManager != null) {
            return new zzyb(displayManager);
        }
        return null;
    }

    private final Display c() {
        return this.f21075a.getDisplay(0);
    }

    @Override // com.google.android.gms.internal.ads.zzxz
    public final void a(zzxx zzxxVar) {
        this.f21076b = zzxxVar;
        this.f21075a.registerDisplayListener(this, zzew.d(null));
        zzyd.b(zzxxVar.f21071a, c());
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i10) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i10) {
        zzxx zzxxVar = this.f21076b;
        if (zzxxVar == null || i10 != 0) {
            return;
        }
        zzyd.b(zzxxVar.f21071a, c());
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzxz
    public final void zza() {
        this.f21075a.unregisterDisplayListener(this);
        this.f21076b = null;
    }
}
