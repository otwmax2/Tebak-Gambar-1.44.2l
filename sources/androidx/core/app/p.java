package androidx.core.app;

import android.app.Person;
import androidx.core.graphics.drawable.IconCompat;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: Person.java */
/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    CharSequence f2112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    IconCompat f2113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f2114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f2115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f2116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f2117f;

    /* JADX INFO: compiled from: Person.java */
    static class a {
        static p a(Person person) {
            return new b().f(person.getName()).c(person.getIcon() != null ? IconCompat.a(person.getIcon()) : null).g(person.getUri()).e(person.getKey()).b(person.isBot()).d(person.isImportant()).a();
        }

        static Person b(p pVar) {
            return new Person.Builder().setName(pVar.c()).setIcon(pVar.a() != null ? pVar.a().q() : null).setUri(pVar.d()).setKey(pVar.b()).setBot(pVar.e()).setImportant(pVar.f()).build();
        }
    }

    /* JADX INFO: compiled from: Person.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CharSequence f2118a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        IconCompat f2119b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f2120c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f2121d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f2122e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f2123f;

        public p a() {
            return new p(this);
        }

        public b b(boolean z10) {
            this.f2122e = z10;
            return this;
        }

        public b c(IconCompat iconCompat) {
            this.f2119b = iconCompat;
            return this;
        }

        public b d(boolean z10) {
            this.f2123f = z10;
            return this;
        }

        public b e(String str) {
            this.f2121d = str;
            return this;
        }

        public b f(CharSequence charSequence) {
            this.f2118a = charSequence;
            return this;
        }

        public b g(String str) {
            this.f2120c = str;
            return this;
        }
    }

    p(b bVar) {
        this.f2112a = bVar.f2118a;
        this.f2113b = bVar.f2119b;
        this.f2114c = bVar.f2120c;
        this.f2115d = bVar.f2121d;
        this.f2116e = bVar.f2122e;
        this.f2117f = bVar.f2123f;
    }

    public IconCompat a() {
        return this.f2113b;
    }

    public String b() {
        return this.f2115d;
    }

    public CharSequence c() {
        return this.f2112a;
    }

    public String d() {
        return this.f2114c;
    }

    public boolean e() {
        return this.f2116e;
    }

    public boolean f() {
        return this.f2117f;
    }

    public String g() {
        String str = this.f2114c;
        if (str != null) {
            return str;
        }
        if (this.f2112a == null) {
            return BuildConfig.FLAVOR;
        }
        return "name:" + ((Object) this.f2112a);
    }

    public Person h() {
        return a.b(this);
    }
}
