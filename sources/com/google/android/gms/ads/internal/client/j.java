package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbzc;
import com.google.android.gms.internal.ads.zzbzd;
import com.google.android.gms.internal.ads.zzbze;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class j extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f5751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzbnf f5752d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzaw f5753e;

    j(zzaw zzawVar, Context context, String str, zzbnf zzbnfVar) {
        this.f5753e = zzawVar;
        this.f5750b = context;
        this.f5751c = str;
        this.f5752d = zzbnfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    protected final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5750b, "native_ad");
        return new zzeu();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.V9(ObjectWrapper.Q4(this.f5750b), this.f5751c, this.f5752d, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        zzbar.c(this.f5750b);
        if (!((Boolean) zzba.c().b(zzbar.f10179b9)).booleanValue()) {
            return this.f5753e.f5779b.c(this.f5750b, this.f5751c, this.f5752d);
        }
        try {
            IBinder iBinderA9 = ((zzbr) zzbze.b(this.f5750b, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", new zzbzc() { // from class: com.google.android.gms.ads.internal.client.zzan
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                    return iInterfaceQueryLocalInterface instanceof zzbr ? (zzbr) iInterfaceQueryLocalInterface : new zzbr(obj);
                }
            })).A9(ObjectWrapper.Q4(this.f5750b), this.f5751c, this.f5752d, ModuleDescriptor.MODULE_VERSION);
            if (iBinderA9 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderA9.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return iInterfaceQueryLocalInterface instanceof zzbq ? (zzbq) iInterfaceQueryLocalInterface : new zzbo(iBinderA9);
        } catch (RemoteException | zzbzd | NullPointerException e10) {
            this.f5753e.f5785h = zzbsf.c(this.f5750b);
            this.f5753e.f5785h.a(e10, "ClientApiBroker.createAdLoaderBuilder");
            return null;
        }
    }
}
