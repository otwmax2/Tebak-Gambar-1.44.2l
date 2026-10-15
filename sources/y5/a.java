package y5;

/* JADX INFO: compiled from: MiddleOutFallbackStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f36988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d[] f36989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f36990c;

    public a(int i10, d... dVarArr) {
        this.f36988a = i10;
        this.f36989b = dVarArr;
        this.f36990c = new b(i10);
    }

    @Override // y5.d
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= this.f36988a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArrA = stackTraceElementArr;
        for (d dVar : this.f36989b) {
            if (stackTraceElementArrA.length <= this.f36988a) {
                break;
            }
            stackTraceElementArrA = dVar.a(stackTraceElementArr);
        }
        return stackTraceElementArrA.length > this.f36988a ? this.f36990c.a(stackTraceElementArrA) : stackTraceElementArrA;
    }
}
