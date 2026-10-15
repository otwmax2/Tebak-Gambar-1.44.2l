package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepc implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f17121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f17122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbzg f17123c;

    zzepc(zzfuu zzfuuVar, Context context, zzbzg zzbzgVar) {
        this.f17121a = zzfuuVar;
        this.f17122b = context;
        this.f17123c = zzbzgVar;
    }

    final /* synthetic */ zzepd a() throws Exception {
        boolean zG = Wrappers.a(this.f17122b).g();
        com.google.android.gms.ads.internal.zzt.r();
        boolean zA = com.google.android.gms.ads.internal.util.zzs.a(this.f17122b);
        String str = this.f17123c.f11605o;
        com.google.android.gms.ads.internal.zzt.r();
        boolean zB = com.google.android.gms.ads.internal.util.zzs.b();
        com.google.android.gms.ads.internal.zzt.r();
        ApplicationInfo applicationInfo = this.f17122b.getApplicationInfo();
        return new zzepd(zG, zA, str, zB, applicationInfo == null ? 0 : applicationInfo.targetSdkVersion, DynamiteModule.c(this.f17122b, ModuleDescriptor.MODULE_ID), DynamiteModule.a(this.f17122b, ModuleDescriptor.MODULE_ID));
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 35;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17121a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzepb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f17120a.a();
            }
        });
    }
}
