package k0;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import i9.t;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import k0.d;
import s9.l;
import t9.m;
import t9.n;

/* JADX INFO: compiled from: Preferences.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<d.a<?>, Object> f31275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f31276b;

    /* JADX INFO: renamed from: k0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Preferences.kt */
    static final class C0184a extends n implements l<Map.Entry<d.a<?>, Object>, CharSequence> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final C0184a f31277o = new C0184a();

        C0184a() {
            super(1);
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(Map.Entry<d.a<?>, Object> entry) {
            m.e(entry, "entry");
            return "  " + entry.getKey().a() + " = " + entry.getValue();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ a(Map map, boolean z10, int i10, t9.g gVar) {
        this((i10 & 1) != 0 ? new LinkedHashMap() : map, (i10 & 2) != 0 ? true : z10);
    }

    @Override // k0.d
    public Map<d.a<?>, Object> a() {
        Map<d.a<?>, Object> mapUnmodifiableMap = Collections.unmodifiableMap(this.f31275a);
        m.d(mapUnmodifiableMap, "unmodifiableMap(preferencesMap)");
        return mapUnmodifiableMap;
    }

    @Override // k0.d
    public <T> T b(d.a<T> aVar) {
        m.e(aVar, SDKConstants.PARAM_KEY);
        return (T) this.f31275a.get(aVar);
    }

    public final void e() {
        if (!(!this.f31276b.get())) {
            throw new IllegalStateException("Do mutate preferences once returned to DataStore.".toString());
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            return m.a(this.f31275a, ((a) obj).f31275a);
        }
        return false;
    }

    public final void f() {
        this.f31276b.set(true);
    }

    public final void g(d.b<?>... bVarArr) {
        m.e(bVarArr, "pairs");
        e();
        for (d.b<?> bVar : bVarArr) {
            j(bVar.a(), bVar.b());
        }
    }

    public final <T> T h(d.a<T> aVar) {
        m.e(aVar, SDKConstants.PARAM_KEY);
        e();
        return (T) this.f31275a.remove(aVar);
    }

    public int hashCode() {
        return this.f31275a.hashCode();
    }

    public final <T> void i(d.a<T> aVar, T t10) {
        m.e(aVar, SDKConstants.PARAM_KEY);
        j(aVar, t10);
    }

    public final void j(d.a<?> aVar, Object obj) {
        m.e(aVar, SDKConstants.PARAM_KEY);
        e();
        if (obj == null) {
            h(aVar);
            return;
        }
        if (!(obj instanceof Set)) {
            this.f31275a.put(aVar, obj);
            return;
        }
        Map<d.a<?>, Object> map = this.f31275a;
        Set setUnmodifiableSet = Collections.unmodifiableSet(t.S((Iterable) obj));
        m.d(setUnmodifiableSet, "unmodifiableSet(value.toSet())");
        map.put(aVar, setUnmodifiableSet);
    }

    public String toString() {
        return t.B(this.f31275a.entrySet(), ",\n", "{\n", "\n}", 0, null, C0184a.f31277o, 24, null);
    }

    public a(Map<d.a<?>, Object> map, boolean z10) {
        m.e(map, "preferencesMap");
        this.f31275a = map;
        this.f31276b = new AtomicBoolean(z10);
    }
}
