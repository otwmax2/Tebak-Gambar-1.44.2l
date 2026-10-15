package ja;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: EventListener.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f31149a = new a();

    /* JADX INFO: compiled from: EventListener.java */
    /* JADX INFO: loaded from: classes2.dex */
    class a extends p {
        a() {
        }
    }

    /* JADX INFO: compiled from: EventListener.java */
    /* JADX INFO: loaded from: classes2.dex */
    class b implements c {
        b() {
        }

        @Override // ja.p.c
        public p a(e eVar) {
            return p.this;
        }
    }

    /* JADX INFO: compiled from: EventListener.java */
    /* JADX INFO: loaded from: classes2.dex */
    public interface c {
        p a(e eVar);
    }

    static c k(p pVar) {
        return pVar.new b();
    }

    public void a(e eVar) {
    }

    public void b(e eVar, IOException iOException) {
    }

    public void c(e eVar) {
    }

    public void d(e eVar, InetSocketAddress inetSocketAddress, Proxy proxy, @Nullable y yVar) {
    }

    public void e(e eVar, InetSocketAddress inetSocketAddress, Proxy proxy, @Nullable y yVar, IOException iOException) {
    }

    public void f(e eVar, InetSocketAddress inetSocketAddress, Proxy proxy) {
    }

    public void g(e eVar, i iVar) {
    }

    public void h(e eVar, i iVar) {
    }

    public void i(e eVar, String str, List<InetAddress> list) {
    }

    public void j(e eVar, String str) {
    }

    public void l(e eVar, long j10) {
    }

    public void m(e eVar) {
    }

    public void n(e eVar, a0 a0Var) {
    }

    public void o(e eVar) {
    }

    public void p(e eVar, long j10) {
    }

    public void q(e eVar) {
    }

    public void r(e eVar, c0 c0Var) {
    }

    public void s(e eVar) {
    }

    public void t(e eVar, @Nullable r rVar) {
    }

    public void u(e eVar) {
    }
}
