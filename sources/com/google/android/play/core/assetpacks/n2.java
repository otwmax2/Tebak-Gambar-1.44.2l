package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class n2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f26012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.y<u3> f26013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w1 f26014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.y<Executor> f26015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h1 f26016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final u4.b f26017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p2 f26018g;

    n2(e0 e0Var, v4.y<u3> yVar, w1 w1Var, v4.y<Executor> yVar2, h1 h1Var, u4.b bVar, p2 p2Var) {
        this.f26012a = e0Var;
        this.f26013b = yVar;
        this.f26014c = w1Var;
        this.f26015d = yVar2;
        this.f26016e = h1Var;
        this.f26017f = bVar;
        this.f26018g = p2Var;
    }

    public final void a(final k2 k2Var) {
        File fileW = this.f26012a.w(k2Var.f26195b, k2Var.f25965c, k2Var.f25966d);
        File fileY = this.f26012a.y(k2Var.f26195b, k2Var.f25965c, k2Var.f25966d);
        if (!fileW.exists() || !fileY.exists()) {
            throw new d1(String.format("Cannot find pack files to move for pack %s.", k2Var.f26195b), k2Var.f26194a);
        }
        File fileU = this.f26012a.u(k2Var.f26195b, k2Var.f25965c, k2Var.f25966d);
        fileU.mkdirs();
        if (!fileW.renameTo(fileU)) {
            throw new d1("Cannot move merged pack files to final location.", k2Var.f26194a);
        }
        new File(this.f26012a.u(k2Var.f26195b, k2Var.f25965c, k2Var.f25966d), "merge.tmp").delete();
        File fileV = this.f26012a.v(k2Var.f26195b, k2Var.f25965c, k2Var.f25966d);
        fileV.mkdirs();
        if (!fileY.renameTo(fileV)) {
            throw new d1("Cannot move metadata files to final location.", k2Var.f26194a);
        }
        if (this.f26017f.a("assetOnlyUpdates")) {
            try {
                this.f26018g.b(k2Var.f26195b, k2Var.f25965c, k2Var.f25966d, k2Var.f25967e);
                this.f26015d.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.m2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25997o.b(k2Var);
                    }
                });
            } catch (IOException e10) {
                throw new d1(String.format("Could not write asset pack version tag for pack %s: %s", k2Var.f26195b, e10.getMessage()), k2Var.f26194a);
            }
        } else {
            Executor executorZza = this.f26015d.zza();
            final e0 e0Var = this.f26012a;
            e0Var.getClass();
            executorZza.execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.l2
                @Override // java.lang.Runnable
                public final void run() {
                    e0Var.I();
                }
            });
        }
        this.f26014c.i(k2Var.f26195b, k2Var.f25965c, k2Var.f25966d);
        this.f26016e.c(k2Var.f26195b);
        this.f26013b.zza().a(k2Var.f26194a, k2Var.f26195b);
    }

    final /* synthetic */ void b(k2 k2Var) {
        this.f26012a.b(k2Var.f26195b, k2Var.f25965c, k2Var.f25966d);
    }
}
