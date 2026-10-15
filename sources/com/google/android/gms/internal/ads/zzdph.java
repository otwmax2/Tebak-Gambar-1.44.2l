package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f15323a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzdpi f15324b;

    @VisibleForTesting
    zzdph(zzdpi zzdpiVar) {
        this.f15324b = zzdpiVar;
    }

    static /* bridge */ /* synthetic */ zzdph a(zzdph zzdphVar) {
        zzdphVar.f15323a.putAll(zzdphVar.f15324b.f15327c);
        return zzdphVar;
    }

    public final zzdph b(String str, String str2) {
        this.f15323a.put(str, str2);
        return this;
    }

    public final zzdph c(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.f15323a.put(str, str2);
        }
        return this;
    }

    public final zzdph d(zzeyc zzeycVar) {
        this.f15323a.put("aai", zzeycVar.f17671x);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C6)).booleanValue()) {
            c("rid", zzeycVar.f17661o0);
        }
        return this;
    }

    public final zzdph e(zzeyf zzeyfVar) {
        this.f15323a.put("gqi", zzeyfVar.f17679b);
        return this;
    }

    public final String f() {
        return this.f15324b.f15325a.b(this.f15323a);
    }

    public final void g() {
        this.f15324b.f15326b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpg
            @Override // java.lang.Runnable
            public final void run() {
                this.f15322o.i();
            }
        });
    }

    public final void h() {
        this.f15324b.f15326b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpf
            @Override // java.lang.Runnable
            public final void run() {
                this.f15321o.j();
            }
        });
    }

    final /* synthetic */ void i() {
        this.f15324b.f15325a.e(this.f15323a);
    }

    final /* synthetic */ void j() {
        this.f15324b.f15325a.d(this.f15323a);
    }
}
