package g1;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import g1.m;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: TransitionSet.java */
/* JADX INFO: loaded from: classes.dex */
public class q extends m {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    int f29765a0;
    private ArrayList<m> Y = new ArrayList<>();
    private boolean Z = true;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    boolean f29766b0 = false;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private int f29767c0 = 0;

    /* JADX INFO: compiled from: TransitionSet.java */
    class a extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m f29768a;

        a(m mVar) {
            this.f29768a = mVar;
        }

        @Override // g1.m.f
        public void d(m mVar) {
            this.f29768a.V();
            mVar.R(this);
        }
    }

    /* JADX INFO: compiled from: TransitionSet.java */
    static class b extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        q f29770a;

        b(q qVar) {
            this.f29770a = qVar;
        }

        @Override // g1.m.f
        public void d(m mVar) {
            q qVar = this.f29770a;
            int i10 = qVar.f29765a0 - 1;
            qVar.f29765a0 = i10;
            if (i10 == 0) {
                qVar.f29766b0 = false;
                qVar.q();
            }
            mVar.R(this);
        }

        @Override // g1.n, g1.m.f
        public void e(m mVar) {
            q qVar = this.f29770a;
            if (qVar.f29766b0) {
                return;
            }
            qVar.d0();
            this.f29770a.f29766b0 = true;
        }
    }

    private void i0(m mVar) {
        this.Y.add(mVar);
        mVar.F = this;
    }

    private void s0() {
        b bVar = new b(this);
        Iterator<m> it = this.Y.iterator();
        while (it.hasNext()) {
            it.next().a(bVar);
        }
        this.f29765a0 = this.Y.size();
    }

    @Override // g1.m
    public void P(View view) {
        super.P(view);
        int size = this.Y.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.Y.get(i10).P(view);
        }
    }

    @Override // g1.m
    public void T(View view) {
        super.T(view);
        int size = this.Y.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.Y.get(i10).T(view);
        }
    }

    @Override // g1.m
    protected void V() {
        if (this.Y.isEmpty()) {
            d0();
            q();
            return;
        }
        s0();
        if (this.Z) {
            Iterator<m> it = this.Y.iterator();
            while (it.hasNext()) {
                it.next().V();
            }
            return;
        }
        for (int i10 = 1; i10 < this.Y.size(); i10++) {
            this.Y.get(i10 - 1).a(new a(this.Y.get(i10)));
        }
        m mVar = this.Y.get(0);
        if (mVar != null) {
            mVar.V();
        }
    }

    @Override // g1.m
    public void Y(m.e eVar) {
        super.Y(eVar);
        this.f29767c0 |= 8;
        int size = this.Y.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.Y.get(i10).Y(eVar);
        }
    }

    @Override // g1.m
    public void a0(g gVar) {
        super.a0(gVar);
        this.f29767c0 |= 4;
        if (this.Y != null) {
            for (int i10 = 0; i10 < this.Y.size(); i10++) {
                this.Y.get(i10).a0(gVar);
            }
        }
    }

    @Override // g1.m
    public void b0(p pVar) {
        super.b0(pVar);
        this.f29767c0 |= 2;
        int size = this.Y.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.Y.get(i10).b0(pVar);
        }
    }

    @Override // g1.m
    String e0(String str) {
        String strE0 = super.e0(str);
        for (int i10 = 0; i10 < this.Y.size(); i10++) {
            StringBuilder sb = new StringBuilder();
            sb.append(strE0);
            sb.append("\n");
            sb.append(this.Y.get(i10).e0(str + "  "));
            strE0 = sb.toString();
        }
        return strE0;
    }

    @Override // g1.m
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public q a(m.f fVar) {
        return (q) super.a(fVar);
    }

    @Override // g1.m
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public q b(View view) {
        for (int i10 = 0; i10 < this.Y.size(); i10++) {
            this.Y.get(i10).b(view);
        }
        return (q) super.b(view);
    }

    @Override // g1.m
    public void h(s sVar) {
        if (H(sVar.f29775b)) {
            for (m mVar : this.Y) {
                if (mVar.H(sVar.f29775b)) {
                    mVar.h(sVar);
                    sVar.f29776c.add(mVar);
                }
            }
        }
    }

    public q h0(m mVar) {
        i0(mVar);
        long j10 = this.f29740q;
        if (j10 >= 0) {
            mVar.W(j10);
        }
        if ((this.f29767c0 & 1) != 0) {
            mVar.Z(t());
        }
        if ((this.f29767c0 & 2) != 0) {
            mVar.b0(x());
        }
        if ((this.f29767c0 & 4) != 0) {
            mVar.a0(w());
        }
        if ((this.f29767c0 & 8) != 0) {
            mVar.Y(s());
        }
        return this;
    }

    @Override // g1.m
    void j(s sVar) {
        super.j(sVar);
        int size = this.Y.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.Y.get(i10).j(sVar);
        }
    }

    public m j0(int i10) {
        if (i10 < 0 || i10 >= this.Y.size()) {
            return null;
        }
        return this.Y.get(i10);
    }

    @Override // g1.m
    public void k(s sVar) {
        if (H(sVar.f29775b)) {
            for (m mVar : this.Y) {
                if (mVar.H(sVar.f29775b)) {
                    mVar.k(sVar);
                    sVar.f29776c.add(mVar);
                }
            }
        }
    }

    public int k0() {
        return this.Y.size();
    }

    @Override // g1.m
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public q R(m.f fVar) {
        return (q) super.R(fVar);
    }

    @Override // g1.m
    /* JADX INFO: renamed from: n */
    public m clone() {
        q qVar = (q) super.clone();
        qVar.Y = new ArrayList<>();
        int size = this.Y.size();
        for (int i10 = 0; i10 < size; i10++) {
            qVar.i0(this.Y.get(i10).clone());
        }
        return qVar;
    }

    @Override // g1.m
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public q S(View view) {
        for (int i10 = 0; i10 < this.Y.size(); i10++) {
            this.Y.get(i10).S(view);
        }
        return (q) super.S(view);
    }

    @Override // g1.m
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public q W(long j10) {
        ArrayList<m> arrayList;
        super.W(j10);
        if (this.f29740q >= 0 && (arrayList = this.Y) != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.Y.get(i10).W(j10);
            }
        }
        return this;
    }

    @Override // g1.m
    protected void p(ViewGroup viewGroup, t tVar, t tVar2, ArrayList<s> arrayList, ArrayList<s> arrayList2) {
        long jZ = z();
        int size = this.Y.size();
        for (int i10 = 0; i10 < size; i10++) {
            m mVar = this.Y.get(i10);
            if (jZ > 0 && (this.Z || i10 == 0)) {
                long jZ2 = mVar.z();
                if (jZ2 > 0) {
                    mVar.c0(jZ2 + jZ);
                } else {
                    mVar.c0(jZ);
                }
            }
            mVar.p(viewGroup, tVar, tVar2, arrayList, arrayList2);
        }
    }

    @Override // g1.m
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public q Z(TimeInterpolator timeInterpolator) {
        this.f29767c0 |= 1;
        ArrayList<m> arrayList = this.Y;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.Y.get(i10).Z(timeInterpolator);
            }
        }
        return (q) super.Z(timeInterpolator);
    }

    public q q0(int i10) {
        if (i10 == 0) {
            this.Z = true;
        } else {
            if (i10 != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i10);
            }
            this.Z = false;
        }
        return this;
    }

    @Override // g1.m
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public q c0(long j10) {
        return (q) super.c0(j10);
    }
}
