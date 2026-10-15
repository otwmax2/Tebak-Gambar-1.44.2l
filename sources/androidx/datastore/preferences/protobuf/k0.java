package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.t1;
import java.io.IOException;

/* JADX INFO: compiled from: MapEntryLite.java */
/* JADX INFO: loaded from: classes.dex */
public class k0<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a<K, V> f2791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final K f2792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final V f2793c;

    /* JADX INFO: compiled from: MapEntryLite.java */
    static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t1.b f2794a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final K f2795b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final t1.b f2796c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final V f2797d;

        public a(t1.b bVar, K k10, t1.b bVar2, V v10) {
            this.f2794a = bVar;
            this.f2795b = k10;
            this.f2796c = bVar2;
            this.f2797d = v10;
        }
    }

    private k0(t1.b bVar, K k10, t1.b bVar2, V v10) {
        this.f2791a = new a<>(bVar, k10, bVar2, v10);
        this.f2792b = k10;
        this.f2793c = v10;
    }

    static <K, V> int b(a<K, V> aVar, K k10, V v10) {
        return u.d(aVar.f2794a, 1, k10) + u.d(aVar.f2796c, 2, v10);
    }

    public static <K, V> k0<K, V> d(t1.b bVar, K k10, t1.b bVar2, V v10) {
        return new k0<>(bVar, k10, bVar2, v10);
    }

    static <K, V> void e(k kVar, a<K, V> aVar, K k10, V v10) throws IOException {
        u.z(kVar, aVar.f2794a, 1, k10);
        u.z(kVar, aVar.f2796c, 2, v10);
    }

    public int a(int i10, K k10, V v10) {
        return k.V(i10) + k.C(b(this.f2791a, k10, v10));
    }

    a<K, V> c() {
        return this.f2791a;
    }
}
