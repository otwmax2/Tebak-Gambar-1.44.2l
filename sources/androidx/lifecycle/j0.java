package androidx.lifecycle;

import s0.a;

/* JADX INFO: compiled from: ViewModelProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j0 {
    public static final s0.a a(m0 m0Var) {
        t9.m.e(m0Var, "owner");
        if (!(m0Var instanceof i)) {
            return a.C0227a.f34458b;
        }
        s0.a defaultViewModelCreationExtras = ((i) m0Var).getDefaultViewModelCreationExtras();
        t9.m.d(defaultViewModelCreationExtras, "{\n        owner.defaultV…ModelCreationExtras\n    }");
        return defaultViewModelCreationExtras;
    }
}
