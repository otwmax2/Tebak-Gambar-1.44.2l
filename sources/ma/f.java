package ma;

import com.facebook.internal.security.CertificateUtil;
import ja.e0;
import ja.p;
import ja.t;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: RouteSelector.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ja.a f32253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f32254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ja.e f32255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f32256d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f32258f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Proxy> f32257e = Collections.emptyList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<InetSocketAddress> f32259g = Collections.emptyList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<e0> f32260h = new ArrayList();

    /* JADX INFO: compiled from: RouteSelector.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<e0> f32261a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f32262b = 0;

        a(List<e0> list) {
            this.f32261a = list;
        }

        public List<e0> a() {
            return new ArrayList(this.f32261a);
        }

        public boolean b() {
            return this.f32262b < this.f32261a.size();
        }

        public e0 c() {
            if (!b()) {
                throw new NoSuchElementException();
            }
            List<e0> list = this.f32261a;
            int i10 = this.f32262b;
            this.f32262b = i10 + 1;
            return list.get(i10);
        }
    }

    public f(ja.a aVar, d dVar, ja.e eVar, p pVar) {
        this.f32253a = aVar;
        this.f32254b = dVar;
        this.f32255c = eVar;
        this.f32256d = pVar;
        h(aVar.l(), aVar.g());
    }

    static String b(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private boolean d() {
        return this.f32258f < this.f32257e.size();
    }

    private Proxy f() throws IOException {
        if (d()) {
            List<Proxy> list = this.f32257e;
            int i10 = this.f32258f;
            this.f32258f = i10 + 1;
            Proxy proxy = list.get(i10);
            g(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f32253a.l().m() + "; exhausted proxy configurations: " + this.f32257e);
    }

    private void g(Proxy proxy) throws IOException {
        String strM;
        int iZ;
        this.f32259g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            strM = this.f32253a.l().m();
            iZ = this.f32253a.l().z();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            strM = b(inetSocketAddress);
            iZ = inetSocketAddress.getPort();
        }
        if (iZ < 1 || iZ > 65535) {
            throw new SocketException("No route to " + strM + CertificateUtil.DELIMITER + iZ + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f32259g.add(InetSocketAddress.createUnresolved(strM, iZ));
            return;
        }
        this.f32256d.j(this.f32255c, strM);
        List<InetAddress> listA = this.f32253a.c().a(strM);
        if (listA.isEmpty()) {
            throw new UnknownHostException(this.f32253a.c() + " returned no addresses for " + strM);
        }
        this.f32256d.i(this.f32255c, strM, listA);
        int size = listA.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f32259g.add(new InetSocketAddress(listA.get(i10), iZ));
        }
    }

    private void h(t tVar, Proxy proxy) {
        if (proxy != null) {
            this.f32257e = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = this.f32253a.i().select(tVar.I());
            this.f32257e = (listSelect == null || listSelect.isEmpty()) ? ka.c.u(Proxy.NO_PROXY) : ka.c.t(listSelect);
        }
        this.f32258f = 0;
    }

    public void a(e0 e0Var, IOException iOException) {
        if (e0Var.b().type() != Proxy.Type.DIRECT && this.f32253a.i() != null) {
            this.f32253a.i().connectFailed(this.f32253a.l().I(), e0Var.b().address(), iOException);
        }
        this.f32254b.b(e0Var);
    }

    public boolean c() {
        return d() || !this.f32260h.isEmpty();
    }

    public a e() throws IOException {
        if (!c()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (d()) {
            Proxy proxyF = f();
            int size = this.f32259g.size();
            for (int i10 = 0; i10 < size; i10++) {
                e0 e0Var = new e0(this.f32253a, proxyF, this.f32259g.get(i10));
                if (this.f32254b.c(e0Var)) {
                    this.f32260h.add(e0Var);
                } else {
                    arrayList.add(e0Var);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f32260h);
            this.f32260h.clear();
        }
        return new a(arrayList);
    }
}
