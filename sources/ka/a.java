package ka;

import ja.c0;
import ja.e;
import ja.e0;
import ja.j;
import ja.k;
import ja.s;
import java.io.IOException;
import java.net.Socket;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import ma.g;

/* JADX INFO: compiled from: Internal.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f31636a;

    public abstract void a(s.a aVar, String str);

    public abstract void b(s.a aVar, String str, String str2);

    public abstract void c(k kVar, SSLSocket sSLSocket, boolean z10);

    public abstract int d(c0.a aVar);

    public abstract boolean e(j jVar, ma.c cVar);

    public abstract Socket f(j jVar, ja.a aVar, g gVar);

    public abstract boolean g(ja.a aVar, ja.a aVar2);

    public abstract ma.c h(j jVar, ja.a aVar, g gVar, e0 e0Var);

    public abstract void i(j jVar, ma.c cVar);

    public abstract ma.d j(j jVar);

    @Nullable
    public abstract IOException k(e eVar, @Nullable IOException iOException);
}
