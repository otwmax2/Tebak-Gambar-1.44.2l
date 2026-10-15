package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbnf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class g extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzq f5737c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f5738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzbnf f5739e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ zzaw f5740f;

    g(zzaw zzawVar, Context context, zzq zzqVar, String str, zzbnf zzbnfVar) {
        this.f5740f = zzawVar;
        this.f5736b = context;
        this.f5737c = zzqVar;
        this.f5738d = str;
        this.f5739e = zzbnfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5736b, "app_open");
        return new zzew();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.I5(ObjectWrapper.Q4(this.f5736b), this.f5737c, this.f5738d, this.f5739e, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        return this.f5740f.f5778a.c(this.f5736b, this.f5737c, this.f5738d, this.f5739e, 4);
    }
}
