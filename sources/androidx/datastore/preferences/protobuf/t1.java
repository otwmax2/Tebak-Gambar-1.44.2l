package androidx.datastore.preferences.protobuf;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: WireFormat.java */
/* JADX INFO: loaded from: classes.dex */
public final class t1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f2863a = c(1, 3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f2864b = c(1, 4);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int f2865c = c(2, 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int f2866d = c(3, 2);

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 's' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: compiled from: WireFormat.java */
    public static class b {
        public static final b A;
        public static final b B;
        public static final b C;
        public static final b D;
        public static final b E;
        public static final b F;
        public static final b G;
        public static final b H;
        private static final /* synthetic */ b[] I;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final b f2867q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final b f2868r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final b f2869s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static final b f2870t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static final b f2871u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static final b f2872v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final b f2873w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final b f2874x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final b f2875y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static final b f2876z;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final c f2877o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final int f2878p;

        /* JADX INFO: compiled from: WireFormat.java */
        enum a extends b {
            a(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.t1$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: WireFormat.java */
        enum C0047b extends b {
            C0047b(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        /* JADX INFO: compiled from: WireFormat.java */
        enum c extends b {
            c(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        /* JADX INFO: compiled from: WireFormat.java */
        enum d extends b {
            d(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        static {
            b bVar = new b("DOUBLE", 0, c.DOUBLE, 1);
            f2867q = bVar;
            b bVar2 = new b("FLOAT", 1, c.FLOAT, 5);
            f2868r = bVar2;
            c cVar = c.LONG;
            b bVar3 = new b("INT64", 2, cVar, 0);
            f2869s = bVar3;
            b bVar4 = new b("UINT64", 3, cVar, 0);
            f2870t = bVar4;
            c cVar2 = c.INT;
            b bVar5 = new b("INT32", 4, cVar2, 0);
            f2871u = bVar5;
            b bVar6 = new b("FIXED64", 5, cVar, 1);
            f2872v = bVar6;
            b bVar7 = new b("FIXED32", 6, cVar2, 5);
            f2873w = bVar7;
            b bVar8 = new b("BOOL", 7, c.BOOLEAN, 0);
            f2874x = bVar8;
            a aVar = new a("STRING", 8, c.STRING, 2);
            f2875y = aVar;
            c cVar3 = c.MESSAGE;
            C0047b c0047b = new C0047b("GROUP", 9, cVar3, 3);
            f2876z = c0047b;
            c cVar4 = new c("MESSAGE", 10, cVar3, 2);
            A = cVar4;
            d dVar = new d("BYTES", 11, c.BYTE_STRING, 2);
            B = dVar;
            b bVar9 = new b("UINT32", 12, cVar2, 0);
            C = bVar9;
            b bVar10 = new b("ENUM", 13, c.ENUM, 0);
            D = bVar10;
            b bVar11 = new b("SFIXED32", 14, cVar2, 5);
            E = bVar11;
            b bVar12 = new b("SFIXED64", 15, cVar, 1);
            F = bVar12;
            b bVar13 = new b("SINT32", 16, cVar2, 0);
            G = bVar13;
            b bVar14 = new b("SINT64", 17, cVar, 0);
            H = bVar14;
            I = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, aVar, c0047b, cVar4, dVar, bVar9, bVar10, bVar11, bVar12, bVar13, bVar14};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) I.clone();
        }

        public c c() {
            return this.f2877o;
        }

        public int e() {
            return this.f2878p;
        }

        private b(String str, int i10, c cVar, int i11) {
            this.f2877o = cVar;
            this.f2878p = i11;
        }
    }

    /* JADX INFO: compiled from: WireFormat.java */
    public enum c {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(BuildConfig.FLAVOR),
        BYTE_STRING(h.f2704p),
        ENUM(null),
        MESSAGE(null);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Object f2889o;

        c(Object obj) {
            this.f2889o = obj;
        }
    }

    public static int a(int i10) {
        return i10 >>> 3;
    }

    public static int b(int i10) {
        return i10 & 7;
    }

    static int c(int i10, int i11) {
        return (i10 << 3) | i11;
    }
}
