package q1;

import androidx.room.h0;

/* JADX INFO: compiled from: WorkProgressDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f33769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<m> f33770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x0.l f33771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x0.l f33772d;

    /* JADX INFO: compiled from: WorkProgressDao_Impl.java */
    class a extends x0.g<m> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(b1.k kVar, m mVar) throws Throwable {
            String str = mVar.f33767a;
            if (str == null) {
                kVar.z2(1);
            } else {
                kVar.k0(1, str);
            }
            byte[] bArrK = androidx.work.b.k(mVar.f33768b);
            if (bArrK == null) {
                kVar.z2(2);
            } else {
                kVar.D1(2, bArrK);
            }
        }
    }

    /* JADX INFO: compiled from: WorkProgressDao_Impl.java */
    class b extends x0.l {
        b(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* JADX INFO: compiled from: WorkProgressDao_Impl.java */
    class c extends x0.l {
        c(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "DELETE FROM WorkProgress";
        }
    }

    public o(h0 h0Var) {
        this.f33769a = h0Var;
        this.f33770b = new a(h0Var);
        this.f33771c = new b(h0Var);
        this.f33772d = new c(h0Var);
    }

    @Override // q1.n
    public void a(String str) {
        this.f33769a.d();
        b1.k kVarA = this.f33771c.a();
        if (str == null) {
            kVarA.z2(1);
        } else {
            kVarA.k0(1, str);
        }
        this.f33769a.e();
        try {
            kVarA.u0();
            this.f33769a.A();
        } finally {
            this.f33769a.i();
            this.f33771c.f(kVarA);
        }
    }

    @Override // q1.n
    public void b(m mVar) {
        this.f33769a.d();
        this.f33769a.e();
        try {
            this.f33770b.i(mVar);
            this.f33769a.A();
        } finally {
            this.f33769a.i();
        }
    }

    @Override // q1.n
    public void c() {
        this.f33769a.d();
        b1.k kVarA = this.f33772d.a();
        this.f33769a.e();
        try {
            kVarA.u0();
            this.f33769a.A();
        } finally {
            this.f33769a.i();
            this.f33772d.f(kVarA);
        }
    }
}
