package com.google.android.gms.internal.firebase_messaging;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import d6.b;
import d6.c;
import d6.d;
import d6.e;
import d6.f;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzab implements e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Charset f22970f = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final c f22971g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final c f22972h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final d<Map.Entry<Object, Object>> f22973i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OutputStream f22974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, d<?>> f22975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Class<?>, f<?>> f22976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d<Object> f22977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzaf f22978e = new zzaf(this);

    static {
        c.b bVarA = c.a(SDKConstants.PARAM_KEY);
        zzv zzvVar = new zzv();
        zzvVar.a(1);
        f22971g = bVarA.b(zzvVar.b()).a();
        c.b bVarA2 = c.a(SDKConstants.PARAM_VALUE);
        zzv zzvVar2 = new zzv();
        zzvVar2.a(2);
        f22972h = bVarA2.b(zzvVar2.b()).a();
        f22973i = zzaa.f22969a;
    }

    zzab(OutputStream outputStream, Map<Class<?>, d<?>> map, Map<Class<?>, f<?>> map2, d<Object> dVar) {
        this.f22974a = outputStream;
        this.f22975b = map;
        this.f22976c = map2;
        this.f22977d = dVar;
    }

    static final /* synthetic */ void l(Map.Entry entry, e eVar) throws IOException {
        eVar.e(f22971g, entry.getKey());
        eVar.e(f22972h, entry.getValue());
    }

    private final <T> zzab m(d<T> dVar, c cVar, T t10, boolean z10) throws IOException {
        long jN = n(dVar, t10);
        if (z10 && jN == 0) {
            return this;
        }
        s((q(cVar) << 3) | 2);
        t(jN);
        dVar.a(t10, this);
        return this;
    }

    private final <T> long n(d<T> dVar, T t10) throws IOException {
        zzw zzwVar = new zzw();
        try {
            OutputStream outputStream = this.f22974a;
            this.f22974a = zzwVar;
            try {
                dVar.a(t10, this);
                this.f22974a = outputStream;
                long jB = zzwVar.b();
                zzwVar.close();
                return jB;
            } catch (Throwable th) {
                this.f22974a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                zzwVar.close();
            } catch (Throwable th3) {
                zzt.a(th2, th3);
            }
            throw th2;
        }
    }

    private final <T> zzab o(f<T> fVar, c cVar, T t10, boolean z10) throws IOException {
        this.f22978e.a(cVar, z10);
        fVar.a(t10, this.f22978e);
        return this;
    }

    private static ByteBuffer p(int i10) {
        return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static int q(c cVar) {
        zzz zzzVar = (zzz) cVar.c(zzz.class);
        if (zzzVar != null) {
            return zzzVar.zza();
        }
        throw new b("Field has no @Protobuf config");
    }

    private static zzz r(c cVar) {
        zzz zzzVar = (zzz) cVar.c(zzz.class);
        if (zzzVar != null) {
            return zzzVar;
        }
        throw new b("Field has no @Protobuf config");
    }

    private final void s(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            this.f22974a.write((i10 & 127) | 128);
            i10 >>>= 7;
        }
        this.f22974a.write(i10 & 127);
    }

    private final void t(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.f22974a.write((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.f22974a.write(((int) j10) & 127);
    }

    @Override // d6.e
    public final /* bridge */ /* synthetic */ e a(c cVar, boolean z10) throws IOException {
        i(cVar, z10 ? 1 : 0, true);
        return this;
    }

    @Override // d6.e
    public final e b(c cVar, double d10) throws IOException {
        g(cVar, d10, true);
        return this;
    }

    @Override // d6.e
    public final /* bridge */ /* synthetic */ e c(c cVar, long j10) throws IOException {
        j(cVar, j10, true);
        return this;
    }

    @Override // d6.e
    public final /* bridge */ /* synthetic */ e d(c cVar, int i10) throws IOException {
        i(cVar, i10, true);
        return this;
    }

    @Override // d6.e
    public final e e(c cVar, Object obj) throws IOException {
        f(cVar, obj, true);
        return this;
    }

    final e f(c cVar, Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            s((q(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f22970f);
            s(bytes.length);
            this.f22974a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                f(cVar, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m(f22973i, cVar, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            g(cVar, ((Double) obj).doubleValue(), z10);
            return this;
        }
        if (obj instanceof Float) {
            h(cVar, ((Float) obj).floatValue(), z10);
            return this;
        }
        if (obj instanceof Number) {
            j(cVar, ((Number) obj).longValue(), z10);
            return this;
        }
        if (obj instanceof Boolean) {
            i(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z10);
            return this;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z10 && bArr.length == 0) {
                return this;
            }
            s((q(cVar) << 3) | 2);
            s(bArr.length);
            this.f22974a.write(bArr);
            return this;
        }
        d<?> dVar = this.f22975b.get(obj.getClass());
        if (dVar != null) {
            m(dVar, cVar, obj, z10);
            return this;
        }
        f<?> fVar = this.f22976c.get(obj.getClass());
        if (fVar != null) {
            o(fVar, cVar, obj, z10);
            return this;
        }
        if (obj instanceof zzx) {
            i(cVar, ((zzx) obj).h(), true);
            return this;
        }
        if (obj instanceof Enum) {
            i(cVar, ((Enum) obj).ordinal(), true);
            return this;
        }
        m(this.f22977d, cVar, obj, z10);
        return this;
    }

    final e g(c cVar, double d10, boolean z10) throws IOException {
        if (z10 && d10 == 0.0d) {
            return this;
        }
        s((q(cVar) << 3) | 1);
        this.f22974a.write(p(8).putDouble(d10).array());
        return this;
    }

    final e h(c cVar, float f10, boolean z10) throws IOException {
        if (z10 && f10 == 0.0f) {
            return this;
        }
        s((q(cVar) << 3) | 5);
        this.f22974a.write(p(4).putFloat(f10).array());
        return this;
    }

    final zzab i(c cVar, int i10, boolean z10) throws IOException {
        if (z10 && i10 == 0) {
            return this;
        }
        zzz zzzVarR = r(cVar);
        zzy zzyVar = zzy.DEFAULT;
        int iOrdinal = zzzVarR.zzb().ordinal();
        if (iOrdinal == 0) {
            s(zzzVarR.zza() << 3);
            s(i10);
        } else if (iOrdinal == 1) {
            s(zzzVarR.zza() << 3);
            s((i10 + i10) ^ (i10 >> 31));
        } else if (iOrdinal == 2) {
            s((zzzVarR.zza() << 3) | 5);
            this.f22974a.write(p(4).putInt(i10).array());
        }
        return this;
    }

    final zzab j(c cVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return this;
        }
        zzz zzzVarR = r(cVar);
        zzy zzyVar = zzy.DEFAULT;
        int iOrdinal = zzzVarR.zzb().ordinal();
        if (iOrdinal == 0) {
            s(zzzVarR.zza() << 3);
            t(j10);
        } else if (iOrdinal == 1) {
            s(zzzVarR.zza() << 3);
            t((j10 >> 63) ^ (j10 + j10));
        } else if (iOrdinal == 2) {
            s((zzzVarR.zza() << 3) | 1);
            this.f22974a.write(p(8).putLong(j10).array());
        }
        return this;
    }

    final zzab k(Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        d<?> dVar = this.f22975b.get(obj.getClass());
        if (dVar != null) {
            dVar.a(obj, this);
            return this;
        }
        String strValueOf = String.valueOf(obj.getClass());
        StringBuilder sb = new StringBuilder(strValueOf.length() + 15);
        sb.append("No encoder for ");
        sb.append(strValueOf);
        throw new b(sb.toString());
    }
}
