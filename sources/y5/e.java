package y5;

import java.util.Stack;

/* JADX INFO: compiled from: TrimmedThrowableData.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StackTraceElement[] f36995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f36996d;

    private e(String str, String str2, StackTraceElement[] stackTraceElementArr, e eVar) {
        this.f36993a = str;
        this.f36994b = str2;
        this.f36995c = stackTraceElementArr;
        this.f36996d = eVar;
    }

    public static e a(Throwable th, d dVar) {
        Stack stack = new Stack();
        while (th != null) {
            stack.push(th);
            th = th.getCause();
        }
        e eVar = null;
        while (!stack.isEmpty()) {
            Throwable th2 = (Throwable) stack.pop();
            eVar = new e(th2.getLocalizedMessage(), th2.getClass().getName(), dVar.a(th2.getStackTrace()), eVar);
        }
        return eVar;
    }
}
