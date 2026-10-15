package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbnf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class i extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzq f5746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f5747d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzbnf f5748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ zzaw f5749f;

    i(zzaw zzawVar, Context context, zzq zzqVar, String str, zzbnf zzbnfVar) {
        this.f5749f = zzawVar;
        this.f5745b = context;
        this.f5746c = zzqVar;
        this.f5747d = str;
        this.f5748e = zzbnfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5745b, "interstitial");
        return new zzew();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.z3(ObjectWrapper.Q4(this.f5745b), this.f5746c, this.f5747d, this.f5748e, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        return this.f5749f.f5778a.c(this.f5745b, this.f5746c, this.f5747d, this.f5748e, 2);
    }
}
