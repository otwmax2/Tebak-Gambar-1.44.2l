package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbrt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("InternalQueryInfoGenerator.class")
    private static zzbxr f11189d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AdFormat f11191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzdx f11192c;

    public zzbrt(Context context, AdFormat adFormat, com.google.android.gms.ads.internal.client.zzdx zzdxVar) {
        this.f11190a = context;
        this.f11191b = adFormat;
        this.f11192c = zzdxVar;
    }

    public static zzbxr a(Context context) {
        zzbxr zzbxrVar;
        synchronized (zzbrt.class) {
            if (f11189d == null) {
                f11189d = com.google.android.gms.ads.internal.client.zzay.a().p(context, new zzbnc());
            }
            zzbxrVar = f11189d;
        }
        return zzbxrVar;
    }

    public final void b(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzbxr zzbxrVarA = a(this.f11190a);
        if (zzbxrVarA == null) {
            queryInfoGenerationCallback.a("Internal Error, query info generator is null.");
            return;
        }
        IObjectWrapper iObjectWrapperQ4 = ObjectWrapper.Q4(this.f11190a);
        com.google.android.gms.ads.internal.client.zzdx zzdxVar = this.f11192c;
        try {
            zzbxrVarA.l3(iObjectWrapperQ4, new zzbxv(null, this.f11191b.name(), null, zzdxVar == null ? new com.google.android.gms.ads.internal.client.zzm().a() : com.google.android.gms.ads.internal.client.zzp.f5930a.a(this.f11190a, zzdxVar)), new zzbrs(this, queryInfoGenerationCallback));
        } catch (RemoteException unused) {
            queryInfoGenerationCallback.a("Internal Error.");
        }
    }
}
