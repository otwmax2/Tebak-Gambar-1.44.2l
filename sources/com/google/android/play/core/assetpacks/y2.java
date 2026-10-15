package com.google.android.play.core.assetpacks;

import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class y2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f26196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.y<u3> f26197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w1 f26198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.y<Executor> f26199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h1 f26200e;

    y2(e0 e0Var, v4.y<u3> yVar, w1 w1Var, v4.y<Executor> yVar2, h1 h1Var) {
        this.f26196a = e0Var;
        this.f26197b = yVar;
        this.f26198c = w1Var;
        this.f26199d = yVar2;
        this.f26200e = h1Var;
    }

    public final void a(final w2 w2Var) {
        File fileU = this.f26196a.u(w2Var.f26195b, w2Var.f26157c, w2Var.f26159e);
        if (!fileU.exists()) {
            throw new d1(String.format("Cannot find pack files to promote for pack %s at %s", w2Var.f26195b, fileU.getAbsolutePath()), w2Var.f26194a);
        }
        File fileU2 = this.f26196a.u(w2Var.f26195b, w2Var.f26158d, w2Var.f26159e);
        fileU2.mkdirs();
        if (!fileU.renameTo(fileU2)) {
            throw new d1(String.format("Cannot promote pack %s from %s to %s", w2Var.f26195b, fileU.getAbsolutePath(), fileU2.getAbsolutePath()), w2Var.f26194a);
        }
        this.f26199d.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.x2
            @Override // java.lang.Runnable
            public final void run() {
                this.f26176o.b(w2Var);
            }
        });
        this.f26198c.i(w2Var.f26195b, w2Var.f26158d, w2Var.f26159e);
        this.f26200e.c(w2Var.f26195b);
        this.f26197b.zza().a(w2Var.f26194a, w2Var.f26195b);
    }

    final /* synthetic */ void b(w2 w2Var) {
        this.f26196a.b(w2Var.f26195b, w2Var.f26158d, w2Var.f26159e);
    }
}
