package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezq {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static zzezq f17774d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzcl f17776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicReference f17777c = new AtomicReference();

    @VisibleForTesting
    zzezq(Context context, com.google.android.gms.ads.internal.client.zzcl zzclVar) {
        this.f17775a = context;
        this.f17776b = zzclVar;
    }

    @VisibleForTesting
    static com.google.android.gms.ads.internal.client.zzcl a(Context context) {
        try {
            return com.google.android.gms.ads.internal.client.zzck.asInterface((IBinder) context.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(context));
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            zzbza.e("Failed to retrieve lite SDK info.", e10);
            return null;
        }
    }

    public static zzezq d(Context context) {
        synchronized (zzezq.class) {
            zzezq zzezqVar = f17774d;
            if (zzezqVar != null) {
                return zzezqVar;
            }
            Context applicationContext = context.getApplicationContext();
            long jLongValue = ((Long) zzbcn.f10577b.e()).longValue();
            com.google.android.gms.ads.internal.client.zzcl zzclVarA = null;
            if (jLongValue > 0 && jLongValue <= 230500000) {
                zzclVarA = a(applicationContext);
            }
            zzezq zzezqVar2 = new zzezq(applicationContext, zzclVarA);
            f17774d = zzezqVar2;
            return zzezqVar2;
        }
    }

    public final zzbnf b() {
        return (zzbnf) this.f17777c.get();
    }

    public final zzbzg c(int i10, boolean z10, int i11) {
        com.google.android.gms.ads.internal.zzt.r();
        boolean zA = com.google.android.gms.ads.internal.util.zzs.a(this.f17775a);
        zzbzg zzbzgVar = new zzbzg(ModuleDescriptor.MODULE_VERSION, i11, true, zA);
        if (!((Boolean) zzbcn.f10578c.e()).booleanValue()) {
            return zzbzgVar;
        }
        com.google.android.gms.ads.internal.client.zzcl zzclVar = this.f17776b;
        com.google.android.gms.ads.internal.client.zzen liteSdkVersion = null;
        if (zzclVar != null) {
            try {
                liteSdkVersion = zzclVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
        }
        return liteSdkVersion == null ? zzbzgVar : new zzbzg(ModuleDescriptor.MODULE_VERSION, liteSdkVersion.V3(), true, zA);
    }

    public final void e(zzbnf zzbnfVar) {
        zzbnf adapterCreator;
        if (!((Boolean) zzbcn.f10576a.e()).booleanValue()) {
            zzezp.a(this.f17777c, null, zzbnfVar);
            return;
        }
        com.google.android.gms.ads.internal.client.zzcl zzclVar = this.f17776b;
        if (zzclVar == null) {
            adapterCreator = null;
        } else {
            try {
                adapterCreator = zzclVar.getAdapterCreator();
            } catch (RemoteException unused) {
                adapterCreator = null;
            }
        }
        AtomicReference atomicReference = this.f17777c;
        if (adapterCreator != null) {
            zzbnfVar = adapterCreator;
        }
        zzezp.a(atomicReference, null, zzbnfVar);
    }
}
