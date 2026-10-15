package g6;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import g6.d;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: ProtobufDataEncoderContext.java */
/* JADX INFO: loaded from: classes2.dex */
final class f implements d6.e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Charset f29912f = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final d6.c f29913g = d6.c.a(SDKConstants.PARAM_KEY).b(g6.a.b().c(1).a()).a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final d6.c f29914h = d6.c.a(SDKConstants.PARAM_VALUE).b(g6.a.b().c(2).a()).a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final d6.d<Map.Entry<Object, Object>> f29915i = new d6.d() { // from class: g6.e
        @Override // d6.d
        public final void a(Object obj, Object obj2) throws IOException {
            f.w((Map.Entry) obj, (d6.e) obj2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OutputStream f29916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, d6.d<?>> f29917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Class<?>, d6.f<?>> f29918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d6.d<Object> f29919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i f29920e = new i(this);

    /* JADX INFO: compiled from: ProtobufDataEncoderContext.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f29921a;

        static {
            int[] iArr = new int[d.a.values().length];
            f29921a = iArr;
            try {
                iArr[d.a.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29921a[d.a.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29921a[d.a.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    f(OutputStream outputStream, Map<Class<?>, d6.d<?>> map, Map<Class<?>, d6.f<?>> map2, d6.d<Object> dVar) {
        this.f29916a = outputStream;
        this.f29917b = map;
        this.f29918c = map2;
        this.f29919d = dVar;
    }

    private static ByteBuffer p(int i10) {
        return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
    }

    private <T> long q(d6.d<T> dVar, T t10) throws IOException {
        b bVar = new b();
        try {
            OutputStream outputStream = this.f29916a;
            this.f29916a = bVar;
            try {
                dVar.a(t10, this);
                this.f29916a = outputStream;
                long jB = bVar.b();
                bVar.close();
                return jB;
            } catch (Throwable th) {
                this.f29916a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private <T> f r(d6.d<T> dVar, d6.c cVar, T t10, boolean z10) throws IOException {
        long jQ = q(dVar, t10);
        if (z10 && jQ == 0) {
            return this;
        }
        x((v(cVar) << 3) | 2);
        y(jQ);
        dVar.a(t10, this);
        return this;
    }

    private <T> f s(d6.f<T> fVar, d6.c cVar, T t10, boolean z10) throws IOException {
        this.f29920e.b(cVar, z10);
        fVar.a(t10, this.f29920e);
        return this;
    }

    private static d u(d6.c cVar) {
        d dVar = (d) cVar.c(d.class);
        if (dVar != null) {
            return dVar;
        }
        throw new d6.b("Field has no @Protobuf config");
    }

    private static int v(d6.c cVar) {
        d dVar = (d) cVar.c(d.class);
        if (dVar != null) {
            return dVar.tag();
        }
        throw new d6.b("Field has no @Protobuf config");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(Map.Entry entry, d6.e eVar) throws IOException {
        eVar.e(f29913g, entry.getKey());
        eVar.e(f29914h, entry.getValue());
    }

    private void x(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            this.f29916a.write((i10 & 127) | 128);
            i10 >>>= 7;
        }
        this.f29916a.write(i10 & 127);
    }

    private void y(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.f29916a.write((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.f29916a.write(((int) j10) & 127);
    }

    @Override // d6.e
    public d6.e b(d6.c cVar, double d10) throws IOException {
        return g(cVar, d10, true);
    }

    @Override // d6.e
    public d6.e e(d6.c cVar, Object obj) throws IOException {
        return i(cVar, obj, true);
    }

    d6.e g(d6.c cVar, double d10, boolean z10) throws IOException {
        if (z10 && d10 == 0.0d) {
            return this;
        }
        x((v(cVar) << 3) | 1);
        this.f29916a.write(p(8).putDouble(d10).array());
        return this;
    }

    d6.e h(d6.c cVar, float f10, boolean z10) throws IOException {
        if (z10 && f10 == 0.0f) {
            return this;
        }
        x((v(cVar) << 3) | 5);
        this.f29916a.write(p(4).putFloat(f10).array());
        return this;
    }

    d6.e i(d6.c cVar, Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            x((v(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f29912f);
            x(bytes.length);
            this.f29916a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                i(cVar, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                r(f29915i, cVar, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            return g(cVar, ((Double) obj).doubleValue(), z10);
        }
        if (obj instanceof Float) {
            return h(cVar, ((Float) obj).floatValue(), z10);
        }
        if (obj instanceof Number) {
            return m(cVar, ((Number) obj).longValue(), z10);
        }
        if (obj instanceof Boolean) {
            return o(cVar, ((Boolean) obj).booleanValue(), z10);
        }
        if (!(obj instanceof byte[])) {
            d6.d<?> dVar = this.f29917b.get(obj.getClass());
            if (dVar != null) {
                return r(dVar, cVar, obj, z10);
            }
            d6.f<?> fVar = this.f29918c.get(obj.getClass());
            return fVar != null ? s(fVar, cVar, obj, z10) : obj instanceof c ? d(cVar, ((c) obj).h()) : obj instanceof Enum ? d(cVar, ((Enum) obj).ordinal()) : r(this.f29919d, cVar, obj, z10);
        }
        byte[] bArr = (byte[]) obj;
        if (z10 && bArr.length == 0) {
            return this;
        }
        x((v(cVar) << 3) | 2);
        x(bArr.length);
        this.f29916a.write(bArr);
        return this;
    }

    @Override // d6.e
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public f d(d6.c cVar, int i10) throws IOException {
        return k(cVar, i10, true);
    }

    f k(d6.c cVar, int i10, boolean z10) throws IOException {
        if (z10 && i10 == 0) {
            return this;
        }
        d dVarU = u(cVar);
        int i11 = a.f29921a[dVarU.intEncoding().ordinal()];
        if (i11 == 1) {
            x(dVarU.tag() << 3);
            x(i10);
        } else if (i11 == 2) {
            x(dVarU.tag() << 3);
            x((i10 << 1) ^ (i10 >> 31));
        } else if (i11 == 3) {
            x((dVarU.tag() << 3) | 5);
            this.f29916a.write(p(4).putInt(i10).array());
        }
        return this;
    }

    @Override // d6.e
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public f c(d6.c cVar, long j10) throws IOException {
        return m(cVar, j10, true);
    }

    f m(d6.c cVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return this;
        }
        d dVarU = u(cVar);
        int i10 = a.f29921a[dVarU.intEncoding().ordinal()];
        if (i10 == 1) {
            x(dVarU.tag() << 3);
            y(j10);
        } else if (i10 == 2) {
            x(dVarU.tag() << 3);
            y((j10 >> 63) ^ (j10 << 1));
        } else if (i10 == 3) {
            x((dVarU.tag() << 3) | 1);
            this.f29916a.write(p(8).putLong(j10).array());
        }
        return this;
    }

    @Override // d6.e
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public f a(d6.c cVar, boolean z10) throws IOException {
        return o(cVar, z10, true);
    }

    f o(d6.c cVar, boolean z10, boolean z11) throws IOException {
        return k(cVar, z10 ? 1 : 0, z11);
    }

    f t(Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        d6.d<?> dVar = this.f29917b.get(obj.getClass());
        if (dVar != null) {
            dVar.a(obj, this);
            return this;
        }
        throw new d6.b("No encoder for " + obj.getClass());
    }
}
