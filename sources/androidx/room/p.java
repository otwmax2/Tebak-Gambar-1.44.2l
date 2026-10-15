package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.k;
import androidx.room.l;
import androidx.room.o;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
/* JADX INFO: loaded from: classes.dex */
class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f4175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final o f4178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final o.c f4179e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    l f4180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Executor f4181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final k f4182h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final AtomicBoolean f4183i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final ServiceConnection f4184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final Runnable f4185k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final Runnable f4186l;

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    class a extends k.a {

        /* JADX INFO: renamed from: androidx.room.p$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
        class RunnableC0068a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ String[] f4188o;

            RunnableC0068a(String[] strArr) {
                this.f4188o = strArr;
            }

            @Override // java.lang.Runnable
            public void run() {
                p.this.f4178d.f(this.f4188o);
            }
        }

        a() {
        }

        @Override // androidx.room.k
        public void Z2(String[] strArr) {
            p.this.f4181g.execute(new RunnableC0068a(strArr));
        }
    }

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            p.this.f4180f = l.a.P0(iBinder);
            p pVar = p.this;
            pVar.f4181g.execute(pVar.f4185k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            p pVar = p.this;
            pVar.f4181g.execute(pVar.f4186l);
            p.this.f4180f = null;
        }
    }

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p pVar = p.this;
                l lVar = pVar.f4180f;
                if (lVar != null) {
                    pVar.f4177c = lVar.h4(pVar.f4182h, pVar.f4176b);
                    p pVar2 = p.this;
                    pVar2.f4178d.a(pVar2.f4179e);
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e10);
            }
        }
    }

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = p.this;
            pVar.f4178d.i(pVar.f4179e);
        }
    }

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    class e extends o.c {
        e(String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.o.c
        boolean a() {
            return true;
        }

        @Override // androidx.room.o.c
        public void b(Set<String> set) {
            if (p.this.f4183i.get()) {
                return;
            }
            try {
                p pVar = p.this;
                l lVar = pVar.f4180f;
                if (lVar != null) {
                    lVar.G9(pVar.f4177c, (String[]) set.toArray(new String[0]));
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot broadcast invalidation", e10);
            }
        }
    }

    p(Context context, String str, o oVar, Executor executor) {
        b bVar = new b();
        this.f4184j = bVar;
        this.f4185k = new c();
        this.f4186l = new d();
        Context applicationContext = context.getApplicationContext();
        this.f4175a = applicationContext;
        this.f4176b = str;
        this.f4178d = oVar;
        this.f4181g = executor;
        this.f4179e = new e((String[]) oVar.f4151a.keySet().toArray(new String[0]));
        applicationContext.bindService(new Intent(applicationContext, (Class<?>) MultiInstanceInvalidationService.class), bVar, 1);
    }
}
