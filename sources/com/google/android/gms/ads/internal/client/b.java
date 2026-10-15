package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
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
final class b extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbnf f5723c;

    b(zzaw zzawVar, Context context, zzbnf zzbnfVar) {
        this.f5722b = context;
        this.f5723c = zzbnfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    protected final /* bridge */ /* synthetic */ Object a() {
        zzaw.r(this.f5722b, "out_of_context_tester");
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        IObjectWrapper iObjectWrapperQ4 = ObjectWrapper.Q4(this.f5722b);
        zzbar.c(this.f5722b);
        if (((Boolean) zzba.c().b(zzbar.C8)).booleanValue()) {
            return zzceVar.y1(iObjectWrapperQ4, this.f5723c, ModuleDescriptor.MODULE_VERSION);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        IObjectWrapper iObjectWrapperQ4 = ObjectWrapper.Q4(this.f5722b);
        zzbar.c(this.f5722b);
        if (!((Boolean) zzba.c().b(zzbar.C8)).booleanValue()) {
            return null;
        }
        try {
            return ((zzdk) zzbze.b(this.f5722b, "com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl", new zzbzc() { // from class: com.google.android.gms.ads.internal.client.zzab
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
                    return iInterfaceQueryLocalInterface instanceof zzdk ? (zzdk) iInterfaceQueryLocalInterface : new zzdk(obj);
                }
            })).A9(iObjectWrapperQ4, this.f5723c, ModuleDescriptor.MODULE_VERSION);
        } catch (RemoteException | zzbzd | NullPointerException e10) {
            zzbsf.c(this.f5722b).a(e10, "ClientApiBroker.getOutOfContextTester");
            return null;
        }
    }
}
