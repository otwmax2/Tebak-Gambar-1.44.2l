package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfad implements zzcur {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @GuardedBy("this")
    private final HashSet f17794o = new HashSet();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f17795p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzbyn f17796q;

    public zzfad(Context context, zzbyn zzbynVar) {
        this.f17795p = context;
        this.f17796q = zzbynVar;
    }

    public final Bundle a() {
        return this.f17796q.j(this.f17795p, this);
    }

    public final synchronized void b(HashSet hashSet) {
        this.f17794o.clear();
        this.f17794o.addAll(hashSet);
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final synchronized void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (zzeVar.f5841o != 3) {
            this.f17796q.h(this.f17794o);
        }
    }
}
