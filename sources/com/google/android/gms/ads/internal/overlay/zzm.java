package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzdcc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzm {
    public static final void a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z10) {
        if (adOverlayInfoParcel.f5979y != 4 || adOverlayInfoParcel.f5971q != null) {
            Intent intent = new Intent();
            intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
            intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.A.f11608r);
            intent.putExtra("shouldCallOnOverlayOpened", z10);
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
            intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
            if (!PlatformVersion.g()) {
                intent.addFlags(524288);
            }
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            com.google.android.gms.ads.internal.zzt.r();
            com.google.android.gms.ads.internal.util.zzs.q(context, intent);
            return;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.f5970p;
        if (zzaVar != null) {
            zzaVar.w0();
        }
        zzdcc zzdccVar = adOverlayInfoParcel.M;
        if (zzdccVar != null) {
            zzdccVar.p();
        }
        Activity activityG = adOverlayInfoParcel.f5972r.g();
        zzc zzcVar = adOverlayInfoParcel.f5969o;
        if (zzcVar != null && zzcVar.f5995x && activityG != null) {
            context = activityG;
        }
        com.google.android.gms.ads.internal.zzt.j();
        zzc zzcVar2 = adOverlayInfoParcel.f5969o;
        zza.b(context, zzcVar2, adOverlayInfoParcel.f5977w, zzcVar2 != null ? zzcVar2.f5994w : null);
    }
}
