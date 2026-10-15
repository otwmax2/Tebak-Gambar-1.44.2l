package k0;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import h0.k;
import h9.l;
import i9.t;
import j0.f;
import j0.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import k0.d;
import t9.m;

/* JADX INFO: compiled from: PreferencesSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h implements k<d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f31290a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f31291b = "preferences_pb";

    /* JADX INFO: compiled from: PreferencesSerializer.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f31292a;

        static {
            int[] iArr = new int[h.b.values().length];
            iArr[h.b.BOOLEAN.ordinal()] = 1;
            iArr[h.b.FLOAT.ordinal()] = 2;
            iArr[h.b.DOUBLE.ordinal()] = 3;
            iArr[h.b.INTEGER.ordinal()] = 4;
            iArr[h.b.LONG.ordinal()] = 5;
            iArr[h.b.STRING.ordinal()] = 6;
            iArr[h.b.STRING_SET.ordinal()] = 7;
            iArr[h.b.VALUE_NOT_SET.ordinal()] = 8;
            f31292a = iArr;
        }
    }

    private h() {
    }

    private final void d(String str, j0.h hVar, k0.a aVar) throws h0.a {
        h.b bVarX = hVar.X();
        switch (bVarX == null ? -1 : a.f31292a[bVarX.ordinal()]) {
            case -1:
                throw new h0.a("Value case is null.", null, 2, null);
            case 0:
            default:
                throw new l();
            case 1:
                aVar.i(f.a(str), Boolean.valueOf(hVar.P()));
                return;
            case 2:
                aVar.i(f.c(str), Float.valueOf(hVar.S()));
                return;
            case 3:
                aVar.i(f.b(str), Double.valueOf(hVar.R()));
                return;
            case 4:
                aVar.i(f.d(str), Integer.valueOf(hVar.T()));
                return;
            case 5:
                aVar.i(f.e(str), Long.valueOf(hVar.U()));
                return;
            case 6:
                d.a<String> aVarF = f.f(str);
                String strV = hVar.V();
                m.d(strV, "value.string");
                aVar.i(aVarF, strV);
                return;
            case 7:
                d.a<Set<String>> aVarG = f.g(str);
                List<String> listM = hVar.W().M();
                m.d(listM, "value.stringSet.stringsList");
                aVar.i(aVarG, t.S(listM));
                return;
            case 8:
                throw new h0.a("Value not set.", null, 2, null);
        }
    }

    private final j0.h g(Object obj) {
        if (obj instanceof Boolean) {
            j0.h hVarBuild = j0.h.Y().w(((Boolean) obj).booleanValue()).build();
            m.d(hVarBuild, "newBuilder().setBoolean(value).build()");
            return hVarBuild;
        }
        if (obj instanceof Float) {
            j0.h hVarBuild2 = j0.h.Y().y(((Number) obj).floatValue()).build();
            m.d(hVarBuild2, "newBuilder().setFloat(value).build()");
            return hVarBuild2;
        }
        if (obj instanceof Double) {
            j0.h hVarBuild3 = j0.h.Y().x(((Number) obj).doubleValue()).build();
            m.d(hVarBuild3, "newBuilder().setDouble(value).build()");
            return hVarBuild3;
        }
        if (obj instanceof Integer) {
            j0.h hVarBuild4 = j0.h.Y().z(((Number) obj).intValue()).build();
            m.d(hVarBuild4, "newBuilder().setInteger(value).build()");
            return hVarBuild4;
        }
        if (obj instanceof Long) {
            j0.h hVarBuild5 = j0.h.Y().A(((Number) obj).longValue()).build();
            m.d(hVarBuild5, "newBuilder().setLong(value).build()");
            return hVarBuild5;
        }
        if (obj instanceof String) {
            j0.h hVarBuild6 = j0.h.Y().B((String) obj).build();
            m.d(hVarBuild6, "newBuilder().setString(value).build()");
            return hVarBuild6;
        }
        if (!(obj instanceof Set)) {
            throw new IllegalStateException(m.k("PreferencesSerializer does not support type: ", obj.getClass().getName()));
        }
        j0.h hVarBuild7 = j0.h.Y().C(j0.g.N().w((Set) obj)).build();
        m.d(hVarBuild7, "newBuilder().setStringSet(\n                    StringSet.newBuilder().addAllStrings(value as Set<String>)\n                ).build()");
        return hVarBuild7;
    }

    @Override // h0.k
    public Object b(InputStream inputStream, k9.d<? super d> dVar) throws IOException {
        j0.f fVarA = j0.d.f30573a.a(inputStream);
        k0.a aVarB = e.b(new d.b[0]);
        Map<String, j0.h> mapK = fVarA.K();
        m.d(mapK, "preferencesProto.preferencesMap");
        for (Map.Entry<String, j0.h> entry : mapK.entrySet()) {
            String key = entry.getKey();
            j0.h value = entry.getValue();
            h hVar = f31290a;
            m.d(key, "name");
            m.d(value, SDKConstants.PARAM_VALUE);
            hVar.d(key, value, aVarB);
        }
        return aVarB.d();
    }

    @Override // h0.k
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public d a() {
        return e.a();
    }

    public final String f() {
        return f31291b;
    }

    @Override // h0.k
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Object c(d dVar, OutputStream outputStream, k9.d<? super h9.t> dVar2) throws IOException {
        Map<d.a<?>, Object> mapA = dVar.a();
        f.a aVarN = j0.f.N();
        for (Map.Entry<d.a<?>, Object> entry : mapA.entrySet()) {
            aVarN.w(entry.getKey().a(), g(entry.getValue()));
        }
        aVarN.build().n(outputStream);
        return h9.t.f30301a;
    }
}
