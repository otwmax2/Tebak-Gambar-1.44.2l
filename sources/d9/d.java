package d9;

import com.twitter.sdk.android.core.m;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.t;
import ja.a0;
import ja.b0;
import ja.c0;
import ja.q;
import ja.t;
import ja.u;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: OAuth1aInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final m<? extends t> f28770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final r f28771b;

    public d(m<? extends t> mVar, r rVar) {
        this.f28770a = mVar;
        this.f28771b = rVar;
    }

    String a(a0 a0Var) throws IOException {
        return new com.twitter.sdk.android.core.internal.oauth.c().a(this.f28771b, (t) this.f28770a.a(), null, a0Var.f(), a0Var.h().toString(), b(a0Var));
    }

    Map<String, String> b(a0 a0Var) throws IOException {
        HashMap map = new HashMap();
        if ("POST".equals(a0Var.f().toUpperCase(Locale.US))) {
            b0 b0VarA = a0Var.a();
            if (b0VarA instanceof q) {
                q qVar = (q) b0VarA;
                for (int i10 = 0; i10 < qVar.c(); i10++) {
                    map.put(qVar.a(i10), qVar.d(i10));
                }
            }
        }
        return map;
    }

    ja.t c(ja.t tVar) {
        t.a aVarQ = tVar.p().q(null);
        int iD = tVar.D();
        for (int i10 = 0; i10 < iD; i10++) {
            aVarQ.a(f.c(tVar.B(i10)), f.c(tVar.C(i10)));
        }
        return aVarQ.c();
    }

    @Override // ja.u
    public c0 intercept(u.a aVar) throws IOException {
        a0 a0VarF = aVar.f();
        a0 a0VarB = a0VarF.g().i(c(a0VarF.h())).b();
        return aVar.e(a0VarB.g().d("Authorization", a(a0VarB)).b());
    }
}
