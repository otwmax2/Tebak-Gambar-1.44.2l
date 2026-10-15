package d9;

import ja.c0;
import ja.u;
import java.io.IOException;

/* JADX INFO: compiled from: GuestAuthNetworkInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements u {
    @Override // ja.u
    public c0 intercept(u.a aVar) throws IOException {
        c0 c0VarE = aVar.e(aVar.f());
        return c0VarE.d() == 403 ? c0VarE.k().g(401).k("Unauthorized").c() : c0VarE;
    }
}
