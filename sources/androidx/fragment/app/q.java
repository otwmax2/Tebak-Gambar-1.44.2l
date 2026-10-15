package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.g0;
import androidx.lifecycle.h0;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: FragmentManagerViewModel.java */
/* JADX INFO: loaded from: classes.dex */
final class q extends g0 {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final h0.b f3328y = new a();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f3332u;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final HashMap<String, Fragment> f3329r = new HashMap<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final HashMap<String, q> f3330s = new HashMap<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final HashMap<String, l0> f3331t = new HashMap<>();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f3333v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f3334w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f3335x = false;

    /* JADX INFO: compiled from: FragmentManagerViewModel.java */
    class a implements h0.b {
        a() {
        }

        @Override // androidx.lifecycle.h0.b
        public <T extends g0> T a(Class<T> cls) {
            return new q(true);
        }

        @Override // androidx.lifecycle.h0.b
        public /* synthetic */ g0 b(Class cls, s0.a aVar) {
            return i0.b(this, cls, aVar);
        }
    }

    q(boolean z10) {
        this.f3332u = z10;
    }

    static q n(l0 l0Var) {
        return (q) new h0(l0Var, f3328y).a(q.class);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return this.f3329r.equals(qVar.f3329r) && this.f3330s.equals(qVar.f3330s) && this.f3331t.equals(qVar.f3331t);
    }

    @Override // androidx.lifecycle.g0
    protected void h() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f3333v = true;
    }

    public int hashCode() {
        return (((this.f3329r.hashCode() * 31) + this.f3330s.hashCode()) * 31) + this.f3331t.hashCode();
    }

    void j(Fragment fragment) {
        if (this.f3335x) {
            if (n.F0(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f3329r.containsKey(fragment.mWho)) {
                return;
            }
            this.f3329r.put(fragment.mWho, fragment);
            if (n.F0(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
            }
        }
    }

    void k(Fragment fragment) {
        if (n.F0(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        q qVar = this.f3330s.get(fragment.mWho);
        if (qVar != null) {
            qVar.h();
            this.f3330s.remove(fragment.mWho);
        }
        l0 l0Var = this.f3331t.get(fragment.mWho);
        if (l0Var != null) {
            l0Var.a();
            this.f3331t.remove(fragment.mWho);
        }
    }

    Fragment l(String str) {
        return this.f3329r.get(str);
    }

    q m(Fragment fragment) {
        q qVar = this.f3330s.get(fragment.mWho);
        if (qVar != null) {
            return qVar;
        }
        q qVar2 = new q(this.f3332u);
        this.f3330s.put(fragment.mWho, qVar2);
        return qVar2;
    }

    Collection<Fragment> o() {
        return new ArrayList(this.f3329r.values());
    }

    l0 p(Fragment fragment) {
        l0 l0Var = this.f3331t.get(fragment.mWho);
        if (l0Var != null) {
            return l0Var;
        }
        l0 l0Var2 = new l0();
        this.f3331t.put(fragment.mWho, l0Var2);
        return l0Var2;
    }

    boolean q() {
        return this.f3333v;
    }

    void r(Fragment fragment) {
        if (this.f3335x) {
            if (n.F0(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        if ((this.f3329r.remove(fragment.mWho) != null) && n.F0(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    void s(boolean z10) {
        this.f3335x = z10;
    }

    boolean t(Fragment fragment) {
        if (this.f3329r.containsKey(fragment.mWho)) {
            return this.f3332u ? this.f3333v : !this.f3334w;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f3329r.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f3330s.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f3331t.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
