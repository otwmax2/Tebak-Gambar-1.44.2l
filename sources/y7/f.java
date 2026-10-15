package y7;

import android.content.Context;
import android.os.Handler;
import java.util.Iterator;
import x7.k;
import y7.b;

/* JADX INFO: loaded from: classes2.dex */
public class f implements w7.c, b.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static f f37032f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f37033a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w7.e f37034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w7.b f37035c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private w7.d f37036d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f37037e;

    public f(w7.e eVar, w7.b bVar) {
        this.f37034b = eVar;
        this.f37035c = bVar;
    }

    public static f c() {
        if (f37032f == null) {
            f37032f = new f(new w7.e(), new w7.b());
        }
        return f37032f;
    }

    private a h() {
        if (this.f37037e == null) {
            this.f37037e = a.a();
        }
        return this.f37037e;
    }

    @Override // w7.c
    public void a(float f10) {
        this.f37033a = f10;
        Iterator<k> it = h().e().iterator();
        while (it.hasNext()) {
            it.next().k().b(f10);
        }
    }

    @Override // y7.b.a
    public void b(boolean z10) {
        if (z10) {
            d8.a.p().c();
        } else {
            d8.a.p().k();
        }
    }

    public void d(Context context) {
        this.f37036d = this.f37034b.a(new Handler(), context, this.f37035c.a(), this);
    }

    public void e() {
        b.a().c(this);
        b.a().e();
        d8.a.p().c();
        this.f37036d.a();
    }

    public void f() {
        d8.a.p().h();
        b.a().f();
        this.f37036d.c();
    }

    public float g() {
        return this.f37033a;
    }
}
