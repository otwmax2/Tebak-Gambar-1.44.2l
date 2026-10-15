package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: FragmentStore.java */
/* JADX INFO: loaded from: classes.dex */
class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<Fragment> f3356a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<String, u> f3357b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private q f3358c;

    v() {
    }

    void a(Fragment fragment) {
        if (this.f3356a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f3356a) {
            this.f3356a.add(fragment);
        }
        fragment.mAdded = true;
    }

    void b() {
        this.f3357b.values().removeAll(Collections.singleton(null));
    }

    boolean c(String str) {
        return this.f3357b.get(str) != null;
    }

    void d(int i10) {
        for (u uVar : this.f3357b.values()) {
            if (uVar != null) {
                uVar.t(i10);
            }
        }
    }

    void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f3357b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (u uVar : this.f3357b.values()) {
                printWriter.print(str);
                if (uVar != null) {
                    Fragment fragmentK = uVar.k();
                    printWriter.println(fragmentK);
                    fragmentK.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f3356a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i10 = 0; i10 < size; i10++) {
                Fragment fragment = this.f3356a.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    Fragment f(String str) {
        u uVar = this.f3357b.get(str);
        if (uVar != null) {
            return uVar.k();
        }
        return null;
    }

    Fragment g(int i10) {
        for (int size = this.f3356a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3356a.get(size);
            if (fragment != null && fragment.mFragmentId == i10) {
                return fragment;
            }
        }
        for (u uVar : this.f3357b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (fragmentK.mFragmentId == i10) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment h(String str) {
        if (str != null) {
            for (int size = this.f3356a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f3356a.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (u uVar : this.f3357b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (str.equals(fragmentK.mTag)) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment i(String str) {
        Fragment fragmentFindFragmentByWho;
        for (u uVar : this.f3357b.values()) {
            if (uVar != null && (fragmentFindFragmentByWho = uVar.k().findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    int j(Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int iIndexOf = this.f3356a.indexOf(fragment);
        for (int i10 = iIndexOf - 1; i10 >= 0; i10--) {
            Fragment fragment2 = this.f3356a.get(i10);
            if (fragment2.mContainer == viewGroup && (view2 = fragment2.mView) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            iIndexOf++;
            if (iIndexOf >= this.f3356a.size()) {
                return -1;
            }
            Fragment fragment3 = this.f3356a.get(iIndexOf);
            if (fragment3.mContainer == viewGroup && (view = fragment3.mView) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    List<u> k() {
        ArrayList arrayList = new ArrayList();
        for (u uVar : this.f3357b.values()) {
            if (uVar != null) {
                arrayList.add(uVar);
            }
        }
        return arrayList;
    }

    List<Fragment> l() {
        ArrayList arrayList = new ArrayList();
        for (u uVar : this.f3357b.values()) {
            if (uVar != null) {
                arrayList.add(uVar.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    u m(String str) {
        return this.f3357b.get(str);
    }

    List<Fragment> n() {
        ArrayList arrayList;
        if (this.f3356a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f3356a) {
            arrayList = new ArrayList(this.f3356a);
        }
        return arrayList;
    }

    q o() {
        return this.f3358c;
    }

    void p(u uVar) {
        Fragment fragmentK = uVar.k();
        if (c(fragmentK.mWho)) {
            return;
        }
        this.f3357b.put(fragmentK.mWho, uVar);
        if (fragmentK.mRetainInstanceChangedWhileDetached) {
            if (fragmentK.mRetainInstance) {
                this.f3358c.j(fragmentK);
            } else {
                this.f3358c.r(fragmentK);
            }
            fragmentK.mRetainInstanceChangedWhileDetached = false;
        }
        if (n.F0(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragmentK);
        }
    }

    void q(u uVar) {
        Fragment fragmentK = uVar.k();
        if (fragmentK.mRetainInstance) {
            this.f3358c.r(fragmentK);
        }
        if (this.f3357b.put(fragmentK.mWho, null) != null && n.F0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragmentK);
        }
    }

    void r() {
        Iterator<Fragment> it = this.f3356a.iterator();
        while (it.hasNext()) {
            u uVar = this.f3357b.get(it.next().mWho);
            if (uVar != null) {
                uVar.m();
            }
        }
        for (u uVar2 : this.f3357b.values()) {
            if (uVar2 != null) {
                uVar2.m();
                Fragment fragmentK = uVar2.k();
                if (fragmentK.mRemoving && !fragmentK.isInBackStack()) {
                    q(uVar2);
                }
            }
        }
    }

    void s(Fragment fragment) {
        synchronized (this.f3356a) {
            this.f3356a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    void t() {
        this.f3357b.clear();
    }

    void u(List<String> list) {
        this.f3356a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment fragmentF = f(str);
                if (fragmentF == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (n.F0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + fragmentF);
                }
                a(fragmentF);
            }
        }
    }

    ArrayList<t> v() {
        ArrayList<t> arrayList = new ArrayList<>(this.f3357b.size());
        for (u uVar : this.f3357b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                t tVarR = uVar.r();
                arrayList.add(tVarR);
                if (n.F0(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragmentK + ": " + tVarR.A);
                }
            }
        }
        return arrayList;
    }

    ArrayList<String> w() {
        synchronized (this.f3356a) {
            if (this.f3356a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f3356a.size());
            for (Fragment fragment : this.f3356a) {
                arrayList.add(fragment.mWho);
                if (n.F0(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment.mWho + "): " + fragment);
                }
            }
            return arrayList;
        }
    }

    void x(q qVar) {
        this.f3358c = qVar;
    }
}
