package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzenc implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzeyb f16993a;

    public zzenc(zzeyb zzeybVar) {
        this.f16993a = zzeybVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzeyb zzeybVar = this.f16993a;
        if (zzeybVar != null) {
            bundle.putBoolean("render_in_browser", zzeybVar.d());
            bundle.putBoolean("disable_ml", this.f16993a.c());
        }
    }
}
