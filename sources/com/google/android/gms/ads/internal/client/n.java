package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbcf;
import com.google.android.gms.internal.ads.zzbct;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzce f5764a;

    static {
        zzce zzccVar = null;
        try {
            Object objNewInstance = zzaw.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (objNewInstance instanceof IBinder) {
                IBinder iBinder = (IBinder) objNewInstance;
                if (iBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzccVar = iInterfaceQueryLocalInterface instanceof zzce ? (zzce) iInterfaceQueryLocalInterface : new zzcc(iBinder);
                }
            } else {
                zzbza.g("ClientApi class is not an instance of IBinder.");
            }
        } catch (Exception unused) {
            zzbza.g("Failed to instantiate ClientApi class.");
        }
        f5764a = zzccVar;
    }

    n() {
    }

    private final Object e() {
        zzce zzceVar = f5764a;
        if (zzceVar == null) {
            zzbza.g("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return b(zzceVar);
        } catch (RemoteException e10) {
            zzbza.h("Cannot invoke local loader using ClientApi class.", e10);
            return null;
        }
    }

    private final Object f() {
        try {
            return c();
        } catch (RemoteException e10) {
            zzbza.h("Cannot invoke remote loader.", e10);
            return null;
        }
    }

    protected abstract Object a();

    protected abstract Object b(zzce zzceVar) throws RemoteException;

    protected abstract Object c() throws RemoteException;

    public final Object d(Context context, boolean z10) {
        boolean z11;
        Object objE;
        if (!z10) {
            zzay.b();
            if (!zzbyt.y(context, 12451000)) {
                zzbza.b("Google Play Services is not available.");
                z10 = true;
            }
        }
        boolean z12 = false;
        boolean z13 = !(DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) <= DynamiteModule.c(context, ModuleDescriptor.MODULE_ID));
        zzbar.c(context);
        if (((Boolean) zzbcf.f10520a.e()).booleanValue()) {
            z11 = false;
        } else if (((Boolean) zzbcf.f10521b.e()).booleanValue()) {
            z11 = true;
            z12 = true;
        } else {
            z12 = z10 | z13;
            z11 = false;
        }
        if (z12) {
            objE = e();
            if (objE == null && !z11) {
                objE = f();
            }
        } else {
            Object objF = f();
            if (objF == null) {
                if (zzay.e().nextInt(((Long) zzbct.f10595a.e()).intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", 1);
                    zzay.b().t(context, zzay.c().f11605o, "gmob-apps", bundle, true);
                }
            }
            objE = objF == null ? e() : objF;
        }
        return objE == null ? a() : objE;
    }
}
