package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.y;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: ExtensionRegistryLite.java */
/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f2821b = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile p f2823d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<a, y.e<?, ?>> f2825a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f2822c = c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final p f2824e = new p(true);

    /* JADX INFO: compiled from: ExtensionRegistryLite.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f2826a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2827b;

        a(Object obj, int i10) {
            this.f2826a = obj;
            this.f2827b = i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f2826a == aVar.f2826a && this.f2827b == aVar.f2827b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f2826a) * 65535) + this.f2827b;
        }
    }

    p() {
        this.f2825a = new HashMap();
    }

    public static p b() {
        p pVarA = f2823d;
        if (pVarA == null) {
            synchronized (p.class) {
                pVarA = f2823d;
                if (pVarA == null) {
                    pVarA = f2821b ? o.a() : f2824e;
                    f2823d = pVarA;
                }
            }
        }
        return pVarA;
    }

    static Class<?> c() {
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public <ContainingType extends r0> y.e<ContainingType, ?> a(ContainingType containingtype, int i10) {
        return (y.e) this.f2825a.get(new a(containingtype, i10));
    }

    p(boolean z10) {
        this.f2825a = Collections.emptyMap();
    }
}
