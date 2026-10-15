package x7;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class k extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f36547i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f36548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f36549b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b8.a f36551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c8.a f36552e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<y7.c> f36550c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f36553f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f36554g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f36555h = UUID.randomUUID().toString();

    k(b bVar, c cVar) {
        this.f36549b = bVar;
        this.f36548a = cVar;
        f(null);
        this.f36552e = (cVar.b() == d.HTML || cVar.b() == d.JAVASCRIPT) ? new c8.b(cVar.i()) : new c8.c(cVar.e(), cVar.f());
        this.f36552e.a();
        y7.a.a().b(this);
        this.f36552e.e(bVar);
    }

    private void f(View view) {
        this.f36551d = new b8.a(view);
    }

    private void h(View view) {
        Collection<k> collectionC = y7.a.a().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (k kVar : collectionC) {
            if (kVar != this && kVar.g() == view) {
                kVar.f36551d.clear();
            }
        }
    }

    @Override // x7.a
    public void b() {
        if (this.f36554g) {
            return;
        }
        this.f36551d.clear();
        l();
        this.f36554g = true;
        k().l();
        y7.a.a().f(this);
        k().i();
        this.f36552e = null;
    }

    @Override // x7.a
    public void c(View view) {
        if (this.f36554g) {
            return;
        }
        a8.e.b(view, "AdView is null");
        if (g() == view) {
            return;
        }
        f(view);
        k().n();
        h(view);
    }

    @Override // x7.a
    public void d() {
        if (this.f36553f) {
            return;
        }
        this.f36553f = true;
        y7.a.a().d(this);
        this.f36552e.b(y7.f.c().g());
        this.f36552e.f(this, this.f36548a);
    }

    public List<y7.c> e() {
        return this.f36550c;
    }

    public View g() {
        return this.f36551d.get();
    }

    public boolean i() {
        return this.f36553f && !this.f36554g;
    }

    public String j() {
        return this.f36555h;
    }

    public c8.a k() {
        return this.f36552e;
    }

    public void l() {
        if (this.f36554g) {
            return;
        }
        this.f36550c.clear();
    }
}
