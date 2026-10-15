package b2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: ResourceRecycler.java */
/* JADX INFO: loaded from: classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f4637b = new Handler(Looper.getMainLooper(), new b());

    /* JADX INFO: compiled from: ResourceRecycler.java */
    private static class b implements Handler.Callback {
        private b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((l) message.obj).b();
            return true;
        }
    }

    m() {
    }

    public void a(l<?> lVar) {
        x2.h.b();
        if (this.f4636a) {
            this.f4637b.obtainMessage(1, lVar).sendToTarget();
            return;
        }
        this.f4636a = true;
        lVar.b();
        this.f4636a = false;
    }
}
