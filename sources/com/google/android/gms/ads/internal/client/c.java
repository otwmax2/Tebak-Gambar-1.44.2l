package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbxt;
import com.google.android.gms.internal.ads.zzbxu;
import com.google.android.gms.internal.ads.zzbzc;
import com.google.android.gms.internal.ads.zzbzd;
import com.google.android.gms.internal.ads.zzbze;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class c extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f5724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbnf f5725c;

    c(zzaw zzawVar, Context context, zzbnf zzbnfVar) {
        this.f5724b = context;
        this.f5725c = zzbnfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    protected final /* bridge */ /* synthetic */ Object a() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object b(zzce zzceVar) throws RemoteException {
        return zzceVar.e2(ObjectWrapper.Q4(this.f5724b), this.f5725c, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.n
    public final /* bridge */ /* synthetic */ Object c() throws RemoteException {
        try {
            return ((zzbxu) zzbze.b(this.f5724b, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", new zzbzc() { // from class: com.google.android.gms.ads.internal.client.zzad
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzbzc
                public final Object a(Object obj) {
                    return zzbxt.Sa(obj);
                }
            })).Q0(ObjectWrapper.Q4(this.f5724b), this.f5725c, ModuleDescriptor.MODULE_VERSION);
        } catch (RemoteException | zzbzd | NullPointerException unused) {
            return null;
        }
    }
}
