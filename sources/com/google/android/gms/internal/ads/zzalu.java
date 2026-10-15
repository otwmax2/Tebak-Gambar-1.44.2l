package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzalu implements zzalj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private File f9508a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f9509b;

    zzalu(Context context) {
        this.f9509b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final File zza() {
        if (this.f9508a == null) {
            this.f9508a = new File(this.f9509b.getCacheDir(), "volley");
        }
        return this.f9508a;
    }
}
