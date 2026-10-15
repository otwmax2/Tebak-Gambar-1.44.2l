package androidx.datastore.preferences.protobuf;

import com.vungle.mediation.BuildConfig;

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
/* JADX INFO: compiled from: JavaType.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 {
    public static final c0 A;
    private static final /* synthetic */ c0[] B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final c0 f2658r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final c0 f2659s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final c0 f2660t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final c0 f2661u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final c0 f2662v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final c0 f2663w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final c0 f2664x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final c0 f2665y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final c0 f2666z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Class<?> f2667o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Class<?> f2668p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f2669q;

    static {
        c0 c0Var = new c0("VOID", 0, Void.class, Void.class, null);
        f2658r = c0Var;
        Class cls = Integer.TYPE;
        c0 c0Var2 = new c0("INT", 1, cls, Integer.class, 0);
        f2659s = c0Var2;
        c0 c0Var3 = new c0("LONG", 2, Long.TYPE, Long.class, 0L);
        f2660t = c0Var3;
        c0 c0Var4 = new c0("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f2661u = c0Var4;
        c0 c0Var5 = new c0("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f2662v = c0Var5;
        c0 c0Var6 = new c0("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f2663w = c0Var6;
        c0 c0Var7 = new c0("STRING", 6, String.class, String.class, BuildConfig.FLAVOR);
        f2664x = c0Var7;
        c0 c0Var8 = new c0("BYTE_STRING", 7, h.class, h.class, h.f2704p);
        f2665y = c0Var8;
        c0 c0Var9 = new c0("ENUM", 8, cls, Integer.class, null);
        f2666z = c0Var9;
        c0 c0Var10 = new c0("MESSAGE", 9, Object.class, Object.class, null);
        A = c0Var10;
        B = new c0[]{c0Var, c0Var2, c0Var3, c0Var4, c0Var5, c0Var6, c0Var7, c0Var8, c0Var9, c0Var10};
    }

    private c0(String str, int i10, Class cls, Class cls2, Object obj) {
        this.f2667o = cls;
        this.f2668p = cls2;
        this.f2669q = obj;
    }

    public static c0 valueOf(String str) {
        return (c0) Enum.valueOf(c0.class, str);
    }

    public static c0[] values() {
        return (c0[]) B.clone();
    }

    public Class<?> c() {
        return this.f2668p;
    }
}
