package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfgy implements Runnable {
    zzfgy() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzfhb.f18201k != null) {
            zzfhb.f18201k.post(zzfhb.f18202l);
            zzfhb.f18201k.postDelayed(zzfhb.f18203m, 200L);
        }
    }
}
