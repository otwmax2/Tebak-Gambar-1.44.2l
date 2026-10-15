package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdlc implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.zza f15047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzceu f15048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f15049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdpi f15050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfdk f15051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzeaf f15052f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executor f15053g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzapw f15054h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzbzg f15055i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzfff f15056j;

    public zzdlc(Context context, Executor executor, zzapw zzapwVar, zzbzg zzbzgVar, com.google.android.gms.ads.internal.zza zzaVar, zzceu zzceuVar, zzeaf zzeafVar, zzfff zzfffVar, zzdpi zzdpiVar, zzfdk zzfdkVar) {
        this.f15049c = context;
        this.f15053g = executor;
        this.f15054h = zzapwVar;
        this.f15055i = zzbzgVar;
        this.f15047a = zzaVar;
        this.f15048b = zzceuVar;
        this.f15052f = zzeafVar;
        this.f15056j = zzfffVar;
        this.f15050d = zzdpiVar;
        this.f15051e = zzfdkVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzdlf zzdlfVar = new zzdlf(this);
        zzdlfVar.h();
        return zzdlfVar;
    }
}
