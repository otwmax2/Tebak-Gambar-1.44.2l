package com.google.android.play.core.assetpacks;

import android.os.Handler;
import android.os.Looper;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l3 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final v4.a f25977l = new v4.a("AssetPackManager");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f25978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.y<u3> f25979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y f25980c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x4.a f25981d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final w1 f25982e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h1 f25983f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final r0 f25984g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v4.y<Executor> f25985h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final u4.b f25986i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final p2 f25987j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Handler f25988k = new Handler(Looper.getMainLooper());

    l3(e0 e0Var, v4.y<u3> yVar, y yVar2, x4.a aVar, w1 w1Var, h1 h1Var, r0 r0Var, v4.y<Executor> yVar3, u4.b bVar, p2 p2Var) {
        this.f25978a = e0Var;
        this.f25979b = yVar;
        this.f25980c = yVar2;
        this.f25981d = aVar;
        this.f25982e = w1Var;
        this.f25983f = h1Var;
        this.f25984g = r0Var;
        this.f25985h = yVar3;
        this.f25986i = bVar;
        this.f25987j = p2Var;
    }

    private final void d() {
        this.f25985h.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.k3
            @Override // java.lang.Runnable
            public final void run() {
                this.f25968o.b();
            }
        });
    }

    final /* synthetic */ void b() {
        y4.e<List<String>> eVarE = this.f25979b.zza().e(this.f25978a.G());
        Executor executorZza = this.f25985h.zza();
        final e0 e0Var = this.f25978a;
        e0Var.getClass();
        eVarE.c(executorZza, new y4.c() { // from class: com.google.android.play.core.assetpacks.j3
            @Override // y4.c
            public final void onSuccess(Object obj) {
                e0Var.c((List) obj);
            }
        });
        eVarE.b(this.f25985h.zza(), new y4.b() { // from class: com.google.android.play.core.assetpacks.i3
            @Override // y4.b
            public final void b(Exception exc) {
                l3.f25977l.e(String.format("Could not sync active asset packs. %s", exc), new Object[0]);
            }
        });
    }

    final void c(boolean z10) {
        boolean zE = this.f25980c.e();
        this.f25980c.c(z10);
        if (!z10 || zE) {
            return;
        }
        d();
    }
}
