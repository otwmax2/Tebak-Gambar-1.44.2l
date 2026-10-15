package na;

import ja.a0;
import ja.b0;
import ja.c0;
import ja.l;
import ja.m;
import ja.u;
import ja.v;
import java.io.IOException;
import java.util.List;
import okio.n;

/* JADX INFO: compiled from: BridgeInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f32513a;

    public a(m mVar) {
        this.f32513a = mVar;
    }

    private String a(List<l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                sb.append("; ");
            }
            l lVar = list.get(i10);
            sb.append(lVar.c());
            sb.append('=');
            sb.append(lVar.k());
        }
        return sb.toString();
    }

    @Override // ja.u
    public c0 intercept(u.a aVar) throws IOException {
        a0 a0VarF = aVar.f();
        a0.a aVarG = a0VarF.g();
        b0 b0VarA = a0VarF.a();
        if (b0VarA != null) {
            v vVarContentType = b0VarA.contentType();
            if (vVarContentType != null) {
                aVarG.d("Content-Type", vVarContentType.toString());
            }
            long jContentLength = b0VarA.contentLength();
            if (jContentLength != -1) {
                aVarG.d("Content-Length", Long.toString(jContentLength));
                aVarG.h("Transfer-Encoding");
            } else {
                aVarG.d("Transfer-Encoding", "chunked");
                aVarG.h("Content-Length");
            }
        }
        boolean z10 = false;
        if (a0VarF.c("Host") == null) {
            aVarG.d("Host", ka.c.s(a0VarF.h(), false));
        }
        if (a0VarF.c("Connection") == null) {
            aVarG.d("Connection", "Keep-Alive");
        }
        if (a0VarF.c("Accept-Encoding") == null && a0VarF.c("Range") == null) {
            z10 = true;
            aVarG.d("Accept-Encoding", "gzip");
        }
        List<l> listA = this.f32513a.a(a0VarF.h());
        if (!listA.isEmpty()) {
            aVarG.d("Cookie", a(listA));
        }
        if (a0VarF.c("User-Agent") == null) {
            aVarG.d("User-Agent", ka.d.a());
        }
        c0 c0VarE = aVar.e(aVarG.b());
        e.e(this.f32513a, a0VarF.h(), c0VarE.h());
        c0.a aVarP = c0VarE.k().p(a0VarF);
        if (z10 && "gzip".equalsIgnoreCase(c0VarE.f("Content-Encoding")) && e.c(c0VarE)) {
            okio.l lVar = new okio.l(c0VarE.b().source());
            aVarP.j(c0VarE.h().f().e("Content-Encoding").e("Content-Length").d());
            aVarP.b(new h(c0VarE.f("Content-Type"), -1L, n.c(lVar)));
        }
        return aVarP.c();
    }
}
