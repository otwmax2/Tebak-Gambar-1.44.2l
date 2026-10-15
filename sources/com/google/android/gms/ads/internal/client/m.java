package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbvi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class m extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f5761c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzbnf f5762d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzaw f5763e;

    m(zzaw zzawVar, Context context, String str, zzbnf zzbnfVar) {
        this.f5763e = zzawVar;
        this.f5760b = context;
        this.f5761c = str;
        this.f5762d = zzbnfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    protected final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5760b, "rewarded");
        return new zzfc();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.H5(ObjectWrapper.Q4(this.f5760b), this.f5761c, this.f5762d, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        return zzbvi.a(this.f5760b, this.f5761c, this.f5762d);
    }
}
