package com.google.android.play.core.assetpacks;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e1 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final v4.a f25858k = new v4.a("ExtractorLooper");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w1 f25859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y0 f25860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f3 f25861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i2 f25862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n2 f25863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final u2 f25864f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final y2 f25865g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v4.y<u3> f25866h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final z1 f25867i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final AtomicBoolean f25868j = new AtomicBoolean(false);

    e1(w1 w1Var, v4.y<u3> yVar, y0 y0Var, f3 f3Var, i2 i2Var, n2 n2Var, u2 u2Var, y2 y2Var, z1 z1Var) {
        this.f25859a = w1Var;
        this.f25866h = yVar;
        this.f25860b = y0Var;
        this.f25861c = f3Var;
        this.f25862d = i2Var;
        this.f25863e = n2Var;
        this.f25864f = u2Var;
        this.f25865g = y2Var;
        this.f25867i = z1Var;
    }

    private final void b(int i10, Exception exc) {
        try {
            this.f25859a.k(i10, 5);
            this.f25859a.l(i10);
        } catch (d1 unused) {
            f25858k.b("Error during error handling: %s", exc.getMessage());
        }
    }

    final void a() {
        v4.a aVar = f25858k;
        aVar.a("Run extractor loop", new Object[0]);
        if (!this.f25868j.compareAndSet(false, true)) {
            aVar.e("runLoop already looping; return", new Object[0]);
            return;
        }
        while (true) {
            y1 y1VarA = null;
            try {
                y1VarA = this.f25867i.a();
            } catch (d1 e10) {
                f25858k.b("Error while getting next extraction task: %s", e10.getMessage());
                if (e10.f25838o >= 0) {
                    this.f25866h.zza().Q(e10.f25838o);
                    b(e10.f25838o, e10);
                }
            }
            if (y1VarA == null) {
                this.f25868j.set(false);
                return;
            }
            try {
                if (y1VarA instanceof x0) {
                    this.f25860b.a((x0) y1VarA);
                } else if (y1VarA instanceof e3) {
                    this.f25861c.a((e3) y1VarA);
                } else if (y1VarA instanceof h2) {
                    this.f25862d.a((h2) y1VarA);
                } else if (y1VarA instanceof k2) {
                    this.f25863e.a((k2) y1VarA);
                } else if (y1VarA instanceof t2) {
                    this.f25864f.a((t2) y1VarA);
                } else if (y1VarA instanceof w2) {
                    this.f25865g.a((w2) y1VarA);
                } else {
                    f25858k.b("Unknown task type: %s", y1VarA.getClass().getName());
                }
            } catch (Exception e11) {
                f25858k.b("Error during extraction task: %s", e11.getMessage());
                this.f25866h.zza().Q(y1VarA.f26194a);
                b(y1VarA.f26194a, e11);
            }
        }
    }
}
