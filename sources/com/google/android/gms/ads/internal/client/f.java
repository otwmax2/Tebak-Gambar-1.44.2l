package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbnf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class f extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzq f5732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f5733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzbnf f5734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ zzaw f5735f;

    f(zzaw zzawVar, Context context, zzq zzqVar, String str, zzbnf zzbnfVar) {
        this.f5735f = zzawVar;
        this.f5731b = context;
        this.f5732c = zzqVar;
        this.f5733d = str;
        this.f5734e = zzbnfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5731b, "banner");
        return new zzew();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.p2(ObjectWrapper.Q4(this.f5731b), this.f5732c, this.f5733d, this.f5734e, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        return this.f5735f.f5778a.c(this.f5731b, this.f5732c, this.f5733d, this.f5734e, 1);
    }
}
