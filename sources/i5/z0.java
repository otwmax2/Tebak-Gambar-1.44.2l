package i5;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzej;
import com.google.android.gms.internal.firebase_auth.zzem;
import com.google.android.gms.internal.firebase_auth.zzew;
import com.google.android.gms.internal.firebase_auth.zzff;
import com.google.android.gms.internal.firebase_auth.zzfm;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
abstract class z0<ResultT, CallbackT> implements e<n0, ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final int f30456a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected b5.g f30458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected g5.s f30459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected CallbackT f30460e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected j5.i f30461f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected a1<ResultT> f30462g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected Executor f30464i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected zzff f30465j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected zzew f30466k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected zzem f30467l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected zzfm f30468m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected String f30469n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected String f30470o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected g5.d f30471p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected String f30472q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected String f30473r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected zzej f30474s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f30475t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f30476u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f30477v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @VisibleForTesting
    boolean f30478w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @VisibleForTesting
    private ResultT f30479x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @VisibleForTesting
    private Status f30480y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final b1 f30457b = new b1(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final List<g5.f0> f30463h = new ArrayList();

    public z0(int i10) {
        this.f30456a = i10;
    }

    static /* synthetic */ boolean j(z0 z0Var, boolean z10) {
        z0Var.f30477v = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(Status status) {
        j5.i iVar = this.f30461f;
        if (iVar != null) {
            iVar.v0(status);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        m();
        Preconditions.o(this.f30477v, "no success or failure set on method implementation");
    }

    @Override // i5.e
    public final e<n0, ResultT> a() {
        this.f30475t = true;
        return this;
    }

    public final z0<ResultT, CallbackT> b(b5.g gVar) {
        this.f30458c = (b5.g) Preconditions.l(gVar, "firebaseApp cannot be null");
        return this;
    }

    public final z0<ResultT, CallbackT> c(g5.s sVar) {
        this.f30459d = (g5.s) Preconditions.l(sVar, "firebaseUser cannot be null");
        return this;
    }

    @Override // i5.e
    public final e<n0, ResultT> d() {
        this.f30476u = true;
        return this;
    }

    public final z0<ResultT, CallbackT> e(j5.i iVar) {
        this.f30461f = (j5.i) Preconditions.l(iVar, "external failure callback cannot be null");
        return this;
    }

    public final z0<ResultT, CallbackT> f(CallbackT callbackt) {
        this.f30460e = (CallbackT) Preconditions.l(callbackt, "external callback cannot be null");
        return this;
    }

    public final void g(Status status) {
        this.f30477v = true;
        this.f30478w = false;
        this.f30480y = status;
        this.f30462g.a(null, status);
    }

    public final void l(ResultT resultt) {
        this.f30477v = true;
        this.f30478w = true;
        this.f30479x = resultt;
        this.f30462g.a(resultt, null);
    }

    public abstract void m();
}
