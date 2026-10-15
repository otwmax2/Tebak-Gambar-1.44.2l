package na;

import com.vungle.warren.ui.JavascriptBridge;
import ja.a0;
import ja.c0;
import ja.u;
import java.io.IOException;
import java.net.ProtocolException;
import okio.n;
import okio.t;

/* JADX INFO: compiled from: CallServerInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f32514a;

    /* JADX INFO: compiled from: CallServerInterceptor.java */
    static final class a extends okio.h {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        long f32515p;

        a(t tVar) {
            super(tVar);
        }

        @Override // okio.h, okio.t
        public void a2(okio.c cVar, long j10) throws IOException {
            super.a2(cVar, j10);
            this.f32515p += j10;
        }
    }

    public b(boolean z10) {
        this.f32514a = z10;
    }

    @Override // ja.u
    public c0 intercept(u.a aVar) throws IOException {
        g gVar = (g) aVar;
        c cVarI = gVar.i();
        ma.g gVarK = gVar.k();
        ma.c cVar = (ma.c) gVar.c();
        a0 a0VarF = gVar.f();
        long jCurrentTimeMillis = System.currentTimeMillis();
        gVar.h().o(gVar.g());
        cVarI.c(a0VarF);
        gVar.h().n(gVar.g(), a0VarF);
        c0.a aVarD = null;
        if (f.b(a0VarF.f()) && a0VarF.a() != null) {
            if ("100-continue".equalsIgnoreCase(a0VarF.c("Expect"))) {
                cVarI.f();
                gVar.h().s(gVar.g());
                aVarD = cVarI.d(true);
            }
            if (aVarD == null) {
                gVar.h().m(gVar.g());
                a aVar2 = new a(cVarI.e(a0VarF, a0VarF.a().contentLength()));
                okio.d dVarB = n.b(aVar2);
                a0VarF.a().writeTo(dVarB);
                dVarB.close();
                gVar.h().l(gVar.g(), aVar2.f32515p);
            } else if (!cVar.o()) {
                gVarK.j();
            }
        }
        cVarI.a();
        if (aVarD == null) {
            gVar.h().s(gVar.g());
            aVarD = cVarI.d(false);
        }
        c0 c0VarC = aVarD.p(a0VarF).h(gVarK.d().l()).q(jCurrentTimeMillis).o(System.currentTimeMillis()).c();
        int iD = c0VarC.d();
        if (iD == 100) {
            c0VarC = cVarI.d(false).p(a0VarF).h(gVarK.d().l()).q(jCurrentTimeMillis).o(System.currentTimeMillis()).c();
            iD = c0VarC.d();
        }
        gVar.h().r(gVar.g(), c0VarC);
        c0 c0VarC2 = (this.f32514a && iD == 101) ? c0VarC.k().b(ka.c.f31640c).c() : c0VarC.k().b(cVarI.b(c0VarC)).c();
        if (JavascriptBridge.MraidHandler.CLOSE_ACTION.equalsIgnoreCase(c0VarC2.n().c("Connection")) || JavascriptBridge.MraidHandler.CLOSE_ACTION.equalsIgnoreCase(c0VarC2.f("Connection"))) {
            gVarK.j();
        }
        if ((iD != 204 && iD != 205) || c0VarC2.b().contentLength() <= 0) {
            return c0VarC2;
        }
        throw new ProtocolException("HTTP " + iD + " had non-zero Content-Length: " + c0VarC2.b().contentLength());
    }
}
