package wa;

import ja.b0;
import ja.s;
import ja.w;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ParameterHandler.java */
/* JADX INFO: loaded from: classes.dex */
abstract class i<T> {

    /* JADX INFO: compiled from: ParameterHandler.java */
    class a extends i<Iterable<T>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // wa.i
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(wa.k kVar, @Nullable Iterable<T> iterable) throws IOException {
            if (iterable == null) {
                return;
            }
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                i.this.a(kVar, it.next());
            }
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    class b extends i<Object> {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // wa.i
        void a(wa.k kVar, @Nullable Object obj) throws IOException {
            if (obj == null) {
                return;
            }
            int length = Array.getLength(obj);
            for (int i10 = 0; i10 < length; i10++) {
                i.this.a(kVar, Array.get(obj, i10));
            }
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class c<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final wa.e<T, b0> f36073a;

        c(wa.e<T, b0> eVar) {
            this.f36073a = eVar;
        }

        @Override // wa.i
        void a(wa.k kVar, @Nullable T t10) {
            if (t10 == null) {
                throw new IllegalArgumentException("Body parameter value must not be null.");
            }
            try {
                kVar.j(this.f36073a.convert(t10));
            } catch (IOException e10) {
                throw new RuntimeException("Unable to convert " + t10 + " to RequestBody", e10);
            }
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class d<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f36074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final wa.e<T, String> f36075b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f36076c;

        d(String str, wa.e<T, String> eVar, boolean z10) {
            this.f36074a = (String) wa.o.b(str, "name == null");
            this.f36075b = eVar;
            this.f36076c = z10;
        }

        @Override // wa.i
        void a(wa.k kVar, @Nullable T t10) throws IOException {
            String strConvert;
            if (t10 == null || (strConvert = this.f36075b.convert(t10)) == null) {
                return;
            }
            kVar.a(this.f36074a, strConvert, this.f36076c);
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class e<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final wa.e<T, String> f36077a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f36078b;

        e(wa.e<T, String> eVar, boolean z10) {
            this.f36077a = eVar;
            this.f36078b = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // wa.i
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(wa.k kVar, @Nullable Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Field map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Field map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Field map contained null value for key '" + key + "'.");
                }
                String strConvert = this.f36077a.convert(value);
                if (strConvert == null) {
                    throw new IllegalArgumentException("Field map value '" + value + "' converted to null by " + this.f36077a.getClass().getName() + " for key '" + key + "'.");
                }
                kVar.a(key, strConvert, this.f36078b);
            }
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class f<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f36079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final wa.e<T, String> f36080b;

        f(String str, wa.e<T, String> eVar) {
            this.f36079a = (String) wa.o.b(str, "name == null");
            this.f36080b = eVar;
        }

        @Override // wa.i
        void a(wa.k kVar, @Nullable T t10) throws IOException {
            String strConvert;
            if (t10 == null || (strConvert = this.f36080b.convert(t10)) == null) {
                return;
            }
            kVar.b(this.f36079a, strConvert);
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class g<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final wa.e<T, String> f36081a;

        g(wa.e<T, String> eVar) {
            this.f36081a = eVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // wa.i
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(wa.k kVar, @Nullable Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Header map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Header map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Header map contained null value for key '" + key + "'.");
                }
                kVar.b(key, this.f36081a.convert(value));
            }
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class h<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s f36082a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final wa.e<T, b0> f36083b;

        h(s sVar, wa.e<T, b0> eVar) {
            this.f36082a = sVar;
            this.f36083b = eVar;
        }

        @Override // wa.i
        void a(wa.k kVar, @Nullable T t10) {
            if (t10 == null) {
                return;
            }
            try {
                kVar.c(this.f36082a, this.f36083b.convert(t10));
            } catch (IOException e10) {
                throw new RuntimeException("Unable to convert " + t10 + " to RequestBody", e10);
            }
        }
    }

    /* JADX INFO: renamed from: wa.i$i, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class C0291i<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final wa.e<T, b0> f36084a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f36085b;

        C0291i(wa.e<T, b0> eVar, String str) {
            this.f36084a = eVar;
            this.f36085b = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // wa.i
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(wa.k kVar, @Nullable Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Part map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Part map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Part map contained null value for key '" + key + "'.");
                }
                kVar.c(s.g("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f36085b), this.f36084a.convert(value));
            }
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class j<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f36086a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final wa.e<T, String> f36087b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f36088c;

        j(String str, wa.e<T, String> eVar, boolean z10) {
            this.f36086a = (String) wa.o.b(str, "name == null");
            this.f36087b = eVar;
            this.f36088c = z10;
        }

        @Override // wa.i
        void a(wa.k kVar, @Nullable T t10) throws IOException {
            if (t10 != null) {
                kVar.e(this.f36086a, this.f36087b.convert(t10), this.f36088c);
                return;
            }
            throw new IllegalArgumentException("Path parameter \"" + this.f36086a + "\" value must not be null.");
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class k<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f36089a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final wa.e<T, String> f36090b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f36091c;

        k(String str, wa.e<T, String> eVar, boolean z10) {
            this.f36089a = (String) wa.o.b(str, "name == null");
            this.f36090b = eVar;
            this.f36091c = z10;
        }

        @Override // wa.i
        void a(wa.k kVar, @Nullable T t10) throws IOException {
            String strConvert;
            if (t10 == null || (strConvert = this.f36090b.convert(t10)) == null) {
                return;
            }
            kVar.f(this.f36089a, strConvert, this.f36091c);
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class l<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final wa.e<T, String> f36092a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f36093b;

        l(wa.e<T, String> eVar, boolean z10) {
            this.f36092a = eVar;
            this.f36093b = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // wa.i
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(wa.k kVar, @Nullable Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Query map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Query map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Query map contained null value for key '" + key + "'.");
                }
                String strConvert = this.f36092a.convert(value);
                if (strConvert == null) {
                    throw new IllegalArgumentException("Query map value '" + value + "' converted to null by " + this.f36092a.getClass().getName() + " for key '" + key + "'.");
                }
                kVar.f(key, strConvert, this.f36093b);
            }
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class m<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final wa.e<T, String> f36094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f36095b;

        m(wa.e<T, String> eVar, boolean z10) {
            this.f36094a = eVar;
            this.f36095b = z10;
        }

        @Override // wa.i
        void a(wa.k kVar, @Nullable T t10) throws IOException {
            if (t10 == null) {
                return;
            }
            kVar.f(this.f36094a.convert(t10), null, this.f36095b);
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class n extends i<w.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final n f36096a = new n();

        private n() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // wa.i
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(wa.k kVar, @Nullable w.b bVar) {
            if (bVar != null) {
                kVar.d(bVar);
            }
        }
    }

    /* JADX INFO: compiled from: ParameterHandler.java */
    static final class o extends i<Object> {
        o() {
        }

        @Override // wa.i
        void a(wa.k kVar, @Nullable Object obj) {
            wa.o.b(obj, "@Url parameter is null.");
            kVar.k(obj);
        }
    }

    i() {
    }

    abstract void a(wa.k kVar, @Nullable T t10) throws IOException;

    final i<Object> b() {
        return new b();
    }

    final i<Iterable<T>> c() {
        return new a();
    }
}
