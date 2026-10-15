package q2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.util.Log;
import androidx.fragment.app.Fragment;
import java.util.HashSet;

/* JADX INFO: compiled from: SupportRequestManagerFragment.java */
/* JADX INFO: loaded from: classes.dex */
public class n extends Fragment {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private v1.j f33855o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final q2.a f33856p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final l f33857q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final HashSet<n> f33858r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private n f33859s;

    /* JADX INFO: compiled from: SupportRequestManagerFragment.java */
    private class b implements l {
        private b() {
        }
    }

    public n() {
        this(new q2.a());
    }

    private void o(n nVar) {
        this.f33858r.add(nVar);
    }

    private void s(n nVar) {
        this.f33858r.remove(nVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            n nVarI = k.c().i(getActivity().getSupportFragmentManager());
            this.f33859s = nVarI;
            if (nVarI != this) {
                nVarI.o(this);
            }
        } catch (IllegalStateException e10) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root", e10);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f33856p.b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        n nVar = this.f33859s;
        if (nVar != null) {
            nVar.s(this);
            this.f33859s = null;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        v1.j jVar = this.f33855o;
        if (jVar != null) {
            jVar.A();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f33856p.c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f33856p.d();
    }

    q2.a p() {
        return this.f33856p;
    }

    public v1.j q() {
        return this.f33855o;
    }

    public l r() {
        return this.f33857q;
    }

    public void t(v1.j jVar) {
        this.f33855o = jVar;
    }

    @SuppressLint({"ValidFragment"})
    public n(q2.a aVar) {
        this.f33857q = new b();
        this.f33858r = new HashSet<>();
        this.f33856p = aVar;
    }
}
