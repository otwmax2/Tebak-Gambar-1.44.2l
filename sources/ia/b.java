package ia;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import da.m;
import h9.n;
import h9.o;
import h9.t;
import java.util.concurrent.CancellationException;
import k9.d;
import l9.c;
import m9.h;
import s9.l;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: compiled from: Tasks.kt */
    static final class a<TResult> implements OnCompleteListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m<T> f30552a;

        /* JADX WARN: Multi-variable type inference failed */
        a(m<? super T> mVar) {
            this.f30552a = mVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public final void a(Task<T> task) {
            Exception excO = task.o();
            if (excO != null) {
                d dVar = this.f30552a;
                n.a aVar = n.f30295o;
                dVar.g(n.a(o.a(excO)));
            } else {
                if (task.r()) {
                    m.a.a(this.f30552a, null, 1, null);
                    return;
                }
                d dVar2 = this.f30552a;
                n.a aVar2 = n.f30295o;
                dVar2.g(n.a(task.p()));
            }
        }
    }

    /* JADX INFO: renamed from: ia.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Tasks.kt */
    static final class C0178b extends t9.n implements l<Throwable, t> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ CancellationTokenSource f30553o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0178b(CancellationTokenSource cancellationTokenSource) {
            super(1);
            this.f30553o = cancellationTokenSource;
        }

        public final void c(Throwable th) {
            this.f30553o.a();
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ t invoke(Throwable th) {
            c(th);
            return t.f30301a;
        }
    }

    public static final <T> Object a(Task<T> task, d<? super T> dVar) {
        return b(task, null, dVar);
    }

    private static final <T> Object b(Task<T> task, CancellationTokenSource cancellationTokenSource, d<? super T> dVar) throws Exception {
        if (!task.s()) {
            da.n nVar = new da.n(c.b(dVar), 1);
            nVar.y();
            task.d(ia.a.f30551o, new a(nVar));
            if (cancellationTokenSource != null) {
                nVar.z(new C0178b(cancellationTokenSource));
            }
            Object objT = nVar.t();
            if (objT == l9.d.c()) {
                h.c(dVar);
            }
            return objT;
        }
        Exception excO = task.o();
        if (excO != null) {
            throw excO;
        }
        if (!task.r()) {
            return task.p();
        }
        throw new CancellationException("Task " + task + " was cancelled normally.");
    }
}
