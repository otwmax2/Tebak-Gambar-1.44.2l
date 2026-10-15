package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import androidx.browser.customtabs.c;
import androidx.browser.customtabs.e;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgxn extends e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final WeakReference f19742o;

    public zzgxn(zzbbs zzbbsVar, byte[] bArr) {
        this.f19742o = new WeakReference(zzbbsVar);
    }

    @Override // androidx.browser.customtabs.e
    public final void onCustomTabsServiceConnected(ComponentName componentName, c cVar) {
        zzbbs zzbbsVar = (zzbbs) this.f19742o.get();
        if (zzbbsVar != null) {
            zzbbsVar.c(cVar);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbbs zzbbsVar = (zzbbs) this.f19742o.get();
        if (zzbbsVar != null) {
            zzbbsVar.d();
        }
    }
}
