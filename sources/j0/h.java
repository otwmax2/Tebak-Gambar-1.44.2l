package j0;

import androidx.datastore.preferences.protobuf.s0;
import androidx.datastore.preferences.protobuf.y;
import androidx.datastore.preferences.protobuf.z0;
import com.vungle.mediation.BuildConfig;
import j0.g;
import java.util.Objects;

/* JADX INFO: compiled from: PreferencesProto.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends y<h, a> implements s0 {
    public static final int BOOLEAN_FIELD_NUMBER = 1;
    private static final h DEFAULT_INSTANCE;
    public static final int DOUBLE_FIELD_NUMBER = 7;
    public static final int FLOAT_FIELD_NUMBER = 2;
    public static final int INTEGER_FIELD_NUMBER = 3;
    public static final int LONG_FIELD_NUMBER = 4;
    private static volatile z0<h> PARSER = null;
    public static final int STRING_FIELD_NUMBER = 5;
    public static final int STRING_SET_FIELD_NUMBER = 6;
    private int bitField0_;
    private int valueCase_ = 0;
    private Object value_;

    /* JADX INFO: compiled from: PreferencesProto.java */
    public static final class a extends y.a<h, a> implements s0 {
        /* synthetic */ a(e eVar) {
            this();
        }

        public a A(long j10) {
            r();
            ((h) this.f2968p).d0(j10);
            return this;
        }

        public a B(String str) {
            r();
            ((h) this.f2968p).e0(str);
            return this;
        }

        public a C(g.a aVar) {
            r();
            ((h) this.f2968p).f0(aVar);
            return this;
        }

        public a w(boolean z10) {
            r();
            ((h) this.f2968p).Z(z10);
            return this;
        }

        public a x(double d10) {
            r();
            ((h) this.f2968p).a0(d10);
            return this;
        }

        public a y(float f10) {
            r();
            ((h) this.f2968p).b0(f10);
            return this;
        }

        public a z(int i10) {
            r();
            ((h) this.f2968p).c0(i10);
            return this;
        }

        private a() {
            super(h.DEFAULT_INSTANCE);
        }
    }

    /* JADX INFO: compiled from: PreferencesProto.java */
    public enum b {
        BOOLEAN(1),
        FLOAT(2),
        INTEGER(3),
        LONG(4),
        STRING(5),
        STRING_SET(6),
        DOUBLE(7),
        VALUE_NOT_SET(0);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f30585o;

        b(int i10) {
            this.f30585o = i10;
        }

        public static b c(int i10) {
            switch (i10) {
                case 0:
                    return VALUE_NOT_SET;
                case 1:
                    return BOOLEAN;
                case 2:
                    return FLOAT;
                case 3:
                    return INTEGER;
                case 4:
                    return LONG;
                case 5:
                    return STRING;
                case 6:
                    return STRING_SET;
                case 7:
                    return DOUBLE;
                default:
                    return null;
            }
        }
    }

    static {
        h hVar = new h();
        DEFAULT_INSTANCE = hVar;
        y.F(h.class, hVar);
    }

    private h() {
    }

    public static h Q() {
        return DEFAULT_INSTANCE;
    }

    public static a Y() {
        return DEFAULT_INSTANCE.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(boolean z10) {
        this.valueCase_ = 1;
        this.value_ = Boolean.valueOf(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(double d10) {
        this.valueCase_ = 7;
        this.value_ = Double.valueOf(d10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(float f10) {
        this.valueCase_ = 2;
        this.value_ = Float.valueOf(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(int i10) {
        this.valueCase_ = 3;
        this.value_ = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(long j10) {
        this.valueCase_ = 4;
        this.value_ = Long.valueOf(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(String str) {
        Objects.requireNonNull(str);
        this.valueCase_ = 5;
        this.value_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(g.a aVar) {
        this.value_ = aVar.build();
        this.valueCase_ = 6;
    }

    public boolean P() {
        if (this.valueCase_ == 1) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }

    public double R() {
        if (this.valueCase_ == 7) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    public float S() {
        if (this.valueCase_ == 2) {
            return ((Float) this.value_).floatValue();
        }
        return 0.0f;
    }

    public int T() {
        if (this.valueCase_ == 3) {
            return ((Integer) this.value_).intValue();
        }
        return 0;
    }

    public long U() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    public String V() {
        return this.valueCase_ == 5 ? (String) this.value_ : BuildConfig.FLAVOR;
    }

    public g W() {
        return this.valueCase_ == 6 ? (g) this.value_ : g.L();
    }

    public b X() {
        return b.c(this.valueCase_);
    }

    @Override // androidx.datastore.preferences.protobuf.y
    protected final Object t(y.f fVar, Object obj, Object obj2) {
        e eVar = null;
        switch (e.f30574a[fVar.ordinal()]) {
            case 1:
                return new h();
            case 2:
                return new a(eVar);
            case 3:
                return y.C(DEFAULT_INSTANCE, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000", new Object[]{"value_", "valueCase_", "bitField0_", g.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                z0<h> bVar = PARSER;
                if (bVar == null) {
                    synchronized (h.class) {
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
