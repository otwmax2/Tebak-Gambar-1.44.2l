package da;

/* JADX INFO: compiled from: CoroutineStart.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum q0 {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    /* JADX INFO: compiled from: CoroutineStart.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f28850a;

        static {
            int[] iArr = new int[q0.values().length];
            iArr[q0.DEFAULT.ordinal()] = 1;
            iArr[q0.ATOMIC.ordinal()] = 2;
            iArr[q0.UNDISPATCHED.ordinal()] = 3;
            iArr[q0.LAZY.ordinal()] = 4;
            f28850a = iArr;
        }
    }

    public final <R, T> void e(s9.p<? super R, ? super k9.d<? super T>, ? extends Object> pVar, R r10, k9.d<? super T> dVar) throws Throwable {
        int i10 = a.f28850a[ordinal()];
        if (i10 == 1) {
            ha.a.d(pVar, r10, dVar, null, 4, null);
            return;
        }
        if (i10 == 2) {
            k9.f.a(pVar, r10, dVar);
        } else if (i10 == 3) {
            ha.b.a(pVar, r10, dVar);
        } else if (i10 != 4) {
            throw new h9.l();
        }
    }

    public final boolean f() {
        return this == LAZY;
    }
}
