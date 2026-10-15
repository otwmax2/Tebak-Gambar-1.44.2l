package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzzg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final zzza f21176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final zzzf f21177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected zzzc f21178c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f21179d;

    protected zzzg(zzzd zzzdVar, zzzf zzzfVar, long j10, long j11, long j12, long j13, long j14, long j15, int i10) {
        this.f21177b = zzzfVar;
        this.f21179d = i10;
        this.f21176a = new zzza(zzzdVar, j10, 0L, j12, j13, j14, j15);
    }

    protected static final int f(zzzv zzzvVar, long j10, zzaau zzaauVar) {
        if (j10 == zzzvVar.c()) {
            return 0;
        }
        zzaauVar.f8348a = j10;
        return 1;
    }

    protected static final boolean g(zzzv zzzvVar, long j10) throws IOException {
        long jC = j10 - zzzvVar.c();
        if (jC < 0 || jC > 262144) {
            return false;
        }
        ((zzzk) zzzvVar).o((int) jC, false);
        return true;
    }

    public final int a(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        while (true) {
            zzzc zzzcVar = this.f21178c;
            zzdl.b(zzzcVar);
            long j10 = zzzcVar.f21169f;
            long j11 = zzzcVar.f21170g - j10;
            long j12 = zzzcVar.f21171h;
            if (j11 <= this.f21179d) {
                c(false, j10);
                return f(zzzvVar, j10, zzaauVar);
            }
            if (!g(zzzvVar, j12)) {
                return f(zzzvVar, j12, zzaauVar);
            }
            zzzvVar.h();
            zzze zzzeVarA = this.f21177b.a(zzzvVar, zzzcVar.f21165b);
            int i10 = zzzeVarA.f21173a;
            if (i10 == -3) {
                c(false, j12);
                return f(zzzvVar, j12, zzaauVar);
            }
            if (i10 == -2) {
                zzzc.h(zzzcVar, zzzeVarA.f21174b, zzzeVarA.f21175c);
            } else {
                if (i10 != -1) {
                    g(zzzvVar, zzzeVarA.f21175c);
                    c(true, zzzeVarA.f21175c);
                    return f(zzzvVar, zzzeVarA.f21175c, zzaauVar);
                }
                zzzc.g(zzzcVar, zzzeVarA.f21174b, zzzeVarA.f21175c);
            }
        }
    }

    public final zzaax b() {
        return this.f21176a;
    }

    protected final void c(boolean z10, long j10) {
        this.f21178c = null;
        this.f21177b.zzb();
    }

    public final void d(long j10) {
        zzzc zzzcVar = this.f21178c;
        if (zzzcVar == null || zzzcVar.f21164a != j10) {
            long jI = this.f21176a.i(j10);
            zzza zzzaVar = this.f21176a;
            this.f21178c = new zzzc(j10, jI, 0L, zzzaVar.f21160c, zzzaVar.f21161d, zzzaVar.f21162e, zzzaVar.f21163f);
        }
    }

    public final boolean e() {
        return this.f21178c != null;
    }
}
