package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdoc implements zzcxj, zzcwc, zzcur, zzcvi, com.google.android.gms.ads.internal.client.zza, zzczv {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzawe f15259o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f15260p = false;

    public zzdoc(zzawe zzaweVar, @Nullable zzevx zzevxVar) {
        this.f15259o = zzaweVar;
        zzaweVar.c(2);
        if (zzevxVar != null) {
            zzaweVar.c(1101);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void Z0(boolean z10) {
        this.f15259o.c(true != z10 ? 1108 : 1107);
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void b0(boolean z10) {
        this.f15259o.c(true != z10 ? 1106 : 1105);
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void d() {
        this.f15259o.c(1109);
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void f(final zzawz zzawzVar) {
        this.f15259o.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzdob
            @Override // com.google.android.gms.internal.ads.zzawd
            public final void a(zzaxt zzaxtVar) {
                zzaxtVar.u(zzawzVar);
            }
        });
        this.f15259o.c(1103);
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final synchronized void j() {
        this.f15259o.c(6);
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void k() {
        this.f15259o.c(3);
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void l0(final zzeyo zzeyoVar) {
        this.f15259o.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzdny
            @Override // com.google.android.gms.internal.ads.zzawd
            public final void a(zzaxt zzaxtVar) {
                zzeyo zzeyoVar2 = zzeyoVar;
                zzawp zzawpVar = (zzawp) zzaxtVar.o().i();
                zzaxh zzaxhVar = (zzaxh) zzaxtVar.o().K().i();
                zzaxhVar.o(zzeyoVar2.f17703b.f17700b.f17679b);
                zzawpVar.p(zzaxhVar);
                zzaxtVar.s(zzawpVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void r0(final zzawz zzawzVar) {
        this.f15259o.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzdnz
            @Override // com.google.android.gms.internal.ads.zzawd
            public final void a(zzaxt zzaxtVar) {
                zzaxtVar.u(zzawzVar);
            }
        });
        this.f15259o.c(1104);
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void t0(zzbtn zzbtnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        switch (zzeVar.f5841o) {
            case 1:
                this.f15259o.c(101);
                break;
            case 2:
                this.f15259o.c(102);
                break;
            case 3:
                this.f15259o.c(5);
                break;
            case 4:
                this.f15259o.c(103);
                break;
            case 5:
                this.f15259o.c(104);
                break;
            case 6:
                this.f15259o.c(105);
                break;
            case 7:
                this.f15259o.c(106);
                break;
            default:
                this.f15259o.c(4);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void v0(final zzawz zzawzVar) {
        this.f15259o.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzdoa
            @Override // com.google.android.gms.internal.ads.zzawd
            public final void a(zzaxt zzaxtVar) {
                zzaxtVar.u(zzawzVar);
            }
        });
        this.f15259o.c(1102);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void w0() {
        if (this.f15260p) {
            this.f15259o.c(8);
        } else {
            this.f15259o.c(7);
            this.f15260p = true;
        }
    }
}
