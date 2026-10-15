package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbzc;
import com.google.android.gms.internal.ads.zzbzd;
import com.google.android.gms.internal.ads.zzbze;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class k extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzaw f5755c;

    k(zzaw zzawVar, Context context) {
        this.f5755c = zzawVar;
        this.f5754b = context;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    protected final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5754b, "mobile_ads_settings");
        return new zzey();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.T0(ObjectWrapper.Q4(this.f5754b), ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        zzbar.c(this.f5754b);
        if (!((Boolean) zzba.c().b(zzbar.f10179b9)).booleanValue()) {
            return this.f5755c.f5780c.c(this.f5754b);
        }
        try {
            IBinder iBinderA9 = ((zzcp) zzbze.b(this.f5754b, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", new zzbzc() { // from class: com.google.android.gms.ads.internal.client.zzap
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
                    return iInterfaceQueryLocalInterface instanceof zzcp ? (zzcp) iInterfaceQueryLocalInterface : new zzcp(obj);
                }
            })).A9(ObjectWrapper.Q4(this.f5754b), ModuleDescriptor.MODULE_VERSION);
            if (iBinderA9 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderA9.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return iInterfaceQueryLocalInterface instanceof zzco ? (zzco) iInterfaceQueryLocalInterface : new zzcm(iBinderA9);
        } catch (RemoteException | zzbzd | NullPointerException e10) {
            this.f5755c.f5785h = zzbsf.c(this.f5754b);
            this.f5755c.f5785h.a(e10, "ClientApiBroker.getMobileAdsSettingsManager");
            return null;
        }
    }
}
