package qa;

import ja.y;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: JdkWithJettyBootPlatform.java */
/* JADX INFO: loaded from: classes.dex */
class e extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f34120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Method f34121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Method f34122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Class<?> f34123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Class<?> f34124g;

    /* JADX INFO: compiled from: JdkWithJettyBootPlatform.java */
    /* JADX INFO: loaded from: classes2.dex */
    private static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f34125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f34126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f34127c;

        a(List<String> list) {
            this.f34125a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = ka.c.f31639b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f34126b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f34125a;
            }
            if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
                if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.f34127c = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f34125a.contains(list.get(i10))) {
                    String str = (String) list.get(i10);
                    this.f34127c = str;
                    return str;
                }
            }
            String str2 = this.f34125a.get(0);
            this.f34127c = str2;
            return str2;
        }
    }

    e(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f34120c = method;
        this.f34121d = method2;
        this.f34122e = method3;
        this.f34123f = cls;
        this.f34124g = cls2;
    }

    public static g u() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new e(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // qa.g
    public void a(SSLSocket sSLSocket) {
        try {
            this.f34122e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw ka.c.b("unable to remove alpn", e10);
        }
    }

    @Override // qa.g
    public void g(SSLSocket sSLSocket, String str, List<y> list) {
        try {
            this.f34120c.invoke(null, sSLSocket, Proxy.newProxyInstance(g.class.getClassLoader(), new Class[]{this.f34123f, this.f34124g}, new a(g.b(list))));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw ka.c.b("unable to set alpn", e10);
        }
    }

    @Override // qa.g
    @Nullable
    public String n(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f34121d.invoke(null, sSLSocket));
            boolean z10 = aVar.f34126b;
            if (!z10 && aVar.f34127c == null) {
                g.l().s(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                return null;
            }
            if (z10) {
                return null;
            }
            return aVar.f34127c;
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw ka.c.b("unable to get selected protocol", e10);
        }
    }
}
