package f6;

import d6.g;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: compiled from: JsonDataEncoderBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d implements e6.b<d> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final d6.d<Object> f29261e = new d6.d() { // from class: f6.a
        @Override // d6.d
        public final void a(Object obj, Object obj2) throws IOException {
            d.l(obj, (d6.e) obj2);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final d6.f<String> f29262f = new d6.f() { // from class: f6.c
        @Override // d6.f
        public final void a(Object obj, Object obj2) throws IOException {
            ((g) obj2).f((String) obj);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final d6.f<Boolean> f29263g = new d6.f() { // from class: f6.b
        @Override // d6.f
        public final void a(Object obj, Object obj2) throws IOException {
            d.n((Boolean) obj, (g) obj2);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final b f29264h = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, d6.d<?>> f29265a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, d6.f<?>> f29266b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d6.d<Object> f29267c = f29261e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29268d = false;

    /* JADX INFO: compiled from: JsonDataEncoderBuilder.java */
    class a implements d6.a {
        a() {
        }

        @Override // d6.a
        public void a(Object obj, Writer writer) throws IOException {
            e eVar = new e(writer, d.this.f29265a, d.this.f29266b, d.this.f29267c, d.this.f29268d);
            eVar.k(obj, false);
            eVar.u();
        }

        @Override // d6.a
        public String b(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    /* JADX INFO: compiled from: JsonDataEncoderBuilder.java */
    private static final class b implements d6.f<Date> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final DateFormat f29270a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f29270a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        @Override // d6.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Date date, g gVar) throws IOException {
            gVar.f(f29270a.format(date));
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public d() {
        p(String.class, f29262f);
        p(Boolean.class, f29263g);
        p(Date.class, f29264h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(Object obj, d6.e eVar) throws IOException {
        throw new d6.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Boolean bool, g gVar) throws IOException {
        gVar.g(bool.booleanValue());
    }

    public d6.a i() {
        return new a();
    }

    public d j(e6.a aVar) {
        aVar.a(this);
        return this;
    }

    public d k(boolean z10) {
        this.f29268d = z10;
        return this;
    }

    @Override // e6.b
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public <T> d a(Class<T> cls, d6.d<? super T> dVar) {
        this.f29265a.put(cls, dVar);
        this.f29266b.remove(cls);
        return this;
    }

    public <T> d p(Class<T> cls, d6.f<? super T> fVar) {
        this.f29266b.put(cls, fVar);
        this.f29265a.remove(cls);
        return this;
    }
}
