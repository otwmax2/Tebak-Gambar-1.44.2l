package ja;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Route.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f31017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f31018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final InetSocketAddress f31019c;

    public e0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        Objects.requireNonNull(aVar, "address == null");
        Objects.requireNonNull(proxy, "proxy == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.f31017a = aVar;
        this.f31018b = proxy;
        this.f31019c = inetSocketAddress;
    }

    public a a() {
        return this.f31017a;
    }

    public Proxy b() {
        return this.f31018b;
    }

    public boolean c() {
        return this.f31017a.f30939i != null && this.f31018b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.f31019c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof e0) {
            e0 e0Var = (e0) obj;
            if (e0Var.f31017a.equals(this.f31017a) && e0Var.f31018b.equals(this.f31018b) && e0Var.f31019c.equals(this.f31019c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f31017a.hashCode()) * 31) + this.f31018b.hashCode()) * 31) + this.f31019c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f31019c + "}";
    }
}
