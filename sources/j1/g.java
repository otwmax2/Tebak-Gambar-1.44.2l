package j1;

import android.text.TextUtils;
import i1.m;
import i1.r;
import i1.u;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: WorkContinuationImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends r {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f30605j = i1.j.f("WorkContinuationImpl");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f30606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f30607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i1.d f30608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<? extends u> f30609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f30610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<String> f30611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<g> f30612g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f30613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private m f30614i;

    public g(i iVar, List<? extends u> list) {
        this(iVar, null, i1.d.KEEP, list, null);
    }

    private static boolean i(g gVar, Set<String> set) {
        set.addAll(gVar.c());
        Set<String> setL = l(gVar);
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            if (setL.contains(it.next())) {
                return true;
            }
        }
        List<g> listE = gVar.e();
        if (listE != null && !listE.isEmpty()) {
            Iterator<g> it2 = listE.iterator();
            while (it2.hasNext()) {
                if (i(it2.next(), set)) {
                    return true;
                }
            }
        }
        set.removeAll(gVar.c());
        return false;
    }

    public static Set<String> l(g gVar) {
        HashSet hashSet = new HashSet();
        List<g> listE = gVar.e();
        if (listE != null && !listE.isEmpty()) {
            Iterator<g> it = listE.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().c());
            }
        }
        return hashSet;
    }

    public m a() {
        if (this.f30613h) {
            i1.j.c().h(f30605j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.f30610e)), new Throwable[0]);
        } else {
            r1.b bVar = new r1.b(this);
            this.f30606a.q().b(bVar);
            this.f30614i = bVar.d();
        }
        return this.f30614i;
    }

    public i1.d b() {
        return this.f30608c;
    }

    public List<String> c() {
        return this.f30610e;
    }

    public String d() {
        return this.f30607b;
    }

    public List<g> e() {
        return this.f30612g;
    }

    public List<? extends u> f() {
        return this.f30609d;
    }

    public i g() {
        return this.f30606a;
    }

    public boolean h() {
        return i(this, new HashSet());
    }

    public boolean j() {
        return this.f30613h;
    }

    public void k() {
        this.f30613h = true;
    }

    public g(i iVar, String str, i1.d dVar, List<? extends u> list, List<g> list2) {
        this.f30606a = iVar;
        this.f30607b = str;
        this.f30608c = dVar;
        this.f30609d = list;
        this.f30612g = list2;
        this.f30610e = new ArrayList(list.size());
        this.f30611f = new ArrayList();
        if (list2 != null) {
            Iterator<g> it = list2.iterator();
            while (it.hasNext()) {
                this.f30611f.addAll(it.next().f30611f);
            }
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            String strA = list.get(i10).a();
            this.f30610e.add(strA);
            this.f30611f.add(strA);
        }
    }
}
