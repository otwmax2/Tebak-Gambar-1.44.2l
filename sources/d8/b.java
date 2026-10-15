package d8;

import a8.f;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import x7.k;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<View, String> f28752a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<View, a> f28753b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, View> f28754c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<View> f28755d = new HashSet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet<String> f28756e = new HashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet<String> f28757f = new HashSet<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap<String, String> f28758g = new HashMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f28759h;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final y7.c f28760a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList<String> f28761b = new ArrayList<>();

        public a(y7.c cVar, String str) {
            this.f28760a = cVar;
            b(str);
        }

        public y7.c a() {
            return this.f28760a;
        }

        public void b(String str) {
            this.f28761b.add(str);
        }

        public ArrayList<String> c() {
            return this.f28761b;
        }
    }

    private void d(k kVar) {
        Iterator<y7.c> it = kVar.e().iterator();
        while (it.hasNext()) {
            e(it.next(), kVar);
        }
    }

    private void e(y7.c cVar, k kVar) {
        View view = cVar.a().get();
        if (view == null) {
            return;
        }
        a aVar = this.f28753b.get(view);
        if (aVar != null) {
            aVar.b(kVar.j());
        } else {
            this.f28753b.put(view, new a(cVar, kVar.j()));
        }
    }

    private String k(View view) {
        if (!view.hasWindowFocus()) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String strE = f.e(view);
            if (strE != null) {
                return strE;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f28755d.addAll(hashSet);
        return null;
    }

    public String a(View view) {
        if (this.f28752a.size() == 0) {
            return null;
        }
        String str = this.f28752a.get(view);
        if (str != null) {
            this.f28752a.remove(view);
        }
        return str;
    }

    public String b(String str) {
        return this.f28758g.get(str);
    }

    public HashSet<String> c() {
        return this.f28756e;
    }

    public View f(String str) {
        return this.f28754c.get(str);
    }

    public a g(View view) {
        a aVar = this.f28753b.get(view);
        if (aVar != null) {
            this.f28753b.remove(view);
        }
        return aVar;
    }

    public HashSet<String> h() {
        return this.f28757f;
    }

    public d i(View view) {
        return this.f28755d.contains(view) ? d.PARENT_VIEW : this.f28759h ? d.OBSTRUCTION_VIEW : d.UNDERLYING_VIEW;
    }

    public void j() {
        y7.a aVarA = y7.a.a();
        if (aVarA != null) {
            for (k kVar : aVarA.e()) {
                View viewG = kVar.g();
                if (kVar.i()) {
                    String strJ = kVar.j();
                    if (viewG != null) {
                        String strK = k(viewG);
                        if (strK == null) {
                            this.f28756e.add(strJ);
                            this.f28752a.put(viewG, strJ);
                            d(kVar);
                        } else {
                            this.f28757f.add(strJ);
                            this.f28754c.put(strJ, viewG);
                            this.f28758g.put(strJ, strK);
                        }
                    } else {
                        this.f28757f.add(strJ);
                        this.f28758g.put(strJ, "noAdView");
                    }
                }
            }
        }
    }

    public void l() {
        this.f28752a.clear();
        this.f28753b.clear();
        this.f28754c.clear();
        this.f28755d.clear();
        this.f28756e.clear();
        this.f28757f.clear();
        this.f28758g.clear();
        this.f28759h = false;
    }

    public void m() {
        this.f28759h = true;
    }
}
