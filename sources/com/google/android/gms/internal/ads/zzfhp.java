package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfhp {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile int f18231e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f18232f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f18234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Task f18235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f18236d;

    zzfhp(Context context, Executor executor, Task task, boolean z10) {
        this.f18233a = context;
        this.f18234b = executor;
        this.f18235c = task;
        this.f18236d = z10;
    }

    public static zzfhp a(final Context context, Executor executor, boolean z10) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (z10) {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfhl
                @Override // java.lang.Runnable
                public final void run() {
                    taskCompletionSource.c(zzfjr.b(context, "GLAS", null));
                }
            });
        } else {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfhm
                @Override // java.lang.Runnable
                public final void run() {
                    taskCompletionSource.c(zzfjr.c());
                }
            });
        }
        return new zzfhp(context, executor, taskCompletionSource.a(), z10);
    }

    static void g(int i10) {
        f18231e = i10;
    }

    private final Task h(final int i10, long j10, Exception exc, String str, Map map, String str2) {
        if (!this.f18236d) {
            return this.f18235c.l(this.f18234b, new Continuation() { // from class: com.google.android.gms.internal.ads.zzfhn
                @Override // com.google.android.gms.tasks.Continuation
                public final Object a(Task task) {
                    return Boolean.valueOf(task.t());
                }
            });
        }
        final zzamh zzamhVarI = zzaml.I();
        zzamhVarI.o(this.f18233a.getPackageName());
        zzamhVarI.s(j10);
        zzamhVarI.v(f18231e);
        if (exc != null) {
            zzamhVarI.u(zzfol.a(exc));
            zzamhVarI.r(exc.getClass().getName());
        }
        if (str2 != null) {
            zzamhVarI.p(str2);
        }
        if (str != null) {
            zzamhVarI.q(str);
        }
        return this.f18235c.l(this.f18234b, new Continuation() { // from class: com.google.android.gms.internal.ads.zzfho
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task) {
                zzamh zzamhVar = zzamhVarI;
                int i11 = i10;
                int i12 = zzfhp.f18232f;
                if (!task.t()) {
                    return Boolean.FALSE;
                }
                zzfjq zzfjqVarA = ((zzfjr) task.p()).a(((zzaml) zzamhVar.k()).t());
                zzfjqVarA.a(i11);
                zzfjqVarA.c();
                return Boolean.TRUE;
            }
        });
    }

    public final Task b(int i10, String str) {
        return h(i10, 0L, null, null, null, str);
    }

    public final Task c(int i10, long j10, Exception exc) {
        return h(i10, j10, exc, null, null, null);
    }

    public final Task d(int i10, long j10) {
        return h(i10, j10, null, null, null, null);
    }

    public final Task e(int i10, long j10, String str) {
        return h(i10, j10, null, null, null, str);
    }

    public final Task f(int i10, long j10, String str, Map map) {
        return h(i10, j10, null, str, null, null);
    }
}
