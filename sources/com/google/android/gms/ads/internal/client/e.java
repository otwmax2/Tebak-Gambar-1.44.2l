package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbij;
import com.google.android.gms.internal.ads.zzbir;
import com.google.android.gms.internal.ads.zzbis;
import com.google.android.gms.internal.ads.zzbiw;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbzc;
import com.google.android.gms.internal.ads.zzbzd;
import com.google.android.gms.internal.ads.zzbze;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class e extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbnf f5729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ OnH5AdsEventListener f5730d;

    e(zzaw zzawVar, Context context, zzbnf zzbnfVar, OnH5AdsEventListener onH5AdsEventListener) {
        this.f5728b = context;
        this.f5729c = zzbnfVar;
        this.f5730d = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    protected final /* synthetic */ Object a() {
        return new zzbiw();
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.U3(ObjectWrapper.Q4(this.f5728b), this.f5729c, ModuleDescriptor.MODULE_VERSION, new zzbij(this.f5730d));
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        try {
            return ((zzbis) zzbze.b(this.f5728b, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl", new zzbzc() { // from class: com.google.android.gms.ads.internal.client.zzah
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    return zzbir.Sa(obj);
                }
            })).g5(ObjectWrapper.Q4(this.f5728b), this.f5729c, ModuleDescriptor.MODULE_VERSION, new zzbij(this.f5730d));
        } catch (RemoteException | zzbzd | NullPointerException unused) {
            return null;
        }
    }
}
