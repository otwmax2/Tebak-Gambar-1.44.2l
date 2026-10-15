package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.j;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: compiled from: FragmentTransaction.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f3359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ClassLoader f3360b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f3363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f3364f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f3365g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f3366h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f3367i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f3369k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f3370l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    CharSequence f3371m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f3372n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    CharSequence f3373o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ArrayList<String> f3374p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    ArrayList<String> f3375q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ArrayList<Runnable> f3377s;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ArrayList<a> f3361c = new ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f3368j = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f3376r = false;

    /* JADX INFO: compiled from: FragmentTransaction.java */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3378a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Fragment f3379b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3380c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3381d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3382e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3383f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        j.c f3384g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        j.c f3385h;

        a() {
        }

        a(int i10, Fragment fragment) {
            this.f3378a = i10;
            this.f3379b = fragment;
            j.c cVar = j.c.RESUMED;
            this.f3384g = cVar;
            this.f3385h = cVar;
        }
    }

    w(j jVar, ClassLoader classLoader) {
        this.f3359a = jVar;
        this.f3360b = classLoader;
    }

    public w b(int i10, Fragment fragment, String str) {
        k(i10, fragment, str, 1);
        return this;
    }

    w c(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.mContainer = viewGroup;
        return b(viewGroup.getId(), fragment, str);
    }

    public w d(Fragment fragment, String str) {
        k(0, fragment, str, 1);
        return this;
    }

    void e(a aVar) {
        this.f3361c.add(aVar);
        aVar.f3380c = this.f3362d;
        aVar.f3381d = this.f3363e;
        aVar.f3382e = this.f3364f;
        aVar.f3383f = this.f3365g;
    }

    public abstract int f();

    public abstract int g();

    public abstract void h();

    public abstract void i();

    public w j() {
        if (this.f3367i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f3368j = false;
        return this;
    }

    void k(int i10, Fragment fragment, String str, int i11) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i10 != 0) {
            if (i10 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i12 = fragment.mFragmentId;
            if (i12 != 0 && i12 != i10) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i10);
            }
            fragment.mFragmentId = i10;
            fragment.mContainerId = i10;
        }
        e(new a(i11, fragment));
    }

    public w l(Fragment fragment) {
        e(new a(3, fragment));
        return this;
    }

    public w m(int i10, Fragment fragment) {
        return n(i10, fragment, null);
    }

    public w n(int i10, Fragment fragment, String str) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        k(i10, fragment, str, 2);
        return this;
    }

    public w o(boolean z10) {
        this.f3376r = z10;
        return this;
    }
}
