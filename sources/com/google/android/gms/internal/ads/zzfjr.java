package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfjr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final zzfju f18331a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final boolean f18332b;

    private zzfjr(zzfju zzfjuVar) {
        this.f18331a = zzfjuVar;
        this.f18332b = zzfjuVar != null;
    }

    public static zzfjr b(Context context, String str, String str2) {
        zzfju zzfjsVar;
        try {
            try {
                try {
                    IBinder iBinderD = DynamiteModule.e(context, DynamiteModule.f7911b, ModuleDescriptor.MODULE_ID).d("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (iBinderD == null) {
                        zzfjsVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderD.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        zzfjsVar = iInterfaceQueryLocalInterface instanceof zzfju ? (zzfju) iInterfaceQueryLocalInterface : new zzfjs(iBinderD);
                    }
                    zzfjsVar.I9(ObjectWrapper.Q4(context), str, null);
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new zzfjr(zzfjsVar);
                } catch (Exception e10) {
                    throw new zzfit(e10);
                }
            } catch (Exception e11) {
                throw new zzfit(e11);
            }
        } catch (RemoteException | zzfit | NullPointerException | SecurityException unused) {
            Log.d("GASS", "Cannot dynamite load clearcut");
            return new zzfjr(new zzfjv());
        }
    }

    public static zzfjr c() {
        zzfjv zzfjvVar = new zzfjv();
        Log.d("GASS", "Clearcut logging disabled");
        return new zzfjr(zzfjvVar);
    }

    public final zzfjq a(byte[] bArr) {
        return new zzfjq(this, bArr, null);
    }
}
