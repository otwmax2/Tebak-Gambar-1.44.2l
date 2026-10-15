package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.e;
import com.facebook.AuthenticationTokenClaims;
import i1.j;
import java.util.Collections;
import java.util.List;
import q1.p;
import r1.n;

/* JADX INFO: compiled from: DelayMetCommandHandler.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements m1.c, j1.b, n.b {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f4427x = j.f("DelayMetCommandHandler");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f4428o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f4429p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f4430q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final e f4431r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final m1.d f4432s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private PowerManager.WakeLock f4435v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f4436w = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f4434u = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Object f4433t = new Object();

    d(Context context, int i10, String str, e eVar) {
        this.f4428o = context;
        this.f4429p = i10;
        this.f4431r = eVar;
        this.f4430q = str;
        this.f4432s = new m1.d(context, eVar.f(), this);
    }

    private void d() {
        synchronized (this.f4433t) {
            this.f4432s.e();
            this.f4431r.h().c(this.f4430q);
            PowerManager.WakeLock wakeLock = this.f4435v;
            if (wakeLock != null && wakeLock.isHeld()) {
                j.c().a(f4427x, String.format("Releasing wakelock %s for WorkSpec %s", this.f4435v, this.f4430q), new Throwable[0]);
                this.f4435v.release();
            }
        }
    }

    private void g() {
        synchronized (this.f4433t) {
            if (this.f4434u < 2) {
                this.f4434u = 2;
                j jVarC = j.c();
                String str = f4427x;
                jVarC.a(str, String.format("Stopping work for WorkSpec %s", this.f4430q), new Throwable[0]);
                Intent intentG = b.g(this.f4428o, this.f4430q);
                e eVar = this.f4431r;
                eVar.k(new e.b(eVar, intentG, this.f4429p));
                if (this.f4431r.e().g(this.f4430q)) {
                    j.c().a(str, String.format("WorkSpec %s needs to be rescheduled", this.f4430q), new Throwable[0]);
                    Intent intentF = b.f(this.f4428o, this.f4430q);
                    e eVar2 = this.f4431r;
                    eVar2.k(new e.b(eVar2, intentF, this.f4429p));
                } else {
                    j.c().a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f4430q), new Throwable[0]);
                }
            } else {
                j.c().a(f4427x, String.format("Already stopped work for %s", this.f4430q), new Throwable[0]);
            }
        }
    }

    @Override // r1.n.b
    public void a(String str) {
        j.c().a(f4427x, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        g();
    }

    @Override // m1.c
    public void b(List<String> list) {
        g();
    }

    @Override // j1.b
    public void c(String str, boolean z10) {
        j.c().a(f4427x, String.format("onExecuted %s, %s", str, Boolean.valueOf(z10)), new Throwable[0]);
        d();
        if (z10) {
            Intent intentF = b.f(this.f4428o, this.f4430q);
            e eVar = this.f4431r;
            eVar.k(new e.b(eVar, intentF, this.f4429p));
        }
        if (this.f4436w) {
            Intent intentA = b.a(this.f4428o);
            e eVar2 = this.f4431r;
            eVar2.k(new e.b(eVar2, intentA, this.f4429p));
        }
    }

    @Override // m1.c
    public void e(List<String> list) {
        if (list.contains(this.f4430q)) {
            synchronized (this.f4433t) {
                if (this.f4434u == 0) {
                    this.f4434u = 1;
                    j.c().a(f4427x, String.format("onAllConstraintsMet for %s", this.f4430q), new Throwable[0]);
                    if (this.f4431r.e().j(this.f4430q)) {
                        this.f4431r.h().b(this.f4430q, AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED, this);
                    } else {
                        d();
                    }
                } else {
                    j.c().a(f4427x, String.format("Already started work for %s", this.f4430q), new Throwable[0]);
                }
            }
        }
    }

    void f() {
        this.f4435v = r1.j.b(this.f4428o, String.format("%s (%s)", this.f4430q, Integer.valueOf(this.f4429p)));
        j jVarC = j.c();
        String str = f4427x;
        jVarC.a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.f4435v, this.f4430q), new Throwable[0]);
        this.f4435v.acquire();
        p pVarN = this.f4431r.g().p().L().n(this.f4430q);
        if (pVarN == null) {
            g();
            return;
        }
        boolean zB = pVarN.b();
        this.f4436w = zB;
        if (zB) {
            this.f4432s.d(Collections.singletonList(pVarN));
        } else {
            j.c().a(str, String.format("No constraints for %s", this.f4430q), new Throwable[0]);
            e(Collections.singletonList(this.f4430q));
        }
    }
}
