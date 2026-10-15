package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class h extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzq f5742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f5743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzaw f5744e;

    h(zzaw zzawVar, Context context, zzq zzqVar, String str) {
        this.f5744e = zzawVar;
        this.f5741b = context;
        this.f5742c = zzqVar;
        this.f5743d = str;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5741b, "search");
        return new zzew();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.w6(ObjectWrapper.Q4(this.f5741b), this.f5742c, this.f5743d, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        return this.f5744e.f5778a.c(this.f5741b, this.f5742c, this.f5743d, null, 3);
    }
}
