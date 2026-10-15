package f6;

import android.util.Base64;
import android.util.JsonWriter;
import d6.g;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: JsonValueObjectEncoderContext.java */
/* JADX INFO: loaded from: classes2.dex */
final class e implements d6.e, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f29271a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f29272b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JsonWriter f29273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Class<?>, d6.d<?>> f29274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Class<?>, d6.f<?>> f29275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d6.d<Object> f29276f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f29277g;

    e(Writer writer, Map<Class<?>, d6.d<?>> map, Map<Class<?>, d6.f<?>> map2, d6.d<Object> dVar, boolean z10) {
        this.f29273c = new JsonWriter(writer);
        this.f29274d = map;
        this.f29275e = map2;
        this.f29276f = dVar;
        this.f29277g = z10;
    }

    private boolean t(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private e w(String str, Object obj) throws d6.b, IOException {
        y();
        this.f29273c.name(str);
        if (obj != null) {
            return k(obj, false);
        }
        this.f29273c.nullValue();
        return this;
    }

    private e x(String str, Object obj) throws d6.b, IOException {
        if (obj == null) {
            return this;
        }
        y();
        this.f29273c.name(str);
        return k(obj, false);
    }

    private void y() throws IOException {
        if (!this.f29272b) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        e eVar = this.f29271a;
        if (eVar != null) {
            eVar.y();
            this.f29271a.f29272b = false;
            this.f29271a = null;
            this.f29273c.endObject();
        }
    }

    @Override // d6.e
    public d6.e a(d6.c cVar, boolean z10) throws IOException {
        return q(cVar.b(), z10);
    }

    @Override // d6.e
    public d6.e b(d6.c cVar, double d10) throws IOException {
        return m(cVar.b(), d10);
    }

    @Override // d6.e
    public d6.e c(d6.c cVar, long j10) throws IOException {
        return o(cVar.b(), j10);
    }

    @Override // d6.e
    public d6.e d(d6.c cVar, int i10) throws IOException {
        return n(cVar.b(), i10);
    }

    @Override // d6.e
    public d6.e e(d6.c cVar, Object obj) throws IOException {
        return p(cVar.b(), obj);
    }

    public e h(double d10) throws IOException {
        y();
        this.f29273c.value(d10);
        return this;
    }

    public e i(int i10) throws IOException {
        y();
        this.f29273c.value(i10);
        return this;
    }

    public e j(long j10) throws IOException {
        y();
        this.f29273c.value(j10);
        return this;
    }

    e k(Object obj, boolean z10) throws IOException {
        int i10 = 0;
        if (z10 && t(obj)) {
            Object[] objArr = new Object[1];
            objArr[0] = obj == null ? null : obj.getClass();
            throw new d6.b(String.format("%s cannot be encoded inline", objArr));
        }
        if (obj == null) {
            this.f29273c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.f29273c.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.f29273c.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    k(it.next(), false);
                }
                this.f29273c.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.f29273c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        p((String) key, entry.getValue());
                    } catch (ClassCastException e10) {
                        throw new d6.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e10);
                    }
                }
                this.f29273c.endObject();
                return this;
            }
            d6.d<?> dVar = this.f29274d.get(obj.getClass());
            if (dVar != null) {
                return v(dVar, obj, z10);
            }
            d6.f<?> fVar = this.f29275e.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return v(this.f29276f, obj, z10);
            }
            if (obj instanceof f) {
                i(((f) obj).h());
            } else {
                f(((Enum) obj).name());
            }
            return this;
        }
        if (obj instanceof byte[]) {
            return s((byte[]) obj);
        }
        this.f29273c.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i10 < length) {
                this.f29273c.value(r6[i10]);
                i10++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i10 < length2) {
                j(jArr[i10]);
                i10++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i10 < length3) {
                this.f29273c.value(dArr[i10]);
                i10++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i10 < length4) {
                this.f29273c.value(zArr[i10]);
                i10++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                k(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                k(obj2, false);
            }
        }
        this.f29273c.endArray();
        return this;
    }

    @Override // d6.g
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public e f(String str) throws IOException {
        y();
        this.f29273c.value(str);
        return this;
    }

    public e m(String str, double d10) throws IOException {
        y();
        this.f29273c.name(str);
        return h(d10);
    }

    public e n(String str, int i10) throws IOException {
        y();
        this.f29273c.name(str);
        return i(i10);
    }

    public e o(String str, long j10) throws IOException {
        y();
        this.f29273c.name(str);
        return j(j10);
    }

    public e p(String str, Object obj) throws IOException {
        return this.f29277g ? x(str, obj) : w(str, obj);
    }

    public e q(String str, boolean z10) throws IOException {
        y();
        this.f29273c.name(str);
        return g(z10);
    }

    @Override // d6.g
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public e g(boolean z10) throws IOException {
        y();
        this.f29273c.value(z10);
        return this;
    }

    public e s(byte[] bArr) throws IOException {
        y();
        if (bArr == null) {
            this.f29273c.nullValue();
        } else {
            this.f29273c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    void u() throws IOException {
        y();
        this.f29273c.flush();
    }

    e v(d6.d<Object> dVar, Object obj, boolean z10) throws IOException {
        if (!z10) {
            this.f29273c.beginObject();
        }
        dVar.a(obj, this);
        if (!z10) {
            this.f29273c.endObject();
        }
        return this;
    }
}
