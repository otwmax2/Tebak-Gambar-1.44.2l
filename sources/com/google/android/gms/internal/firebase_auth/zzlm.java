package com.google.android.gms.internal.firebase_auth;

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
public class zzlm {
    public static final zzlm A;
    public static final zzlm B;
    public static final zzlm C;
    public static final zzlm D;
    public static final zzlm E;
    public static final zzlm F;
    public static final zzlm G;
    public static final zzlm H;
    private static final /* synthetic */ zzlm[] I;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzlm f22909q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzlm f22910r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzlm f22911s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzlm f22912t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzlm f22913u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzlm f22914v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzlm f22915w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzlm f22916x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzlm f22917y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzlm f22918z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzlt f22919o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f22920p;

    static {
        zzlm zzlmVar = new zzlm("DOUBLE", 0, zzlt.DOUBLE, 1);
        f22909q = zzlmVar;
        zzlm zzlmVar2 = new zzlm("FLOAT", 1, zzlt.FLOAT, 5);
        f22910r = zzlmVar2;
        zzlt zzltVar = zzlt.LONG;
        final int i10 = 2;
        zzlm zzlmVar3 = new zzlm("INT64", 2, zzltVar, 0);
        f22911s = zzlmVar3;
        final int i11 = 3;
        zzlm zzlmVar4 = new zzlm("UINT64", 3, zzltVar, 0);
        f22912t = zzlmVar4;
        zzlt zzltVar2 = zzlt.INT;
        zzlm zzlmVar5 = new zzlm("INT32", 4, zzltVar2, 0);
        f22913u = zzlmVar5;
        zzlm zzlmVar6 = new zzlm("FIXED64", 5, zzltVar, 1);
        f22914v = zzlmVar6;
        zzlm zzlmVar7 = new zzlm("FIXED32", 6, zzltVar2, 5);
        f22915w = zzlmVar7;
        zzlm zzlmVar8 = new zzlm("BOOL", 7, zzlt.BOOLEAN, 0);
        f22916x = zzlmVar8;
        final zzlt zzltVar3 = zzlt.STRING;
        final String str = "STRING";
        final int i12 = 8;
        zzlm zzlmVar9 = new zzlm(str, i12, zzltVar3, i10) { // from class: com.google.android.gms.internal.firebase_auth.zzlp
            {
                int i13 = 8;
                int i14 = 2;
                zzln zzlnVar = null;
            }
        };
        f22917y = zzlmVar9;
        final zzlt zzltVar4 = zzlt.MESSAGE;
        final String str2 = "GROUP";
        final int i13 = 9;
        zzlm zzlmVar10 = new zzlm(str2, i13, zzltVar4, i11) { // from class: com.google.android.gms.internal.firebase_auth.zzlo
            {
                int i14 = 9;
                int i15 = 3;
                zzln zzlnVar = null;
            }
        };
        f22918z = zzlmVar10;
        final String str3 = "MESSAGE";
        final int i14 = 10;
        final int i15 = 2;
        zzlm zzlmVar11 = new zzlm(str3, i14, zzltVar4, i15) { // from class: com.google.android.gms.internal.firebase_auth.zzlr
            {
                int i16 = 10;
                int i17 = 2;
                zzln zzlnVar = null;
            }
        };
        A = zzlmVar11;
        final zzlt zzltVar5 = zzlt.BYTE_STRING;
        final String str4 = "BYTES";
        final int i16 = 11;
        zzlm zzlmVar12 = new zzlm(str4, i16, zzltVar5, i15) { // from class: com.google.android.gms.internal.firebase_auth.zzlq
            {
                int i17 = 11;
                int i18 = 2;
                zzln zzlnVar = null;
            }
        };
        B = zzlmVar12;
        zzlm zzlmVar13 = new zzlm("UINT32", 12, zzltVar2, 0);
        C = zzlmVar13;
        zzlm zzlmVar14 = new zzlm("ENUM", 13, zzlt.ENUM, 0);
        D = zzlmVar14;
        zzlm zzlmVar15 = new zzlm("SFIXED32", 14, zzltVar2, 5);
        E = zzlmVar15;
        zzlm zzlmVar16 = new zzlm("SFIXED64", 15, zzltVar, 1);
        F = zzlmVar16;
        zzlm zzlmVar17 = new zzlm("SINT32", 16, zzltVar2, 0);
        G = zzlmVar17;
        zzlm zzlmVar18 = new zzlm("SINT64", 17, zzltVar, 0);
        H = zzlmVar18;
        I = new zzlm[]{zzlmVar, zzlmVar2, zzlmVar3, zzlmVar4, zzlmVar5, zzlmVar6, zzlmVar7, zzlmVar8, zzlmVar9, zzlmVar10, zzlmVar11, zzlmVar12, zzlmVar13, zzlmVar14, zzlmVar15, zzlmVar16, zzlmVar17, zzlmVar18};
    }

    private zzlm(String str, int i10, zzlt zzltVar, int i11) {
        this.f22919o = zzltVar;
        this.f22920p = i11;
    }

    public static zzlm[] values() {
        return (zzlm[]) I.clone();
    }

    public final zzlt c() {
        return this.f22919o;
    }

    public final int e() {
        return this.f22920p;
    }

    /* synthetic */ zzlm(String str, int i10, zzlt zzltVar, int i11, zzln zzlnVar) {
        this(str, i10, zzltVar, i11);
    }
}
