package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzenu implements zzepn, zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ApplicationInfo f17021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PackageInfo f17022b;

    zzenu(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.f17021a = applicationInfo;
        this.f17022b = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.f17021a.packageName;
        PackageInfo packageInfo = this.f17022b;
        Integer numValueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle.putString("pn", str);
        if (numValueOf != null) {
            bundle.putInt("vc", numValueOf.intValue());
        }
        PackageInfo packageInfo2 = this.f17022b;
        String str2 = packageInfo2 != null ? packageInfo2.versionName : null;
        if (str2 != null) {
            bundle.putString("vnm", str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 29;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.h(this);
    }
}
