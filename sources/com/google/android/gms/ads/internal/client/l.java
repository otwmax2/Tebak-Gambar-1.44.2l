package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbea;
import com.google.android.gms.internal.ads.zzbed;
import com.google.android.gms.internal.ads.zzbee;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbzc;
import com.google.android.gms.internal.ads.zzbzd;
import com.google.android.gms.internal.ads.zzbze;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class l extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ FrameLayout f5756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ FrameLayout f5757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ Context f5758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzaw f5759e;

    l(zzaw zzawVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f5759e = zzawVar;
        this.f5756b = frameLayout;
        this.f5757c = frameLayout2;
        this.f5758d = context;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    protected final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5758d, "native_ad_view_delegate");
        return new zzez();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.U6(ObjectWrapper.Q4(this.f5756b), ObjectWrapper.Q4(this.f5757c));
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        zzbar.c(this.f5758d);
        if (!((Boolean) zzba.c().b(zzbar.f10179b9)).booleanValue()) {
            return this.f5759e.f5781d.c(this.f5758d, this.f5756b, this.f5757c);
        }
        try {
            return zzbea.Sa(((zzbee) zzbze.b(this.f5758d, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl", new zzbzc() { // from class: com.google.android.gms.ads.internal.client.zzar
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    return zzbed.Sa(obj);
                }
            })).f9(ObjectWrapper.Q4(this.f5758d), ObjectWrapper.Q4(this.f5756b), ObjectWrapper.Q4(this.f5757c), ModuleDescriptor.MODULE_VERSION));
        } catch (RemoteException | zzbzd | NullPointerException e10) {
            this.f5759e.f5785h = zzbsf.c(this.f5758d);
            this.f5759e.f5785h.a(e10, "ClientApiBroker.createNativeAdViewDelegate");
            return null;
        }
    }
}
