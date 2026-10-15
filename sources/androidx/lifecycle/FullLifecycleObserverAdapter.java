package androidx.lifecycle;

import androidx.lifecycle.j;

/* JADX INFO: loaded from: classes.dex */
class FullLifecycleObserverAdapter implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f3458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f3459b;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3460a;

        static {
            int[] iArr = new int[j.b.values().length];
            f3460a = iArr;
            try {
                iArr[j.b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3460a[j.b.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3460a[j.b.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3460a[j.b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3460a[j.b.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3460a[j.b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3460a[j.b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    FullLifecycleObserverAdapter(f fVar, l lVar) {
        this.f3458a = fVar;
        this.f3459b = lVar;
    }

    @Override // androidx.lifecycle.l
    public void c(n nVar, j.b bVar) {
        switch (a.f3460a[bVar.ordinal()]) {
            case 1:
                this.f3458a.b(nVar);
                break;
            case 2:
                this.f3458a.g(nVar);
                break;
            case 3:
                this.f3458a.a(nVar);
                break;
            case 4:
                this.f3458a.d(nVar);
                break;
            case 5:
                this.f3458a.e(nVar);
                break;
            case 6:
                this.f3458a.f(nVar);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        l lVar = this.f3459b;
        if (lVar != null) {
            lVar.c(nVar, bVar);
        }
    }
}
