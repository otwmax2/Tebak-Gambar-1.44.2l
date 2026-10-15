package r5;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import s5.f0;

/* JADX INFO: compiled from: RolloutAssignmentList.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<i> f34292a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f34293b;

    public j(int i10) {
        this.f34293b = i10;
    }

    public List<f0.e.d.AbstractC0246e> a() {
        List<i> listB = b();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < listB.size(); i10++) {
            arrayList.add(listB.get(i10).h());
        }
        return arrayList;
    }

    public synchronized List<i> b() {
        return Collections.unmodifiableList(new ArrayList(this.f34292a));
    }

    public synchronized boolean c(List<i> list) {
        this.f34292a.clear();
        if (list.size() <= this.f34293b) {
            return this.f34292a.addAll(list);
        }
        n5.g.f().k("Ignored 0 entries when adding rollout assignments. Maximum allowable: " + this.f34293b);
        return this.f34292a.addAll(list.subList(0, this.f34293b));
    }
}
