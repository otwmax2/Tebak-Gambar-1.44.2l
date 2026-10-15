package b9;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.a0;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.n;
import com.twitter.sdk.android.core.o;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.x;
import com.twitter.sdk.android.core.y;

/* JADX INFO: compiled from: TwitterAuthClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final x f4705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b9.b f4706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final n<a0> f4707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final r f4708d;

    /* JADX INFO: compiled from: TwitterAuthClient.java */
    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b9.b f4709a = new b9.b();
    }

    /* JADX INFO: compiled from: TwitterAuthClient.java */
    static class b extends com.twitter.sdk.android.core.c<a0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final n<a0> f4710a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.twitter.sdk.android.core.c<a0> f4711b;

        b(n<a0> nVar, com.twitter.sdk.android.core.c<a0> cVar) {
            this.f4710a = nVar;
            this.f4711b = cVar;
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            o.g().b("Twitter", "Authorization completed with an error", yVar);
            this.f4711b.c(yVar);
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<a0> lVar) {
            o.g().c("Twitter", "Authorization completed successfully");
            this.f4710a.d(lVar.f27482a);
            this.f4711b.d(lVar);
        }
    }

    public e() {
        this(x.h(), x.h().e(), x.h().i(), a.f4709a);
    }

    private boolean b(Activity activity, b bVar) {
        o.g().c("Twitter", "Using OAuth");
        b9.b bVar2 = this.f4706b;
        r rVar = this.f4708d;
        return bVar2.a(activity, new c(rVar, bVar, rVar.v()));
    }

    private boolean c(Activity activity, b bVar) {
        if (!d.g(activity)) {
            return false;
        }
        o.g().c("Twitter", "Using SSO");
        b9.b bVar2 = this.f4706b;
        r rVar = this.f4708d;
        return bVar2.a(activity, new d(rVar, bVar, rVar.v()));
    }

    private void e(Activity activity, com.twitter.sdk.android.core.c<a0> cVar) {
        b bVar = new b(this.f4707c, cVar);
        if (c(activity, bVar) || b(activity, bVar)) {
            return;
        }
        bVar.c(new s("Authorize failed."));
    }

    public void a(Activity activity, com.twitter.sdk.android.core.c<a0> cVar) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity must not be null.");
        }
        if (cVar == null) {
            throw new IllegalArgumentException("Callback must not be null.");
        }
        if (activity.isFinishing()) {
            o.g().b("Twitter", "Cannot authorize, activity is finishing.", null);
        } else {
            e(activity, cVar);
        }
    }

    public void d() {
        this.f4706b.b();
    }

    public void f(int i10, int i11, Intent intent) {
        o.g().c("Twitter", "onActivityResult called with " + i10 + " " + i11);
        if (!this.f4706b.d()) {
            o.g().b("Twitter", "Authorize not in progress", null);
            return;
        }
        b9.a aVarC = this.f4706b.c();
        if (aVarC == null || !aVarC.d(i10, i11, intent)) {
            return;
        }
        this.f4706b.b();
    }

    e(x xVar, r rVar, n<a0> nVar, b9.b bVar) {
        this.f4705a = xVar;
        this.f4706b = bVar;
        this.f4708d = rVar;
        this.f4707c = nVar;
    }
}
