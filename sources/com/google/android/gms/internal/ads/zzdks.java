package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzdks implements com.google.android.gms.ads.internal.client.zza, zzbgi, com.google.android.gms.ads.internal.overlay.zzo, zzbgk, com.google.android.gms.ads.internal.overlay.zzz {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zza f15022o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzbgi f15023p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.zzo f15024q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzbgk f15025r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.zzz f15026s;

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void G(int i10) {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f15024q;
        if (zzoVar != null) {
            zzoVar.G(i10);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void P0() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f15024q;
        if (zzoVar != null) {
            zzoVar.P0();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void Q4() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f15024q;
        if (zzoVar != null) {
            zzoVar.Q4();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void X0() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f15024q;
        if (zzoVar != null) {
            zzoVar.X0();
        }
    }

    protected final synchronized void a(com.google.android.gms.ads.internal.client.zza zzaVar, zzbgi zzbgiVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar, zzbgk zzbgkVar, com.google.android.gms.ads.internal.overlay.zzz zzzVar) {
        this.f15022o = zzaVar;
        this.f15023p = zzbgiVar;
        this.f15024q = zzoVar;
        this.f15025r = zzbgkVar;
        this.f15026s = zzzVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void b() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f15024q;
        if (zzoVar != null) {
            zzoVar.b();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzz
    public final synchronized void e() {
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.f15026s;
        if (zzzVar != null) {
            zzzVar.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgk
    public final synchronized void m(String str, String str2) {
        zzbgk zzbgkVar = this.f15025r;
        if (zzbgkVar != null) {
            zzbgkVar.m(str, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final synchronized void w(String str, Bundle bundle) {
        zzbgi zzbgiVar = this.f15023p;
        if (zzbgiVar != null) {
            zzbgiVar.w(str, bundle);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void w0() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.f15022o;
        if (zzaVar != null) {
            zzaVar.w0();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzb() {
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f15024q;
        if (zzoVar != null) {
            zzoVar.zzb();
        }
    }
}
