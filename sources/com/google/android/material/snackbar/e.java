package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: SnackbarManager.java */
/* JADX INFO: loaded from: classes2.dex */
class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static e f25586e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f25587a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f25588b = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f25589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f25590d;

    /* JADX INFO: compiled from: SnackbarManager.java */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            e.this.c((c) message.obj);
            return true;
        }
    }

    /* JADX INFO: compiled from: SnackbarManager.java */
    interface b {
        void a(int i10);
    }

    /* JADX INFO: compiled from: SnackbarManager.java */
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WeakReference<b> f25592a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f25593b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f25594c;

        boolean a(b bVar) {
            return bVar != null && this.f25592a.get() == bVar;
        }
    }

    private e() {
    }

    private boolean a(c cVar, int i10) {
        b bVar = cVar.f25592a.get();
        if (bVar == null) {
            return false;
        }
        this.f25588b.removeCallbacksAndMessages(cVar);
        bVar.a(i10);
        return true;
    }

    static e b() {
        if (f25586e == null) {
            f25586e = new e();
        }
        return f25586e;
    }

    private boolean d(b bVar) {
        c cVar = this.f25589c;
        return cVar != null && cVar.a(bVar);
    }

    private void g(c cVar) {
        int i10 = cVar.f25593b;
        if (i10 == -2) {
            return;
        }
        if (i10 <= 0) {
            i10 = i10 == -1 ? 1500 : 2750;
        }
        this.f25588b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f25588b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i10);
    }

    void c(c cVar) {
        synchronized (this.f25587a) {
            if (this.f25589c == cVar || this.f25590d == cVar) {
                a(cVar, 2);
            }
        }
    }

    public void e(b bVar) {
        synchronized (this.f25587a) {
            if (d(bVar)) {
                c cVar = this.f25589c;
                if (!cVar.f25594c) {
                    cVar.f25594c = true;
                    this.f25588b.removeCallbacksAndMessages(cVar);
                }
            }
        }
    }

    public void f(b bVar) {
        synchronized (this.f25587a) {
            if (d(bVar)) {
                c cVar = this.f25589c;
                if (cVar.f25594c) {
                    cVar.f25594c = false;
                    g(cVar);
                }
            }
        }
    }
}
