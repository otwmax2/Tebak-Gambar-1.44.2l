package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzagq implements zzzu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzaab f8958d = new zzaab() { // from class: com.google.android.gms.internal.ads.zzagp
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzagq.f8958d;
            return new zzzu[]{new zzagq()};
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzzx f8959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzagy f8960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f8961c;

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    private final boolean b(zzzv zzzvVar) throws IOException {
        zzags zzagsVar = new zzags();
        if (zzagsVar.b(zzzvVar, true) && (zzagsVar.f8967a & 2) == 2) {
            int iMin = Math.min(zzagsVar.f8971e, 8);
            zzen zzenVar = new zzen(iMin);
            ((zzzk) zzzvVar).k(zzenVar.h(), 0, iMin, false);
            zzenVar.f(0);
            if (zzenVar.i() >= 5 && zzenVar.s() == 127 && zzenVar.A() == 1179402563) {
                this.f8960b = new zzago();
            } else {
                zzenVar.f(0);
                if (zzabh.d(1, zzenVar, true)) {
                    this.f8960b = new zzaha();
                } else {
                    zzenVar.f(0);
                    if (zzagu.j(zzenVar)) {
                        this.f8960b = new zzagu();
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        try {
            return b(zzzvVar);
        } catch (zzbu unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final int e(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        zzdl.b(this.f8959a);
        if (this.f8960b == null) {
            if (!b(zzzvVar)) {
                throw zzbu.a("Failed to determine bitstream type", null);
            }
            zzzvVar.h();
        }
        if (!this.f8961c) {
            zzabb zzabbVarQ = this.f8959a.q(0, 1);
            this.f8959a.f0();
            this.f8960b.g(this.f8959a, zzabbVarQ);
            this.f8961c = true;
        }
        return this.f8960b.d(zzzvVar, zzaauVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8959a = zzzxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        zzagy zzagyVar = this.f8960b;
        if (zzagyVar != null) {
            zzagyVar.i(j10, j11);
        }
    }
}
