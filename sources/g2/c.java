package g2;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: GenericLoaderFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final l f29797d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class, Map<Class, m>> f29798a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class, Map<Class, l>> f29799b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f29800c;

    /* JADX INFO: compiled from: GenericLoaderFactory.java */
    static class a implements l {
        a() {
        }

        @Override // g2.l
        public a2.c a(Object obj, int i10, int i11) {
            throw new NoSuchMethodError("This should never be called!");
        }

        public String toString() {
            return "NULL_MODEL_LOADER";
        }
    }

    public c(Context context) {
        this.f29800c = context.getApplicationContext();
    }

    private <T, Y> void b(Class<T> cls, Class<Y> cls2, l<T, Y> lVar) {
        Map<Class, l> map = this.f29799b.get(cls);
        if (map == null) {
            map = new HashMap<>();
            this.f29799b.put(cls, map);
        }
        map.put(cls2, lVar);
    }

    private <T, Y> void c(Class<T> cls, Class<Y> cls2) {
        b(cls, cls2, f29797d);
    }

    private <T, Y> l<T, Y> d(Class<T> cls, Class<Y> cls2) {
        Map<Class, l> map = this.f29799b.get(cls);
        if (map != null) {
            return map.get(cls2);
        }
        return null;
    }

    private <T, Y> m<T, Y> e(Class<T> cls, Class<Y> cls2) {
        Map<Class, m> map;
        Map<Class, m> map2 = this.f29798a.get(cls);
        m mVar = map2 != null ? map2.get(cls2) : null;
        if (mVar == null) {
            for (Class cls3 : this.f29798a.keySet()) {
                if (cls3.isAssignableFrom(cls) && (map = this.f29798a.get(cls3)) != null && (mVar = map.get(cls2)) != null) {
                    break;
                }
            }
        }
        return mVar;
    }

    public synchronized <T, Y> l<T, Y> a(Class<T> cls, Class<Y> cls2) {
        l<T, Y> lVarD = d(cls, cls2);
        if (lVarD != null) {
            if (f29797d.equals(lVarD)) {
                return null;
            }
            return lVarD;
        }
        m<T, Y> mVarE = e(cls, cls2);
        if (mVarE != null) {
            lVarD = mVarE.a(this.f29800c, this);
            b(cls, cls2, lVarD);
        } else {
            c(cls, cls2);
        }
        return lVarD;
    }

    public synchronized <T, Y> m<T, Y> f(Class<T> cls, Class<Y> cls2, m<T, Y> mVar) {
        m<T, Y> mVarPut;
        this.f29799b.clear();
        Map<Class, m> map = this.f29798a.get(cls);
        if (map == null) {
            map = new HashMap<>();
            this.f29798a.put(cls, map);
        }
        mVarPut = map.put(cls2, mVar);
        if (mVarPut != null) {
            Iterator<Map<Class, m>> it = this.f29798a.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (it.next().containsValue(mVarPut)) {
                    mVarPut = null;
                    break;
                }
            }
        }
        return mVarPut;
    }
}
