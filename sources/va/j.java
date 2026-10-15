package va;

import android.os.Parcel;
import java.util.Map;

/* JADX INFO: compiled from: MapParcelConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j<K, V, M extends Map<K, V>> implements ua.h<Map<K, V>, M> {
    public abstract M c();

    @Override // ua.h
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public M a(Parcel parcel) {
        int i10 = parcel.readInt();
        if (i10 == -1) {
            return null;
        }
        M m10 = (M) c();
        for (int i11 = 0; i11 < i10; i11++) {
            m10.put(e(parcel), g(parcel));
        }
        return m10;
    }

    public abstract K e(Parcel parcel);

    public abstract void f(K k10, Parcel parcel);

    public abstract V g(Parcel parcel);

    public abstract void h(V v10, Parcel parcel);

    @Override // ua.h
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void b(Map<K, V> map, Parcel parcel) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            f(entry.getKey(), parcel);
            h(entry.getValue(), parcel);
        }
    }
}
