package w3;

import android.util.SparseArray;
import j3.d;
import java.util.HashMap;

/* JADX INFO: compiled from: PriorityMapping.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SparseArray<d> f35984a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap<d, Integer> f35985b;

    static {
        HashMap<d, Integer> map = new HashMap<>();
        f35985b = map;
        map.put(d.DEFAULT, 0);
        f35985b.put(d.VERY_LOW, 1);
        f35985b.put(d.HIGHEST, 2);
        for (d dVar : f35985b.keySet()) {
            f35984a.append(f35985b.get(dVar).intValue(), dVar);
        }
    }

    public static int a(d dVar) {
        Integer num = f35985b.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + dVar);
    }

    public static d b(int i10) {
        d dVar = f35984a.get(i10);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i10);
    }
}
