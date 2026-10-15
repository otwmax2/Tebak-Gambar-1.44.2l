package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbrb;
import com.google.android.gms.internal.ads.zzbre;
import com.google.android.gms.internal.ads.zzbrf;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbzc;
import com.google.android.gms.internal.ads.zzbzd;
import com.google.android.gms.internal.ads.zzbze;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class a extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Activity f5720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzaw f5721c;

    a(zzaw zzawVar, Activity activity) {
        this.f5721c = zzawVar;
        this.f5720b = activity;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    protected final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5720b, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.l1(ObjectWrapper.Q4(this.f5720b));
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        zzbar.c(this.f5720b);
        if (!((Boolean) zzba.c().b(zzbar.f10179b9)).booleanValue()) {
            return this.f5721c.f5783f.c(this.f5720b);
        }
        try {
            return zzbrb.Sa(((zzbrf) zzbze.b(this.f5720b, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", new zzbzc() { // from class: com.google.android.gms.ads.internal.client.zzz
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    return zzbre.Sa(obj);
                }
            })).zze(ObjectWrapper.Q4(this.f5720b)));
        } catch (RemoteException | zzbzd | NullPointerException e10) {
            this.f5721c.f5785h = zzbsf.c(this.f5720b.getApplicationContext());
            this.f5721c.f5785h.a(e10, "ClientApiBroker.createAdOverlay");
            return null;
        }
    }
}
