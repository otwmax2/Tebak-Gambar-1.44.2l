package j0;

import androidx.datastore.preferences.protobuf.k0;
import androidx.datastore.preferences.protobuf.l0;
import androidx.datastore.preferences.protobuf.s0;
import androidx.datastore.preferences.protobuf.t1;
import androidx.datastore.preferences.protobuf.y;
import androidx.datastore.preferences.protobuf.z0;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: PreferencesProto.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends y<f, a> implements s0 {
    private static final f DEFAULT_INSTANCE;
    private static volatile z0<f> PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private l0<String, h> preferences_ = l0.f();

    /* JADX INFO: compiled from: PreferencesProto.java */
    public static final class a extends y.a<f, a> implements s0 {
        /* synthetic */ a(e eVar) {
            this();
        }

        public a w(String str, h hVar) {
            Objects.requireNonNull(str);
            Objects.requireNonNull(hVar);
            r();
            ((f) this.f2968p).J().put(str, hVar);
            return this;
        }

        private a() {
            super(f.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: PreferencesProto.java */
    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final k0<String, h> f30575a = k0.d(t1.b.f2875y, BuildConfig.FLAVOR, t1.b.A, h.Q());
    }

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        y.F(f.class, fVar);
    }

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, h> J() {
        return L();
    }

    private l0<String, h> L() {
        if (!this.preferences_.l()) {
            this.preferences_ = this.preferences_.o();
        }
        return this.preferences_;
    }

    private l0<String, h> M() {
        return this.preferences_;
    }

    public static a N() {
        return DEFAULT_INSTANCE.q();
    }

    public static f O(InputStream inputStream) throws IOException {
        return (f) y.D(DEFAULT_INSTANCE, inputStream);
    }

    public Map<String, h> K() {
        return Collections.unmodifiableMap(M());
    }

    @Override // androidx.datastore.preferences.protobuf.y
    protected final Object t(y.f fVar, Object obj, Object obj2) {
        e eVar = null;
        switch (e.f30574a[fVar.ordinal()]) {
            case 1:
                return new f();
            case 2:
                return new a(eVar);
            case 3:
                return y.C(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", b.f30575a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                z0<f> bVar = PARSER;
                if (bVar == null) {
                    synchronized (f.class) {
                        bVar = PARSER;
                        if (bVar == null) {
                            bVar = new y.b<>(DEFAULT_INSTANCE);
                            PARSER = bVar;
                        }
                        break;
                    }
                }
                return bVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
