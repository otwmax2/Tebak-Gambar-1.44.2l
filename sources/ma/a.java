package ma;

import ja.a0;
import ja.c0;
import ja.u;
import ja.x;
import java.io.IOException;

/* JADX INFO: compiled from: ConnectInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f32231a;

    public a(x xVar) {
        this.f32231a = xVar;
    }

    @Override // ja.u
    public c0 intercept(u.a aVar) throws IOException {
        na.g gVar = (na.g) aVar;
        a0 a0VarF = gVar.f();
        g gVarK = gVar.k();
        return gVar.j(a0VarF, gVarK, gVarK.i(this.f32231a, aVar, !a0VarF.f().equals("GET")), gVarK.d());
    }
}
