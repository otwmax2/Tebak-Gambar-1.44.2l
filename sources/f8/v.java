package f8;

import android.net.NetworkInfo;
import f8.e0;
import f8.t;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: PicassoExecutorService.java */
/* JADX INFO: loaded from: classes2.dex */
class v extends ThreadPoolExecutor {

    /* JADX INFO: compiled from: PicassoExecutorService.java */
    private static final class a extends FutureTask<c> implements Comparable<a> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final c f29464o;

        public a(c cVar) {
            super(cVar, null);
            this.f29464o = cVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            t.f fVarP = this.f29464o.p();
            t.f fVarP2 = aVar.f29464o.p();
            return fVarP == fVarP2 ? this.f29464o.f29328o - aVar.f29464o.f29328o : fVarP2.ordinal() - fVarP.ordinal();
        }
    }

    v() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new e0.f());
    }

    private void b(int i10) {
        setCorePoolSize(i10);
        setMaximumPoolSize(i10);
    }

    void a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            b(3);
            return;
        }
        int type = networkInfo.getType();
        if (type != 0) {
            if (type == 1 || type == 6 || type == 9) {
                b(4);
                return;
            } else {
                b(3);
                return;
            }
        }
        int subtype = networkInfo.getSubtype();
        switch (subtype) {
            case 1:
            case 2:
                b(1);
                return;
            case 3:
            case 4:
            case 5:
            case 6:
                break;
            default:
                switch (subtype) {
                    case 12:
                        break;
                    case 13:
                    case 14:
                    case 15:
                        b(3);
                        break;
                    default:
                        b(3);
                        break;
                }
                return;
        }
        b(2);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        a aVar = new a((c) runnable);
        execute(aVar);
        return aVar;
    }
}
