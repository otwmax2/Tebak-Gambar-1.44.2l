package com.google.android.gms.internal.ads;

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
/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgra {
    public static final zzgra A;
    private static final /* synthetic */ zzgra[] B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzgra f19512r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzgra f19513s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzgra f19514t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzgra f19515u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzgra f19516v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzgra f19517w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzgra f19518x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzgra f19519y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzgra f19520z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Class f19521o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Class f19522p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f19523q;

    static {
        zzgra zzgraVar = new zzgra("VOID", 0, Void.class, Void.class, null);
        f19512r = zzgraVar;
        Class cls = Integer.TYPE;
        zzgra zzgraVar2 = new zzgra("INT", 1, cls, Integer.class, 0);
        f19513s = zzgraVar2;
        zzgra zzgraVar3 = new zzgra("LONG", 2, Long.TYPE, Long.class, 0L);
        f19514t = zzgraVar3;
        zzgra zzgraVar4 = new zzgra("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f19515u = zzgraVar4;
        zzgra zzgraVar5 = new zzgra("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f19516v = zzgraVar5;
        zzgra zzgraVar6 = new zzgra("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f19517w = zzgraVar6;
        zzgra zzgraVar7 = new zzgra("STRING", 6, String.class, String.class, BuildConfig.FLAVOR);
        f19518x = zzgraVar7;
        zzgra zzgraVar8 = new zzgra("BYTE_STRING", 7, zzgpe.class, zzgpe.class, zzgpe.f19379p);
        f19519y = zzgraVar8;
        zzgra zzgraVar9 = new zzgra("ENUM", 8, cls, Integer.class, null);
        f19520z = zzgraVar9;
        zzgra zzgraVar10 = new zzgra("MESSAGE", 9, Object.class, Object.class, null);
        A = zzgraVar10;
        B = new zzgra[]{zzgraVar, zzgraVar2, zzgraVar3, zzgraVar4, zzgraVar5, zzgraVar6, zzgraVar7, zzgraVar8, zzgraVar9, zzgraVar10};
    }

    private zzgra(String str, int i10, Class cls, Class cls2, Object obj) {
        this.f19521o = cls;
        this.f19522p = cls2;
        this.f19523q = obj;
    }

    public static zzgra[] values() {
        return (zzgra[]) B.clone();
    }

    public final Class c() {
        return this.f19522p;
    }
}
