package kotlinx.coroutines.internal;

import h9.n;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: StackTraceRecovery.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f31725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f31726b;

    static {
        Object objA;
        Object objA2;
        try {
            n.a aVar = h9.n.f30295o;
            objA = h9.n.a(Class.forName("m9.a").getCanonicalName());
        } catch (Throwable th) {
            n.a aVar2 = h9.n.f30295o;
            objA = h9.n.a(h9.o.a(th));
        }
        if (h9.n.b(objA) != null) {
            objA = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f31725a = (String) objA;
        try {
            n.a aVar3 = h9.n.f30295o;
            objA2 = h9.n.a(d0.class.getCanonicalName());
        } catch (Throwable th2) {
            n.a aVar4 = h9.n.f30295o;
            objA2 = h9.n.a(h9.o.a(th2));
        }
        if (h9.n.b(objA2) != null) {
            objA2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f31726b = (String) objA2;
    }

    public static final StackTraceElement b(String str) {
        return new StackTraceElement("\b\b\b(" + str, "\b", "\b", -1);
    }

    private static final <E extends Throwable> h9.m<E, StackTraceElement[]> c(E e10) {
        boolean z10;
        Throwable cause = e10.getCause();
        if (cause == null || !t9.m.a(cause.getClass(), e10.getClass())) {
            return h9.q.a(e10, new StackTraceElement[0]);
        }
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int length = stackTrace.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                z10 = false;
                break;
            }
            if (h(stackTrace[i10])) {
                z10 = true;
                break;
            }
            i10++;
        }
        return z10 ? h9.q.a(cause, stackTrace) : h9.q.a(e10, new StackTraceElement[0]);
    }

    private static final <E extends Throwable> E d(E e10, E e11, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(b("Coroutine boundary"));
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int iG = g(stackTrace, f31725a);
        int i10 = 0;
        if (iG == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            e11.setStackTrace((StackTraceElement[]) array);
            return e11;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + iG];
        for (int i11 = 0; i11 < iG; i11++) {
            stackTraceElementArr[i11] = stackTrace[i11];
        }
        Iterator<StackTraceElement> it = arrayDeque.iterator();
        while (it.hasNext()) {
            int i12 = i10 + 1;
            stackTraceElementArr[i10 + iG] = it.next();
            i10 = i12;
        }
        e11.setStackTrace(stackTraceElementArr);
        return e11;
    }

    private static final ArrayDeque<StackTraceElement> e(m9.e eVar) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElementO = eVar.o();
        if (stackTraceElementO != null) {
            arrayDeque.add(stackTraceElementO);
        }
        while (true) {
            eVar = eVar.e();
            if (eVar == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElementO2 = eVar.o();
            if (stackTraceElementO2 != null) {
                arrayDeque.add(stackTraceElementO2);
            }
        }
    }

    private static final boolean f(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && t9.m.a(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && t9.m.a(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && t9.m.a(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    private static final int g(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (t9.m.a(str, stackTraceElementArr[i10].getClassName())) {
                return i10;
            }
        }
        return -1;
    }

    public static final boolean h(StackTraceElement stackTraceElement) {
        return ba.p.u(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
    }

    private static final void i(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            } else if (h(stackTraceElementArr[i10])) {
                break;
            } else {
                i10++;
            }
        }
        int i11 = i10 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i11 > length2) {
            return;
        }
        while (true) {
            if (f(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i11) {
                return;
            } else {
                length2--;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> E j(E e10, m9.e eVar) {
        h9.m mVarC = c(e10);
        Throwable th = (Throwable) mVarC.a();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) mVarC.b();
        Throwable thK = k(th);
        if (thK == null) {
            return e10;
        }
        ArrayDeque<StackTraceElement> arrayDequeE = e(eVar);
        if (arrayDequeE.isEmpty()) {
            return e10;
        }
        if (th != e10) {
            i(stackTraceElementArr, arrayDequeE);
        }
        return (E) d(th, thK, arrayDequeE);
    }

    private static final <E extends Throwable> E k(E e10) {
        E e11 = (E) j.g(e10);
        if (e11 == null) {
            return null;
        }
        if ((e10 instanceof da.g0) || t9.m.a(e11.getMessage(), e10.getMessage())) {
            return e11;
        }
        return null;
    }

    public static final <E extends Throwable> E l(E e10) {
        E e11 = (E) e10.getCause();
        if (e11 != null && t9.m.a(e11.getClass(), e10.getClass())) {
            StackTraceElement[] stackTrace = e10.getStackTrace();
            int length = stackTrace.length;
            boolean z10 = false;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (h(stackTrace[i10])) {
                    z10 = true;
                    break;
                }
                i10++;
            }
            if (z10) {
                return e11;
            }
        }
        return e10;
    }
}
