package com.google.android.gms.internal.ads;

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
/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgtw {
    public static final zzgtw A;
    public static final zzgtw B;
    public static final zzgtw C;
    public static final zzgtw D;
    public static final zzgtw E;
    public static final zzgtw F;
    public static final zzgtw G;
    private static final /* synthetic */ zzgtw[] H;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzgtw f19638p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzgtw f19639q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzgtw f19640r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzgtw f19641s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzgtw f19642t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzgtw f19643u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzgtw f19644v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzgtw f19645w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzgtw f19646x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzgtw f19647y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzgtw f19648z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzgtx f19649o;

    static {
        zzgtw zzgtwVar = new zzgtw("DOUBLE", 0, zzgtx.DOUBLE, 1);
        f19638p = zzgtwVar;
        zzgtw zzgtwVar2 = new zzgtw("FLOAT", 1, zzgtx.FLOAT, 5);
        f19639q = zzgtwVar2;
        zzgtx zzgtxVar = zzgtx.LONG;
        zzgtw zzgtwVar3 = new zzgtw("INT64", 2, zzgtxVar, 0);
        f19640r = zzgtwVar3;
        zzgtw zzgtwVar4 = new zzgtw("UINT64", 3, zzgtxVar, 0);
        f19641s = zzgtwVar4;
        zzgtx zzgtxVar2 = zzgtx.INT;
        zzgtw zzgtwVar5 = new zzgtw("INT32", 4, zzgtxVar2, 0);
        f19642t = zzgtwVar5;
        zzgtw zzgtwVar6 = new zzgtw("FIXED64", 5, zzgtxVar, 1);
        f19643u = zzgtwVar6;
        zzgtw zzgtwVar7 = new zzgtw("FIXED32", 6, zzgtxVar2, 5);
        f19644v = zzgtwVar7;
        zzgtw zzgtwVar8 = new zzgtw("BOOL", 7, zzgtx.BOOLEAN, 0);
        f19645w = zzgtwVar8;
        zzgtw zzgtwVar9 = new zzgtw("STRING", 8, zzgtx.STRING, 2);
        f19646x = zzgtwVar9;
        zzgtx zzgtxVar3 = zzgtx.MESSAGE;
        zzgtw zzgtwVar10 = new zzgtw("GROUP", 9, zzgtxVar3, 3);
        f19647y = zzgtwVar10;
        zzgtw zzgtwVar11 = new zzgtw("MESSAGE", 10, zzgtxVar3, 2);
        f19648z = zzgtwVar11;
        zzgtw zzgtwVar12 = new zzgtw("BYTES", 11, zzgtx.BYTE_STRING, 2);
        A = zzgtwVar12;
        zzgtw zzgtwVar13 = new zzgtw("UINT32", 12, zzgtxVar2, 0);
        B = zzgtwVar13;
        zzgtw zzgtwVar14 = new zzgtw("ENUM", 13, zzgtx.ENUM, 0);
        C = zzgtwVar14;
        zzgtw zzgtwVar15 = new zzgtw("SFIXED32", 14, zzgtxVar2, 5);
        D = zzgtwVar15;
        zzgtw zzgtwVar16 = new zzgtw("SFIXED64", 15, zzgtxVar, 1);
        E = zzgtwVar16;
        zzgtw zzgtwVar17 = new zzgtw("SINT32", 16, zzgtxVar2, 0);
        F = zzgtwVar17;
        zzgtw zzgtwVar18 = new zzgtw("SINT64", 17, zzgtxVar, 0);
        G = zzgtwVar18;
        H = new zzgtw[]{zzgtwVar, zzgtwVar2, zzgtwVar3, zzgtwVar4, zzgtwVar5, zzgtwVar6, zzgtwVar7, zzgtwVar8, zzgtwVar9, zzgtwVar10, zzgtwVar11, zzgtwVar12, zzgtwVar13, zzgtwVar14, zzgtwVar15, zzgtwVar16, zzgtwVar17, zzgtwVar18};
    }

    private zzgtw(String str, int i10, zzgtx zzgtxVar, int i11) {
        this.f19649o = zzgtxVar;
    }

    public static zzgtw[] values() {
        return (zzgtw[]) H.clone();
    }

    public final zzgtx c() {
        return this.f19649o;
    }
}
