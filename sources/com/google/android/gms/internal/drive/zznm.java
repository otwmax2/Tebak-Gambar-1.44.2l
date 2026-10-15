package com.google.android.gms.internal.drive;

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
/* JADX INFO: loaded from: classes2.dex */
public class zznm {
    public static final zznm A;
    public static final zznm B;
    public static final zznm C;
    public static final zznm D;
    public static final zznm E;
    public static final zznm F;
    public static final zznm G;
    public static final zznm H;
    private static final /* synthetic */ zznm[] I;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zznm f22343q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zznm f22344r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zznm f22345s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zznm f22346t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zznm f22347u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zznm f22348v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zznm f22349w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zznm f22350x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zznm f22351y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zznm f22352z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zznr f22353o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f22354p;

    static {
        zznm zznmVar = new zznm("DOUBLE", 0, zznr.DOUBLE, 1);
        f22343q = zznmVar;
        zznm zznmVar2 = new zznm("FLOAT", 1, zznr.FLOAT, 5);
        f22344r = zznmVar2;
        zznr zznrVar = zznr.LONG;
        final int i10 = 2;
        zznm zznmVar3 = new zznm("INT64", 2, zznrVar, 0);
        f22345s = zznmVar3;
        final int i11 = 3;
        zznm zznmVar4 = new zznm("UINT64", 3, zznrVar, 0);
        f22346t = zznmVar4;
        zznr zznrVar2 = zznr.INT;
        zznm zznmVar5 = new zznm("INT32", 4, zznrVar2, 0);
        f22347u = zznmVar5;
        zznm zznmVar6 = new zznm("FIXED64", 5, zznrVar, 1);
        f22348v = zznmVar6;
        zznm zznmVar7 = new zznm("FIXED32", 6, zznrVar2, 5);
        f22349w = zznmVar7;
        zznm zznmVar8 = new zznm("BOOL", 7, zznr.BOOLEAN, 0);
        f22350x = zznmVar8;
        final zznr zznrVar3 = zznr.STRING;
        final String str = "STRING";
        final int i12 = 8;
        zznm zznmVar9 = new zznm(str, i12, zznrVar3, i10) { // from class: com.google.android.gms.internal.drive.zznn
            {
                int i13 = 8;
                int i14 = 2;
                zznl zznlVar = null;
            }
        };
        f22351y = zznmVar9;
        final zznr zznrVar4 = zznr.MESSAGE;
        final String str2 = "GROUP";
        final int i13 = 9;
        zznm zznmVar10 = new zznm(str2, i13, zznrVar4, i11) { // from class: com.google.android.gms.internal.drive.zzno
            {
                int i14 = 9;
                int i15 = 3;
                zznl zznlVar = null;
            }
        };
        f22352z = zznmVar10;
        final String str3 = "MESSAGE";
        final int i14 = 10;
        final int i15 = 2;
        zznm zznmVar11 = new zznm(str3, i14, zznrVar4, i15) { // from class: com.google.android.gms.internal.drive.zznp
            {
                int i16 = 10;
                int i17 = 2;
                zznl zznlVar = null;
            }
        };
        A = zznmVar11;
        final zznr zznrVar5 = zznr.BYTE_STRING;
        final String str4 = "BYTES";
        final int i16 = 11;
        zznm zznmVar12 = new zznm(str4, i16, zznrVar5, i15) { // from class: com.google.android.gms.internal.drive.zznq
            {
                int i17 = 11;
                int i18 = 2;
                zznl zznlVar = null;
            }
        };
        B = zznmVar12;
        zznm zznmVar13 = new zznm("UINT32", 12, zznrVar2, 0);
        C = zznmVar13;
        zznm zznmVar14 = new zznm("ENUM", 13, zznr.ENUM, 0);
        D = zznmVar14;
        zznm zznmVar15 = new zznm("SFIXED32", 14, zznrVar2, 5);
        E = zznmVar15;
        zznm zznmVar16 = new zznm("SFIXED64", 15, zznrVar, 1);
        F = zznmVar16;
        zznm zznmVar17 = new zznm("SINT32", 16, zznrVar2, 0);
        G = zznmVar17;
        zznm zznmVar18 = new zznm("SINT64", 17, zznrVar, 0);
        H = zznmVar18;
        I = new zznm[]{zznmVar, zznmVar2, zznmVar3, zznmVar4, zznmVar5, zznmVar6, zznmVar7, zznmVar8, zznmVar9, zznmVar10, zznmVar11, zznmVar12, zznmVar13, zznmVar14, zznmVar15, zznmVar16, zznmVar17, zznmVar18};
    }

    private zznm(String str, int i10, zznr zznrVar, int i11) {
        this.f22353o = zznrVar;
        this.f22354p = i11;
    }

    public static zznm[] values() {
        return (zznm[]) I.clone();
    }

    public final zznr c() {
        return this.f22353o;
    }

    public final int e() {
        return this.f22354p;
    }

    /* synthetic */ zznm(String str, int i10, zznr zznrVar, int i11, zznl zznlVar) {
        this(str, i10, zznrVar, i11);
    }
}
