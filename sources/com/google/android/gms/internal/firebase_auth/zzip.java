package com.google.android.gms.internal.firebase_auth;

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
/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzip {
    public static final zzip A;
    private static final /* synthetic */ zzip[] B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzip f22770r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzip f22771s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzip f22772t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzip f22773u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzip f22774v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzip f22775w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzip f22776x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzip f22777y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzip f22778z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Class<?> f22779o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Class<?> f22780p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f22781q;

    static {
        zzip zzipVar = new zzip("VOID", 0, Void.class, Void.class, null);
        f22770r = zzipVar;
        Class cls = Integer.TYPE;
        zzip zzipVar2 = new zzip("INT", 1, cls, Integer.class, 0);
        f22771s = zzipVar2;
        zzip zzipVar3 = new zzip("LONG", 2, Long.TYPE, Long.class, 0L);
        f22772t = zzipVar3;
        zzip zzipVar4 = new zzip("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f22773u = zzipVar4;
        zzip zzipVar5 = new zzip("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f22774v = zzipVar5;
        zzip zzipVar6 = new zzip("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f22775w = zzipVar6;
        zzip zzipVar7 = new zzip("STRING", 6, String.class, String.class, BuildConfig.FLAVOR);
        f22776x = zzipVar7;
        zzip zzipVar8 = new zzip("BYTE_STRING", 7, zzgv.class, zzgv.class, zzgv.f22647p);
        f22777y = zzipVar8;
        zzip zzipVar9 = new zzip("ENUM", 8, cls, Integer.class, null);
        f22778z = zzipVar9;
        zzip zzipVar10 = new zzip("MESSAGE", 9, Object.class, Object.class, null);
        A = zzipVar10;
        B = new zzip[]{zzipVar, zzipVar2, zzipVar3, zzipVar4, zzipVar5, zzipVar6, zzipVar7, zzipVar8, zzipVar9, zzipVar10};
    }

    private zzip(String str, int i10, Class cls, Class cls2, Object obj) {
        this.f22779o = cls;
        this.f22780p = cls2;
        this.f22781q = obj;
    }

    public static zzip[] values() {
        return (zzip[]) B.clone();
    }

    public final Class<?> c() {
        return this.f22780p;
    }
}
