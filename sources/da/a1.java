package da;

/* JADX INFO: compiled from: DispatchedTask.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a1<T> extends kotlinx.coroutines.scheduling.h {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f28775q;

    public a1(int i10) {
        this.f28775q = i10;
    }

    public void a(Object obj, Throwable th) {
    }

    public abstract k9.d<T> b();

    public Throwable c(Object obj) {
        a0 a0Var = obj instanceof a0 ? (a0) obj : null;
        if (a0Var != null) {
            return a0Var.f28774a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T d(Object obj) {
        return obj;
    }

    public final void f(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            h9.b.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        t9.m.b(th);
        l0.a(b().getContext(), new r0("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ac A[Catch: all -> 0x00d9, DONT_GENERATE, TRY_LEAVE, TryCatch #2 {all -> 0x00d9, blocks: (B:13:0x0019, B:15:0x0030, B:39:0x00a6, B:41:0x00ac, B:49:0x00cf, B:52:0x00d8, B:51:0x00d5, B:18:0x0036, B:20:0x0044, B:22:0x004c, B:25:0x0058, B:27:0x005e, B:29:0x006d, B:32:0x0072, B:33:0x0079, B:37:0x00a2, B:35:0x0087, B:36:0x0095), top: B:64:0x0019, inners: #3 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: da.a1.run():void");
    }
}
