package q2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import java.util.HashSet;

/* JADX INFO: compiled from: RequestManagerFragment.java */
/* JADX INFO: loaded from: classes.dex */
@TargetApi(11)
public class j extends Fragment {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final q2.a f33841o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final l f33842p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private v1.j f33843q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final HashSet<j> f33844r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private j f33845s;

    /* JADX INFO: compiled from: RequestManagerFragment.java */
    private class b implements l {
        private b() {
        }
    }

    public j() {
        this(new q2.a());
    }

    private void a(j jVar) {
        this.f33844r.add(jVar);
    }

    private void e(j jVar) {
        this.f33844r.remove(jVar);
    }

    q2.a b() {
        return this.f33841o;
    }

    public v1.j c() {
        return this.f33843q;
    }

    public l d() {
        return this.f33842p;
    }

    public void f(v1.j jVar) {
        this.f33843q = jVar;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            j jVarH = k.c().h(getActivity().getFragmentManager());
            this.f33845s = jVarH;
            if (jVarH != this) {
                jVarH.a(this);
            }
        } catch (IllegalStateException e10) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e10);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f33841o.b();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        j jVar = this.f33845s;
        if (jVar != null) {
            jVar.e(this);
            this.f33845s = null;
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        v1.j jVar = this.f33843q;
        if (jVar != null) {
            jVar.A();
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f33841o.c();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f33841o.d();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        v1.j jVar = this.f33843q;
        if (jVar != null) {
            jVar.B(i10);
        }
    }

    @SuppressLint({"ValidFragment"})
    j(q2.a aVar) {
        this.f33842p = new b();
        this.f33844r = new HashSet<>();
        this.f33841o = aVar;
    }
}
