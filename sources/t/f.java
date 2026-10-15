package t;

import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DependencyNode.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    p f35072d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f35074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f35075g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f35069a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f35070b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f35071c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f35073e = a.UNKNOWN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f35076h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    g f35077i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f35078j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    List<d> f35079k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    List<f> f35080l = new ArrayList();

    /* JADX INFO: compiled from: DependencyNode.java */
    enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public f(p pVar) {
        this.f35072d = pVar;
    }

    @Override // t.d
    public void a(d dVar) {
        Iterator<f> it = this.f35080l.iterator();
        while (it.hasNext()) {
            if (!it.next().f35078j) {
                return;
            }
        }
        this.f35071c = true;
        d dVar2 = this.f35069a;
        if (dVar2 != null) {
            dVar2.a(this);
        }
        if (this.f35070b) {
            this.f35072d.a(this);
            return;
        }
        f fVar = null;
        int i10 = 0;
        for (f fVar2 : this.f35080l) {
            if (!(fVar2 instanceof g)) {
                i10++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i10 == 1 && fVar.f35078j) {
            g gVar = this.f35077i;
            if (gVar != null) {
                if (!gVar.f35078j) {
                    return;
                } else {
                    this.f35074f = this.f35076h * gVar.f35075g;
                }
            }
            d(fVar.f35075g + this.f35074f);
        }
        d dVar3 = this.f35069a;
        if (dVar3 != null) {
            dVar3.a(this);
        }
    }

    public void b(d dVar) {
        this.f35079k.add(dVar);
        if (this.f35078j) {
            dVar.a(dVar);
        }
    }

    public void c() {
        this.f35080l.clear();
        this.f35079k.clear();
        this.f35078j = false;
        this.f35075g = 0;
        this.f35071c = false;
        this.f35070b = false;
    }

    public void d(int i10) {
        if (this.f35078j) {
            return;
        }
        this.f35078j = true;
        this.f35075g = i10;
        for (d dVar : this.f35079k) {
            dVar.a(dVar);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f35072d.f35123b.r());
        sb.append(CertificateUtil.DELIMITER);
        sb.append(this.f35073e);
        sb.append("(");
        sb.append(this.f35078j ? Integer.valueOf(this.f35075g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f35080l.size());
        sb.append(":d=");
        sb.append(this.f35079k.size());
        sb.append(">");
        return sb.toString();
    }
}
