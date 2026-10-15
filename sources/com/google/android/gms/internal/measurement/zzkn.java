package com.google.android.gms.internal.measurement;

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
/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkn {
    public static final zzkn A;
    private static final /* synthetic */ zzkn[] B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzkn f23669r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzkn f23670s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzkn f23671t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzkn f23672u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzkn f23673v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzkn f23674w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzkn f23675x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzkn f23676y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzkn f23677z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Class f23678o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Class f23679p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f23680q;

    static {
        zzkn zzknVar = new zzkn("VOID", 0, Void.class, Void.class, null);
        f23669r = zzknVar;
        Class cls = Integer.TYPE;
        zzkn zzknVar2 = new zzkn("INT", 1, cls, Integer.class, 0);
        f23670s = zzknVar2;
        zzkn zzknVar3 = new zzkn("LONG", 2, Long.TYPE, Long.class, 0L);
        f23671t = zzknVar3;
        zzkn zzknVar4 = new zzkn("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f23672u = zzknVar4;
        zzkn zzknVar5 = new zzkn("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f23673v = zzknVar5;
        zzkn zzknVar6 = new zzkn("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f23674w = zzknVar6;
        zzkn zzknVar7 = new zzkn("STRING", 6, String.class, String.class, BuildConfig.FLAVOR);
        f23675x = zzknVar7;
        zzkn zzknVar8 = new zzkn("BYTE_STRING", 7, zzjb.class, zzjb.class, zzjb.f23589p);
        f23676y = zzknVar8;
        zzkn zzknVar9 = new zzkn("ENUM", 8, cls, Integer.class, null);
        f23677z = zzknVar9;
        zzkn zzknVar10 = new zzkn("MESSAGE", 9, Object.class, Object.class, null);
        A = zzknVar10;
        B = new zzkn[]{zzknVar, zzknVar2, zzknVar3, zzknVar4, zzknVar5, zzknVar6, zzknVar7, zzknVar8, zzknVar9, zzknVar10};
    }

    private zzkn(String str, int i10, Class cls, Class cls2, Object obj) {
        this.f23678o = cls;
        this.f23679p = cls2;
        this.f23680q = obj;
    }

    public static zzkn[] values() {
        return (zzkn[]) B.clone();
    }

    public final Class c() {
        return this.f23679p;
    }
}
