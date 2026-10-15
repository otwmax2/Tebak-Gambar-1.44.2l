package c9;

import f9.p;

/* JADX INFO: compiled from: UserUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: compiled from: UserUtils.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4994a;

        static {
            int[] iArr = new int[b.values().length];
            f4994a = iArr;
            try {
                iArr[b.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4994a[b.BIGGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4994a[b.MINI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4994a[b.ORIGINAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4994a[b.REASONABLY_SMALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: compiled from: UserUtils.java */
    public enum b {
        NORMAL("_normal"),
        BIGGER("_bigger"),
        MINI("_mini"),
        ORIGINAL("_original"),
        REASONABLY_SMALL("_reasonably_small");


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final String f5001o;

        b(String str) {
            this.f5001o = str;
        }

        String c() {
            return this.f5001o;
        }
    }

    public static String a(p pVar, b bVar) {
        String str;
        if (pVar == null || (str = pVar.N) == null) {
            return null;
        }
        if (bVar == null || str == null) {
            return str;
        }
        int i10 = a.f4994a[bVar.ordinal()];
        return (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? str.replace(b.NORMAL.c(), bVar.c()) : str;
    }
}
