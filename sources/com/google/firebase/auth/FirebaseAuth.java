package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Keep;
import b5.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzff;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import g5.d0;
import g5.e;
import g5.s;
import i5.i;
import i5.o0;
import i5.u0;
import i5.y0;
import j5.e0;
import j5.f0;
import j5.j;
import j5.l;
import j5.q;
import j5.u;
import j5.y;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public class FirebaseAuth implements j5.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f26252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<b> f26253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<j5.a> f26254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<a> f26255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f26256e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s f26257f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f0 f26258g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f26259h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Object f26260i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f26261j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final q f26262k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final j f26263l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private j5.s f26264m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private u f26265n;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public interface a {
        void a(FirebaseAuth firebaseAuth);
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public interface b {
        void a(FirebaseAuth firebaseAuth);
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    @VisibleForTesting
    class c implements j5.c, j5.i {
        c() {
        }

        @Override // j5.c
        public final void a(zzff zzffVar, s sVar) {
            Preconditions.k(zzffVar);
            Preconditions.k(sVar);
            sVar.h4(zzffVar);
            FirebaseAuth.this.j(sVar, zzffVar, true, true);
        }

        @Override // j5.i
        public final void v0(Status status) {
            if (status.X3() == 17011 || status.X3() == 17021 || status.X3() == 17005 || status.X3() == 17091) {
                FirebaseAuth.this.e();
            }
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    @VisibleForTesting
    class d implements j5.c {
        d() {
        }

        @Override // j5.c
        public final void a(zzff zzffVar, s sVar) {
            Preconditions.k(zzffVar);
            Preconditions.k(sVar);
            sVar.h4(zzffVar);
            FirebaseAuth.this.i(sVar, zzffVar, true);
        }
    }

    public FirebaseAuth(g gVar) {
        this(gVar, u0.a(gVar.l(), new y0(gVar.p().b()).a()), new q(gVar.l(), gVar.q()), j.a());
    }

    @Keep
    public static FirebaseAuth getInstance() {
        return (FirebaseAuth) g.m().j(FirebaseAuth.class);
    }

    @VisibleForTesting
    private final synchronized void k(j5.s sVar) {
        this.f26264m = sVar;
    }

    private final boolean p(String str) {
        g5.b bVarA = g5.b.a(str);
        return (bVarA == null || TextUtils.equals(this.f26261j, bVarA.b())) ? false : true;
    }

    private final void s(s sVar) {
        if (sVar != null) {
            String strB4 = sVar.b4();
            StringBuilder sb = new StringBuilder(String.valueOf(strB4).length() + 45);
            sb.append("Notifying id token listeners about user ( ");
            sb.append(strB4);
            sb.append(" ).");
            Log.d("FirebaseAuth", sb.toString());
        } else {
            Log.d("FirebaseAuth", "Notifying id token listeners about a sign-out event.");
        }
        this.f26265n.execute(new com.google.firebase.auth.a(this, new q6.b(sVar != null ? sVar.n4() : null)));
    }

    @VisibleForTesting
    private final synchronized j5.s t() {
        if (this.f26264m == null) {
            k(new j5.s(this.f26252a));
        }
        return this.f26264m;
    }

    private final void u(s sVar) {
        if (sVar != null) {
            String strB4 = sVar.b4();
            StringBuilder sb = new StringBuilder(String.valueOf(strB4).length() + 47);
            sb.append("Notifying auth state listeners about user ( ");
            sb.append(strB4);
            sb.append(" ).");
            Log.d("FirebaseAuth", sb.toString());
        } else {
            Log.d("FirebaseAuth", "Notifying auth state listeners about a sign-out event.");
        }
        this.f26265n.execute(new com.google.firebase.auth.c(this));
    }

    public Task<g5.u> a(boolean z10) {
        return f(this.f26257f, z10);
    }

    public s b() {
        return this.f26257f;
    }

    public Task<Object> c() {
        s sVar = this.f26257f;
        if (sVar == null || !sVar.c4()) {
            return this.f26256e.l(this.f26252a, new d(), this.f26261j);
        }
        e0 e0Var = (e0) this.f26257f;
        e0Var.r4(false);
        return Tasks.e(new y(e0Var));
    }

    public Task<Object> d(g5.d dVar) {
        Preconditions.k(dVar);
        g5.d dVarX3 = dVar.X3();
        if (dVarX3 instanceof e) {
            e eVar = (e) dVarX3;
            return !eVar.e() ? this.f26256e.s(this.f26252a, eVar.Z3(), eVar.a4(), this.f26261j, new d()) : p(eVar.b4()) ? Tasks.d(o0.a(new Status(17072))) : this.f26256e.h(this.f26252a, eVar, new d());
        }
        if (dVarX3 instanceof d0) {
            return this.f26256e.k(this.f26252a, (d0) dVarX3, this.f26261j, new d());
        }
        return this.f26256e.g(this.f26252a, dVarX3, this.f26261j, new d());
    }

    public void e() {
        h();
        j5.s sVar = this.f26264m;
        if (sVar != null) {
            sVar.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.firebase.auth.b, j5.t] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Task<g5.u> f(s sVar, boolean z10) {
        if (sVar == null) {
            return Tasks.d(o0.a(new Status(17495)));
        }
        zzff zzffVarM4 = sVar.m4();
        return (!zzffVarM4.X3() || z10) ? this.f26256e.j(this.f26252a, sVar, zzffVarM4.Y3(), new com.google.firebase.auth.b(this)) : Tasks.e(l.a(zzffVarM4.Z3()));
    }

    public final void h() {
        s sVar = this.f26257f;
        if (sVar != null) {
            q qVar = this.f26262k;
            Preconditions.k(sVar);
            qVar.e(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", sVar.b4()));
            this.f26257f = null;
        }
        this.f26262k.e("com.google.firebase.auth.FIREBASE_USER");
        s(null);
        u(null);
    }

    public final void i(s sVar, zzff zzffVar, boolean z10) {
        j(sVar, zzffVar, z10, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028 A[PHI: r2
      0x0028: PHI (r2v3 boolean) = (r2v0 boolean), (r2v1 boolean) binds: [B:12:0x0026, B:20:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void j(g5.s r5, com.google.android.gms.internal.firebase_auth.zzff r6, boolean r7, boolean r8) {
        /*
            r4 = this;
            com.google.android.gms.common.internal.Preconditions.k(r5)
            com.google.android.gms.common.internal.Preconditions.k(r6)
            g5.s r0 = r4.f26257f
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1e
            java.lang.String r0 = r5.b4()
            g5.s r3 = r4.f26257f
            java.lang.String r3 = r3.b4()
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L1e
            r0 = 1
            goto L1f
        L1e:
            r0 = 0
        L1f:
            if (r0 != 0) goto L24
            if (r8 == 0) goto L24
            return
        L24:
            g5.s r8 = r4.f26257f
            if (r8 != 0) goto L2a
        L28:
            r1 = 1
            goto L46
        L2a:
            com.google.android.gms.internal.firebase_auth.zzff r8 = r8.m4()
            java.lang.String r8 = r8.Z3()
            java.lang.String r3 = r6.Z3()
            boolean r8 = r8.equals(r3)
            r8 = r8 ^ r2
            if (r0 == 0) goto L41
            if (r8 != 0) goto L41
            r8 = 0
            goto L42
        L41:
            r8 = 1
        L42:
            r2 = r8
            if (r0 != 0) goto L46
            goto L28
        L46:
            com.google.android.gms.common.internal.Preconditions.k(r5)
            g5.s r8 = r4.f26257f
            if (r8 != 0) goto L50
            r4.f26257f = r5
            goto L6f
        L50:
            java.util.List r0 = r5.a4()
            r8.f4(r0)
            boolean r8 = r5.c4()
            if (r8 != 0) goto L62
            g5.s r8 = r4.f26257f
            r8.i4()
        L62:
            g5.y r8 = r5.Y3()
            java.util.List r8 = r8.a()
            g5.s r0 = r4.f26257f
            r0.j4(r8)
        L6f:
            if (r7 == 0) goto L78
            j5.q r8 = r4.f26262k
            g5.s r0 = r4.f26257f
            r8.c(r0)
        L78:
            if (r2 == 0) goto L86
            g5.s r8 = r4.f26257f
            if (r8 == 0) goto L81
            r8.h4(r6)
        L81:
            g5.s r8 = r4.f26257f
            r4.s(r8)
        L86:
            if (r1 == 0) goto L8d
            g5.s r8 = r4.f26257f
            r4.u(r8)
        L8d:
            if (r7 == 0) goto L94
            j5.q r7 = r4.f26262k
            r7.d(r5, r6)
        L94:
            j5.s r5 = r4.t()
            g5.s r6 = r4.f26257f
            com.google.android.gms.internal.firebase_auth.zzff r6 = r6.m4()
            r5.b(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.auth.FirebaseAuth.j(g5.s, com.google.android.gms.internal.firebase_auth.zzff, boolean, boolean):void");
    }

    public final void l(String str) {
        Preconditions.g(str);
        synchronized (this.f26260i) {
            this.f26261j = str;
        }
    }

    public final g m() {
        return this.f26252a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.firebase.auth.FirebaseAuth$c, j5.t] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.auth.FirebaseAuth$c, j5.t] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.firebase.auth.FirebaseAuth$c, j5.t] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.firebase.auth.FirebaseAuth$c, j5.t] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Task<Object> n(s sVar, g5.d dVar) {
        Preconditions.k(sVar);
        Preconditions.k(dVar);
        g5.d dVarX3 = dVar.X3();
        if (!(dVarX3 instanceof e)) {
            return dVarX3 instanceof d0 ? this.f26256e.q(this.f26252a, sVar, (d0) dVarX3, this.f26261j, new c()) : this.f26256e.o(this.f26252a, sVar, dVarX3, sVar.l4(), new c());
        }
        e eVar = (e) dVarX3;
        return "password".equals(eVar.W3()) ? this.f26256e.r(this.f26252a, sVar, eVar.Z3(), eVar.a4(), sVar.l4(), new c()) : p(eVar.b4()) ? Tasks.d(o0.a(new Status(17072))) : this.f26256e.p(this.f26252a, sVar, eVar, new c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.firebase.auth.FirebaseAuth$c, j5.t] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Task<Object> q(s sVar, g5.d dVar) {
        Preconditions.k(dVar);
        Preconditions.k(sVar);
        return this.f26256e.i(this.f26252a, sVar, dVar.X3(), new c());
    }

    @Keep
    public static FirebaseAuth getInstance(g gVar) {
        return (FirebaseAuth) gVar.j(FirebaseAuth.class);
    }

    @VisibleForTesting
    private FirebaseAuth(g gVar, i iVar, q qVar, j jVar) {
        zzff zzffVarF;
        this.f26259h = new Object();
        this.f26260i = new Object();
        this.f26252a = (g) Preconditions.k(gVar);
        this.f26256e = (i) Preconditions.k(iVar);
        q qVar2 = (q) Preconditions.k(qVar);
        this.f26262k = qVar2;
        this.f26258g = new f0();
        j jVar2 = (j) Preconditions.k(jVar);
        this.f26263l = jVar2;
        this.f26253b = new CopyOnWriteArrayList();
        this.f26254c = new CopyOnWriteArrayList();
        this.f26255d = new CopyOnWriteArrayList();
        this.f26265n = u.a();
        s sVarA = qVar2.a();
        this.f26257f = sVarA;
        if (sVarA != null && (zzffVarF = qVar2.f(sVarA)) != null) {
            i(this.f26257f, zzffVarF, false);
        }
        jVar2.d(this);
    }
}
