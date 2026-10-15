package com.google.android.gms.internal.auth;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'r' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhe {
    public static final zzhe A;
    public static final zzhe B;
    public static final zzhe C;
    public static final zzhe D;
    public static final zzhe E;
    public static final zzhe F;
    public static final zzhe G;
    private static final /* synthetic */ zzhe[] H;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzhe f21588p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzhe f21589q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzhe f21590r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzhe f21591s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzhe f21592t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzhe f21593u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzhe f21594v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzhe f21595w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzhe f21596x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzhe f21597y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzhe f21598z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzhf f21599o;

    static {
        zzhe zzheVar = new zzhe("DOUBLE", 0, zzhf.DOUBLE, 1);
        f21588p = zzheVar;
        zzhe zzheVar2 = new zzhe("FLOAT", 1, zzhf.FLOAT, 5);
        f21589q = zzheVar2;
        zzhf zzhfVar = zzhf.LONG;
        zzhe zzheVar3 = new zzhe("INT64", 2, zzhfVar, 0);
        f21590r = zzheVar3;
        zzhe zzheVar4 = new zzhe("UINT64", 3, zzhfVar, 0);
        f21591s = zzheVar4;
        zzhf zzhfVar2 = zzhf.INT;
        zzhe zzheVar5 = new zzhe("INT32", 4, zzhfVar2, 0);
        f21592t = zzheVar5;
        zzhe zzheVar6 = new zzhe("FIXED64", 5, zzhfVar, 1);
        f21593u = zzheVar6;
        zzhe zzheVar7 = new zzhe("FIXED32", 6, zzhfVar2, 5);
        f21594v = zzheVar7;
        zzhe zzheVar8 = new zzhe("BOOL", 7, zzhf.BOOLEAN, 0);
        f21595w = zzheVar8;
        zzhe zzheVar9 = new zzhe("STRING", 8, zzhf.STRING, 2);
        f21596x = zzheVar9;
        zzhf zzhfVar3 = zzhf.MESSAGE;
        zzhe zzheVar10 = new zzhe("GROUP", 9, zzhfVar3, 3);
        f21597y = zzheVar10;
        zzhe zzheVar11 = new zzhe("MESSAGE", 10, zzhfVar3, 2);
        f21598z = zzheVar11;
        zzhe zzheVar12 = new zzhe("BYTES", 11, zzhf.BYTE_STRING, 2);
        A = zzheVar12;
        zzhe zzheVar13 = new zzhe("UINT32", 12, zzhfVar2, 0);
        B = zzheVar13;
        zzhe zzheVar14 = new zzhe("ENUM", 13, zzhf.ENUM, 0);
        C = zzheVar14;
        zzhe zzheVar15 = new zzhe("SFIXED32", 14, zzhfVar2, 5);
        D = zzheVar15;
        zzhe zzheVar16 = new zzhe("SFIXED64", 15, zzhfVar, 1);
        E = zzheVar16;
        zzhe zzheVar17 = new zzhe("SINT32", 16, zzhfVar2, 0);
        F = zzheVar17;
        zzhe zzheVar18 = new zzhe("SINT64", 17, zzhfVar, 0);
        G = zzheVar18;
        H = new zzhe[]{zzheVar, zzheVar2, zzheVar3, zzheVar4, zzheVar5, zzheVar6, zzheVar7, zzheVar8, zzheVar9, zzheVar10, zzheVar11, zzheVar12, zzheVar13, zzheVar14, zzheVar15, zzheVar16, zzheVar17, zzheVar18};
    }

    private zzhe(String str, int i10, zzhf zzhfVar, int i11) {
        this.f21599o = zzhfVar;
    }

    public static zzhe[] values() {
        return (zzhe[]) H.clone();
    }

    public final zzhf c() {
        return this.f21599o;
    }
}
