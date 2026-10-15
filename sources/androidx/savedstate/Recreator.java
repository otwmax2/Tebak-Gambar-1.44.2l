package androidx.savedstate;

import a1.c;
import a1.e;
import android.os.Bundle;
import androidx.lifecycle.j;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import com.facebook.share.internal.ShareConstants;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: Recreator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Recreator implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4214b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f4215a;

    /* JADX INFO: compiled from: Recreator.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Recreator.kt */
    public static final class b implements c.InterfaceC0003c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set<String> f4216a;

        public b(c cVar) {
            m.e(cVar, "registry");
            this.f4216a = new LinkedHashSet();
            cVar.h("androidx.savedstate.Restarter", this);
        }

        @Override // a1.c.InterfaceC0003c
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f4216a));
            return bundle;
        }

        public final void b(String str) {
            m.e(str, "className");
            this.f4216a.add(str);
        }
    }

    public Recreator(e eVar) {
        m.e(eVar, "owner");
        this.f4215a = eVar;
    }

    private final void h(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(c.a.class);
            m.d(clsAsSubclass, "{\n                Class.…class.java)\n            }");
            try {
                Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    Object objNewInstance = declaredConstructor.newInstance(new Object[0]);
                    m.d(objNewInstance, "{\n                constr…wInstance()\n            }");
                    ((c.a) objNewInstance).a(this.f4215a);
                } catch (Exception e10) {
                    throw new RuntimeException("Failed to instantiate " + str, e10);
                }
            } catch (NoSuchMethodException e11) {
                throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e11);
            }
        } catch (ClassNotFoundException e12) {
            throw new RuntimeException("Class " + str + " wasn't found", e12);
        }
    }

    @Override // androidx.lifecycle.l
    public void c(n nVar, j.b bVar) {
        m.e(nVar, ShareConstants.FEED_SOURCE_PARAM);
        m.e(bVar, "event");
        if (bVar != j.b.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        nVar.getLifecycle().c(this);
        Bundle bundleB = this.f4215a.getSavedStateRegistry().b("androidx.savedstate.Restarter");
        if (bundleB == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleB.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            h(it.next());
        }
    }
}
