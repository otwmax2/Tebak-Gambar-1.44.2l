package g6;

import g6.h;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: ProtobufEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, d6.d<?>> f29923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, d6.f<?>> f29924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d6.d<Object> f29925c;

    /* JADX INFO: compiled from: ProtobufEncoder.java */
    public static final class a implements e6.b<a> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.d<Object> f29926d = new d6.d() { // from class: g6.g
            @Override // d6.d
            public final void a(Object obj, Object obj2) throws IOException {
                h.a.e(obj, (d6.e) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<Class<?>, d6.d<?>> f29927a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<Class<?>, d6.f<?>> f29928b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d6.d<Object> f29929c = f29926d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(Object obj, d6.e eVar) throws IOException {
            throw new d6.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public h c() {
            return new h(new HashMap(this.f29927a), new HashMap(this.f29928b), this.f29929c);
        }

        public a d(e6.a aVar) {
            aVar.a(this);
            return this;
        }

        @Override // e6.b
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public <U> a a(Class<U> cls, d6.d<? super U> dVar) {
            this.f29927a.put(cls, dVar);
            this.f29928b.remove(cls);
            return this;
        }
    }

    h(Map<Class<?>, d6.d<?>> map, Map<Class<?>, d6.f<?>> map2, d6.d<Object> dVar) {
        this.f29923a = map;
        this.f29924b = map2;
        this.f29925c = dVar;
    }

    public static a a() {
        return new a();
    }

    public void b(Object obj, OutputStream outputStream) throws IOException {
        new f(outputStream, this.f29923a, this.f29924b, this.f29925c).t(obj);
    }

    public byte[] c(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
