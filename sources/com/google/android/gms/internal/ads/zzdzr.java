package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdzr implements zzfdb {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdzf f16036o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdzj f16037p;

    zzdzr(zzdzf zzdzfVar, zzdzj zzdzjVar) {
        this.f16036o = zzdzfVar;
        this.f16037p = zzdzjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void a(zzfcu zzfcuVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue()) {
            if (zzfcu.RENDERER == zzfcuVar) {
                this.f16036o.g(com.google.android.gms.ads.internal.zzt.b().b());
                return;
            }
            if (zzfcu.PRELOADED_LOADER == zzfcuVar || zzfcu.SERVER_TRANSACTION == zzfcuVar) {
                this.f16036o.h(com.google.android.gms.ads.internal.zzt.b().b());
                final zzdzj zzdzjVar = this.f16037p;
                final long jD = this.f16036o.d();
                zzdzjVar.f16030b.a(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzdzi
                    @Override // com.google.android.gms.internal.ads.zzfcd
                    public final Object a(Object obj) {
                        zzdzj zzdzjVar2 = zzdzjVar;
                        long j10 = jD;
                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                        if (zzdzjVar2.a()) {
                            return null;
                        }
                        zzaym zzaymVarQ = zzayn.Q();
                        zzaymVarQ.w(j10);
                        byte[] bArrT = ((zzayn) zzaymVarQ.k()).t();
                        zzdzq.g(sQLiteDatabase, false, false);
                        zzdzq.d(sQLiteDatabase, j10, bArrT);
                        return null;
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void b(zzfcu zzfcuVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue() && zzfcu.RENDERER == zzfcuVar && this.f16036o.c() != 0) {
            this.f16036o.f(com.google.android.gms.ads.internal.zzt.b().b() - this.f16036o.c());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void e(zzfcu zzfcuVar, String str, Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue() && zzfcu.RENDERER == zzfcuVar && this.f16036o.c() != 0) {
            this.f16036o.f(com.google.android.gms.ads.internal.zzt.b().b() - this.f16036o.c());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfdb
    public final void q(zzfcu zzfcuVar, String str) {
    }
}
