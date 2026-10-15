package com.google.android.gms.internal.measurement;

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
/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zznb {
    public static final zznb A;
    public static final zznb B;
    public static final zznb C;
    public static final zznb D;
    public static final zznb E;
    public static final zznb F;
    public static final zznb G;
    private static final /* synthetic */ zznb[] H;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zznb f23778p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zznb f23779q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zznb f23780r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zznb f23781s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zznb f23782t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zznb f23783u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zznb f23784v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zznb f23785w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zznb f23786x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zznb f23787y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zznb f23788z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zznc f23789o;

    static {
        zznb zznbVar = new zznb("DOUBLE", 0, zznc.DOUBLE, 1);
        f23778p = zznbVar;
        zznb zznbVar2 = new zznb("FLOAT", 1, zznc.FLOAT, 5);
        f23779q = zznbVar2;
        zznc zzncVar = zznc.LONG;
        zznb zznbVar3 = new zznb("INT64", 2, zzncVar, 0);
        f23780r = zznbVar3;
        zznb zznbVar4 = new zznb("UINT64", 3, zzncVar, 0);
        f23781s = zznbVar4;
        zznc zzncVar2 = zznc.INT;
        zznb zznbVar5 = new zznb("INT32", 4, zzncVar2, 0);
        f23782t = zznbVar5;
        zznb zznbVar6 = new zznb("FIXED64", 5, zzncVar, 1);
        f23783u = zznbVar6;
        zznb zznbVar7 = new zznb("FIXED32", 6, zzncVar2, 5);
        f23784v = zznbVar7;
        zznb zznbVar8 = new zznb("BOOL", 7, zznc.BOOLEAN, 0);
        f23785w = zznbVar8;
        zznb zznbVar9 = new zznb("STRING", 8, zznc.STRING, 2);
        f23786x = zznbVar9;
        zznc zzncVar3 = zznc.MESSAGE;
        zznb zznbVar10 = new zznb("GROUP", 9, zzncVar3, 3);
        f23787y = zznbVar10;
        zznb zznbVar11 = new zznb("MESSAGE", 10, zzncVar3, 2);
        f23788z = zznbVar11;
        zznb zznbVar12 = new zznb("BYTES", 11, zznc.BYTE_STRING, 2);
        A = zznbVar12;
        zznb zznbVar13 = new zznb("UINT32", 12, zzncVar2, 0);
        B = zznbVar13;
        zznb zznbVar14 = new zznb("ENUM", 13, zznc.ENUM, 0);
        C = zznbVar14;
        zznb zznbVar15 = new zznb("SFIXED32", 14, zzncVar2, 5);
        D = zznbVar15;
        zznb zznbVar16 = new zznb("SFIXED64", 15, zzncVar, 1);
        E = zznbVar16;
        zznb zznbVar17 = new zznb("SINT32", 16, zzncVar2, 0);
        F = zznbVar17;
        zznb zznbVar18 = new zznb("SINT64", 17, zzncVar, 0);
        G = zznbVar18;
        H = new zznb[]{zznbVar, zznbVar2, zznbVar3, zznbVar4, zznbVar5, zznbVar6, zznbVar7, zznbVar8, zznbVar9, zznbVar10, zznbVar11, zznbVar12, zznbVar13, zznbVar14, zznbVar15, zznbVar16, zznbVar17, zznbVar18};
    }

    private zznb(String str, int i10, zznc zzncVar, int i11) {
        this.f23789o = zzncVar;
    }

    public static zznb[] values() {
        return (zznb[]) H.clone();
    }

    public final zznc c() {
        return this.f23789o;
    }
}
