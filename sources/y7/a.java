package y7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import x7.k;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f37015c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<k> f37016a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<k> f37017b = new ArrayList<>();

    private a() {
    }

    public static a a() {
        return f37015c;
    }

    public void b(k kVar) {
        this.f37016a.add(kVar);
    }

    public Collection<k> c() {
        return Collections.unmodifiableCollection(this.f37016a);
    }

    public void d(k kVar) {
        boolean zG = g();
        this.f37017b.add(kVar);
        if (zG) {
            return;
        }
        f.c().e();
    }

    public Collection<k> e() {
        return Collections.unmodifiableCollection(this.f37017b);
    }

    public void f(k kVar) {
        boolean zG = g();
        this.f37016a.remove(kVar);
        this.f37017b.remove(kVar);
        if (!zG || g()) {
            return;
        }
        f.c().f();
    }

    public boolean g() {
        return this.f37017b.size() > 0;
    }
}
