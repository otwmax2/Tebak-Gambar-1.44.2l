package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeni implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f17001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyx f17002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PackageInfo f17003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f17004d;

    public zzeni(zzfuu zzfuuVar, zzeyx zzeyxVar, PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f17001a = zzfuuVar;
        this.f17002b = zzeyxVar;
        this.f17003c = packageInfo;
        this.f17004d = zzgVar;
    }

    public static /* synthetic */ zzenj a(final zzeni zzeniVar) {
        final ArrayList arrayList = zzeniVar.f17002b.f17734g;
        return arrayList == null ? new zzenj() { // from class: com.google.android.gms.internal.ads.zzene
            @Override // com.google.android.gms.internal.ads.zzepm
            public final void a(Object obj) {
            }
        } : arrayList.isEmpty() ? new zzenj() { // from class: com.google.android.gms.internal.ads.zzenf
            @Override // com.google.android.gms.internal.ads.zzepm
            public final void a(Object obj) {
                ((Bundle) obj).putInt("native_version", 0);
            }
        } : new zzenj() { // from class: com.google.android.gms.internal.ads.zzeng
            @Override // com.google.android.gms.internal.ads.zzepm
            public final void a(Object obj) {
                this.f16998a.b(arrayList, (Bundle) obj);
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void b(java.util.ArrayList r9, android.os.Bundle r10) {
        /*
            Method dump skipped, instruction units count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeni.b(java.util.ArrayList, android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 26;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17001a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzenh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeni.a(this.f17000a);
            }
        });
    }
}
