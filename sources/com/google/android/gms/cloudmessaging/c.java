package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class c implements ServiceConnection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @GuardedBy("this")
    int f6854o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Messenger f6855p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    l f6856q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("this")
    final Queue<m<?>> f6857r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("this")
    final SparseArray<m<?>> f6858s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zze f6859t;

    private c(zze zzeVar) {
        this.f6859t = zzeVar;
        this.f6854o = 0;
        this.f6855p = new Messenger(new com.google.android.gms.internal.cloudmessaging.zze(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.f

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final c f6861o;

            {
                this.f6861o = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f6861o.d(message);
            }
        }));
        this.f6857r = new ArrayDeque();
        this.f6858s = new SparseArray<>();
    }

    final void a() {
        this.f6859t.f6888b.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.g

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final c f6862o;

            {
                this.f6862o = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final m<?> mVarPoll;
                final c cVar = this.f6862o;
                while (true) {
                    synchronized (cVar) {
                        if (cVar.f6854o != 2) {
                            return;
                        }
                        if (cVar.f6857r.isEmpty()) {
                            cVar.f();
                            return;
                        } else {
                            mVarPoll = cVar.f6857r.poll();
                            cVar.f6858s.put(mVarPoll.f6870a, mVarPoll);
                            cVar.f6859t.f6888b.schedule(new Runnable(cVar, mVarPoll) { // from class: com.google.android.gms.cloudmessaging.i

                                /* JADX INFO: renamed from: o, reason: collision with root package name */
                                private final c f6865o;

                                /* JADX INFO: renamed from: p, reason: collision with root package name */
                                private final m f6866p;

                                {
                                    this.f6865o = cVar;
                                    this.f6866p = mVarPoll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f6865o.b(this.f6866p.f6870a);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String strValueOf = String.valueOf(mVarPoll);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 8);
                        sb.append("Sending ");
                        sb.append(strValueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    Context context = cVar.f6859t.f6887a;
                    Messenger messenger = cVar.f6855p;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = mVarPoll.f6872c;
                    messageObtain.arg1 = mVarPoll.f6870a;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", mVarPoll.d());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", mVarPoll.f6873d);
                    messageObtain.setData(bundle);
                    try {
                        cVar.f6856q.a(messageObtain);
                    } catch (RemoteException e10) {
                        cVar.c(2, e10.getMessage());
                    }
                }
            }
        });
    }

    final synchronized void b(int i10) {
        m<?> mVar = this.f6858s.get(i10);
        if (mVar != null) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Timing out request: ");
            sb.append(i10);
            Log.w("MessengerIpcClient", sb.toString());
            this.f6858s.remove(i10);
            mVar.b(new zzp(3, "Timed out waiting for response"));
            f();
        }
    }

    final synchronized void c(int i10, String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", strValueOf.length() != 0 ? "Disconnected: ".concat(strValueOf) : new String("Disconnected: "));
        }
        int i11 = this.f6854o;
        if (i11 == 0) {
            throw new IllegalStateException();
        }
        if (i11 != 1 && i11 != 2) {
            if (i11 == 3) {
                this.f6854o = 4;
                return;
            } else {
                if (i11 == 4) {
                    return;
                }
                int i12 = this.f6854o;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i12);
                throw new IllegalStateException(sb.toString());
            }
        }
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Unbinding service");
        }
        this.f6854o = 4;
        ConnectionTracker.b().c(this.f6859t.f6887a, this);
        zzp zzpVar = new zzp(i10, str);
        Iterator<m<?>> it = this.f6857r.iterator();
        while (it.hasNext()) {
            it.next().b(zzpVar);
        }
        this.f6857r.clear();
        for (int i13 = 0; i13 < this.f6858s.size(); i13++) {
            this.f6858s.valueAt(i13).b(zzpVar);
        }
        this.f6858s.clear();
    }

    final boolean d(Message message) {
        int i10 = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i10);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            m<?> mVar = this.f6858s.get(i10);
            if (mVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i10);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f6858s.remove(i10);
            f();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                mVar.b(new zzp(4, "Not supported by GmsCore"));
            } else {
                mVar.a(data);
            }
            return true;
        }
    }

    final synchronized boolean e(m<?> mVar) {
        int i10 = this.f6854o;
        if (i10 == 0) {
            this.f6857r.add(mVar);
            Preconditions.n(this.f6854o == 0);
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Starting bind to GmsCore");
            }
            this.f6854o = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            if (ConnectionTracker.b().a(this.f6859t.f6887a, intent, this, 1)) {
                this.f6859t.f6888b.schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.e

                    /* JADX INFO: renamed from: o, reason: collision with root package name */
                    private final c f6860o;

                    {
                        this.f6860o = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6860o.g();
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                c(0, "Unable to bind to service");
            }
            return true;
        }
        if (i10 == 1) {
            this.f6857r.add(mVar);
            return true;
        }
        if (i10 == 2) {
            this.f6857r.add(mVar);
            a();
            return true;
        }
        if (i10 != 3 && i10 != 4) {
            int i11 = this.f6854o;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Unknown state: ");
            sb.append(i11);
            throw new IllegalStateException(sb.toString());
        }
        return false;
    }

    final synchronized void f() {
        if (this.f6854o == 2 && this.f6857r.isEmpty() && this.f6858s.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.f6854o = 3;
            ConnectionTracker.b().c(this.f6859t.f6887a, this);
        }
    }

    final synchronized void g() {
        if (this.f6854o == 1) {
            c(1, "Timed out while binding");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        this.f6859t.f6888b.execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.h

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final c f6863o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            private final IBinder f6864p;

            {
                this.f6863o = this;
                this.f6864p = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                c cVar = this.f6863o;
                IBinder iBinder2 = this.f6864p;
                synchronized (cVar) {
                    try {
                        if (iBinder2 == null) {
                            cVar.c(0, "Null service connection");
                            return;
                        }
                        try {
                            cVar.f6856q = new l(iBinder2);
                            cVar.f6854o = 2;
                            cVar.a();
                        } catch (RemoteException e10) {
                            cVar.c(0, e10.getMessage());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        this.f6859t.f6888b.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.j

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final c f6867o;

            {
                this.f6867o = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6867o.c(2, "Service disconnected");
            }
        });
    }
}
