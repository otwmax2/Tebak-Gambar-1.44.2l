package t;

import com.facebook.internal.AnalyticsEvents;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: WidgetGroup.java */
/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static int f35107g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f35109b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f35111d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<s.e> f35108a = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f35110c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList<a> f35112e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f35113f = -1;

    /* JADX INFO: compiled from: WidgetGroup.java */
    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<s.e> f35114a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f35115b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f35116c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f35117d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f35118e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f35119f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f35120g;

        public a(s.e eVar, p.d dVar, int i10) {
            this.f35114a = new WeakReference<>(eVar);
            this.f35115b = dVar.x(eVar.O);
            this.f35116c = dVar.x(eVar.P);
            this.f35117d = dVar.x(eVar.Q);
            this.f35118e = dVar.x(eVar.R);
            this.f35119f = dVar.x(eVar.S);
            this.f35120g = i10;
        }
    }

    public o(int i10) {
        this.f35109b = -1;
        this.f35111d = 0;
        int i11 = f35107g;
        f35107g = i11 + 1;
        this.f35109b = i11;
        this.f35111d = i10;
    }

    private String e() {
        int i10 = this.f35111d;
        return i10 == 0 ? "Horizontal" : i10 == 1 ? "Vertical" : i10 == 2 ? "Both" : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
    }

    private int j(p.d dVar, ArrayList<s.e> arrayList, int i10) {
        int iX;
        int iX2;
        s.f fVar = (s.f) arrayList.get(0).I();
        dVar.D();
        fVar.g(dVar, false);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList.get(i11).g(dVar, false);
        }
        if (i10 == 0 && fVar.V0 > 0) {
            s.b.b(fVar, dVar, arrayList, 0);
        }
        if (i10 == 1 && fVar.W0 > 0) {
            s.b.b(fVar, dVar, arrayList, 1);
        }
        try {
            dVar.z();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f35112e = new ArrayList<>();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            this.f35112e.add(new a(arrayList.get(i12), dVar, i10));
        }
        if (i10 == 0) {
            iX = dVar.x(fVar.O);
            iX2 = dVar.x(fVar.Q);
            dVar.D();
        } else {
            iX = dVar.x(fVar.P);
            iX2 = dVar.x(fVar.R);
            dVar.D();
        }
        return iX2 - iX;
    }

    public boolean a(s.e eVar) {
        if (this.f35108a.contains(eVar)) {
            return false;
        }
        this.f35108a.add(eVar);
        return true;
    }

    public void b(ArrayList<o> arrayList) {
        int size = this.f35108a.size();
        if (this.f35113f != -1 && size > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                o oVar = arrayList.get(i10);
                if (this.f35113f == oVar.f35109b) {
                    g(this.f35111d, oVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int c() {
        return this.f35109b;
    }

    public int d() {
        return this.f35111d;
    }

    public int f(p.d dVar, int i10) {
        if (this.f35108a.size() == 0) {
            return 0;
        }
        return j(dVar, this.f35108a, i10);
    }

    public void g(int i10, o oVar) {
        for (s.e eVar : this.f35108a) {
            oVar.a(eVar);
            if (i10 == 0) {
                eVar.H0 = oVar.c();
            } else {
                eVar.I0 = oVar.c();
            }
        }
        this.f35113f = oVar.f35109b;
    }

    public void h(boolean z10) {
        this.f35110c = z10;
    }

    public void i(int i10) {
        this.f35111d = i10;
    }

    public String toString() {
        String str = e() + " [" + this.f35109b + "] <";
        Iterator<s.e> it = this.f35108a.iterator();
        while (it.hasNext()) {
            str = str + " " + it.next().r();
        }
        return str + " >";
    }
}
