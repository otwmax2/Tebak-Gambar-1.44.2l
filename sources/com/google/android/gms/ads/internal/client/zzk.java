package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbsh;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzc;
import com.google.android.gms.internal.ads.zzbzd;
import com.google.android.gms.internal.ads.zzbze;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzk extends RemoteCreator {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzbsh f5905c;

    @VisibleForTesting
    public zzk() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return iInterfaceQueryLocalInterface instanceof zzbv ? (zzbv) iInterfaceQueryLocalInterface : new zzbv(iBinder);
    }

    public final zzbu c(Context context, zzq zzqVar, String str, zzbnf zzbnfVar, int i10) {
        zzbar.c(context);
        if (!((Boolean) zzba.c().b(zzbar.f10179b9)).booleanValue()) {
            try {
                IBinder iBinderA9 = ((zzbv) b(context)).A9(ObjectWrapper.Q4(context), zzqVar, str, zzbnfVar, ModuleDescriptor.MODULE_VERSION, i10);
                if (iBinderA9 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinderA9.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                return iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(iBinderA9);
            } catch (RemoteException | RemoteCreator.RemoteCreatorException e10) {
                zzbza.c("Could not create remote AdManager.", e10);
                return null;
            }
        }
        try {
            IBinder iBinderA92 = ((zzbv) zzbze.b(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", new zzbzc() { // from class: com.google.android.gms.ads.internal.client.zzj
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface2 = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    return iInterfaceQueryLocalInterface2 instanceof zzbv ? (zzbv) iInterfaceQueryLocalInterface2 : new zzbv(obj);
                }
            })).A9(ObjectWrapper.Q4(context), zzqVar, str, zzbnfVar, ModuleDescriptor.MODULE_VERSION, i10);
            if (iBinderA92 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface2 = iBinderA92.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return iInterfaceQueryLocalInterface2 instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface2 : new zzbs(iBinderA92);
        } catch (RemoteException | zzbzd | NullPointerException e11) {
            zzbsh zzbshVarC = zzbsf.c(context);
            this.f5905c = zzbshVarC;
            zzbshVarC.a(e11, "AdManagerCreator.newAdManagerByDynamiteLoader");
            zzbza.i("#007 Could not call remote method.", e11);
            return null;
        }
    }
}
