package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.d;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbs;
import com.google.android.gms.internal.ads.zzgxm;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class m implements zzbbq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbbs f6048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f6049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Uri f6050c;

    m(zzs zzsVar, zzbbs zzbbsVar, Context context, Uri uri) {
        this.f6048a = zzbbsVar;
        this.f6049b = context;
        this.f6050c = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbbq
    public final void zza() {
        androidx.browser.customtabs.d dVarA = new d.a(this.f6048a.a()).a();
        dVarA.f1276a.setPackage(zzgxm.a(this.f6049b));
        dVarA.a(this.f6049b, this.f6050c);
        this.f6048a.f((Activity) this.f6049b);
    }
}
