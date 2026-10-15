package a1;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.j;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import androidx.savedstate.Recreator;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Map;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: SavedStateRegistry.kt */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public final class c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final b f19g = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f21b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f22c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f23d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Recreator.b f24e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.b<String, InterfaceC0003c> f20a = new k.b<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25f = true;

    /* JADX INFO: compiled from: SavedStateRegistry.kt */
    public interface a {
        void a(e eVar);
    }

    /* JADX INFO: compiled from: SavedStateRegistry.kt */
    private static final class b {
        private b() {
        }

        public /* synthetic */ b(g gVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: a1.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SavedStateRegistry.kt */
    public interface InterfaceC0003c {
        Bundle a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(c cVar, n nVar, j.b bVar) {
        m.e(cVar, "this$0");
        m.e(nVar, "<anonymous parameter 0>");
        m.e(bVar, "event");
        if (bVar == j.b.ON_START) {
            cVar.f25f = true;
        } else if (bVar == j.b.ON_STOP) {
            cVar.f25f = false;
        }
    }

    public final Bundle b(String str) {
        m.e(str, SDKConstants.PARAM_KEY);
        if (!this.f23d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
        }
        Bundle bundle = this.f22c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle != null ? bundle.getBundle(str) : null;
        Bundle bundle3 = this.f22c;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f22c;
        boolean z10 = false;
        if (bundle4 != null && !bundle4.isEmpty()) {
            z10 = true;
        }
        if (!z10) {
            this.f22c = null;
        }
        return bundle2;
    }

    public final InterfaceC0003c c(String str) {
        m.e(str, SDKConstants.PARAM_KEY);
        for (Map.Entry<String, InterfaceC0003c> entry : this.f20a) {
            m.d(entry, "components");
            String key = entry.getKey();
            InterfaceC0003c value = entry.getValue();
            if (m.a(key, str)) {
                return value;
            }
        }
        return null;
    }

    public final void e(j jVar) {
        m.e(jVar, "lifecycle");
        if (!(!this.f21b)) {
            throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
        }
        jVar.a(new l() { // from class: a1.b
            @Override // androidx.lifecycle.l
            public final void c(n nVar, j.b bVar) {
                c.d(this.f18a, nVar, bVar);
            }
        });
        this.f21b = true;
    }

    public final void f(Bundle bundle) {
        if (!this.f21b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
        }
        if (!(!this.f23d)) {
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        this.f22c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        this.f23d = true;
    }

    public final void g(Bundle bundle) {
        m.e(bundle, "outBundle");
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f22c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        k.b<String, InterfaceC0003c>.d dVarI = this.f20a.i();
        m.d(dVarI, "this.components.iteratorWithAdditions()");
        while (dVarI.hasNext()) {
            Map.Entry next = dVarI.next();
            bundle2.putBundle((String) next.getKey(), ((InterfaceC0003c) next.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    public final void h(String str, InterfaceC0003c interfaceC0003c) {
        m.e(str, SDKConstants.PARAM_KEY);
        m.e(interfaceC0003c, "provider");
        if (!(this.f20a.l(str, interfaceC0003c) == null)) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
        }
    }

    public final void i(Class<? extends a> cls) {
        m.e(cls, "clazz");
        if (!this.f25f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState".toString());
        }
        Recreator.b bVar = this.f24e;
        if (bVar == null) {
            bVar = new Recreator.b(this);
        }
        this.f24e = bVar;
        try {
            cls.getDeclaredConstructor(new Class[0]);
            Recreator.b bVar2 = this.f24e;
            if (bVar2 != null) {
                String name = cls.getName();
                m.d(name, "clazz.name");
                bVar2.b(name);
            }
        } catch (NoSuchMethodException e10) {
            throw new IllegalArgumentException("Class " + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
        }
    }
}
