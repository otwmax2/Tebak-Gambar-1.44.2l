package com.google.firebase.sessions;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.ArrayList;
import t9.g;
import t9.m;
import x6.c0;
import x6.e0;
import x6.x;
import z6.f;

/* JADX INFO: compiled from: SessionLifecycleService.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SessionLifecycleService extends Service {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f26673r = new a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final HandlerThread f26674o = new HandlerThread("FirebaseSessions_HandlerThread");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f26675p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Messenger f26676q;

    /* JADX INFO: compiled from: SessionLifecycleService.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: SessionLifecycleService.kt */
    public static final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f26677a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f26678b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ArrayList<Messenger> f26679c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Looper looper) {
            super(looper);
            m.e(looper, "looper");
            this.f26679c = new ArrayList<>();
        }

        private final void a() {
            StringBuilder sb = new StringBuilder();
            sb.append("Broadcasting new session: ");
            e0.b bVar = e0.f36390f;
            sb.append(bVar.a().c());
            Log.d("SessionLifecycleService", sb.toString());
            c0.f36358a.a().a(bVar.a().c());
            for (Messenger messenger : new ArrayList(this.f26679c)) {
                m.d(messenger, "it");
                f(messenger);
            }
        }

        private final void b(Message message) {
            Log.d("SessionLifecycleService", "Activity backgrounding at " + message.getWhen());
            this.f26678b = message.getWhen();
        }

        private final void c(Message message) {
            this.f26679c.add(message.replyTo);
            Messenger messenger = message.replyTo;
            m.d(messenger, "msg.replyTo");
            f(messenger);
            Log.d("SessionLifecycleService", "Client " + message.replyTo + " bound at " + message.getWhen() + ". Clients: " + this.f26679c.size());
        }

        private final void d(Message message) {
            Log.d("SessionLifecycleService", "Activity foregrounding at " + message.getWhen() + '.');
            if (!this.f26677a) {
                Log.d("SessionLifecycleService", "Cold start detected.");
                this.f26677a = true;
                g();
            } else if (e(message.getWhen())) {
                Log.d("SessionLifecycleService", "Session too long in background. Creating new session.");
                g();
            }
            this.f26678b = message.getWhen();
        }

        private final boolean e(long j10) {
            return j10 - this.f26678b > ca.a.o(f.f37260c.c().c());
        }

        private final void f(Messenger messenger) {
            if (this.f26677a) {
                h(messenger, e0.f36390f.a().c().b());
                return;
            }
            String strA = x.f36463a.a().a();
            Log.d("SessionLifecycleService", "App has not yet foregrounded. Using previously stored session: " + strA);
            if (strA != null) {
                h(messenger, strA);
            }
        }

        private final void g() {
            e0.b bVar = e0.f36390f;
            bVar.a().a();
            Log.d("SessionLifecycleService", "Generated new session " + bVar.a().c().b());
            a();
            x.f36463a.a().b(bVar.a().c().b());
        }

        private final void h(Messenger messenger, String str) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("SessionUpdateExtra", str);
                Message messageObtain = Message.obtain(null, 3, 0, 0);
                messageObtain.setData(bundle);
                messenger.send(messageObtain);
            } catch (DeadObjectException unused) {
                Log.d("SessionLifecycleService", "Removing dead client from list: " + messenger);
                this.f26679c.remove(messenger);
            } catch (Exception e10) {
                Log.w("SessionLifecycleService", "Unable to push new session to " + messenger + '.', e10);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            m.e(message, SDKConstants.PARAM_DEBUG_MESSAGE);
            if (this.f26678b > message.getWhen()) {
                Log.d("SessionLifecycleService", "Ignoring old message from " + message.getWhen() + " which is older than " + this.f26678b + '.');
                return;
            }
            int i10 = message.what;
            if (i10 == 1) {
                d(message);
                return;
            }
            if (i10 == 2) {
                b(message);
                return;
            }
            if (i10 == 4) {
                c(message);
                return;
            }
            Log.w("SessionLifecycleService", "Received unexpected event from the SessionLifecycleClient: " + message);
            super.handleMessage(message);
        }
    }

    private final Messenger a(Intent intent) {
        return Build.VERSION.SDK_INT >= 33 ? (Messenger) intent.getParcelableExtra("ClientCallbackMessenger", Messenger.class) : (Messenger) intent.getParcelableExtra("ClientCallbackMessenger");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent == null) {
            Log.d("SessionLifecycleService", "Service bound with null intent. Ignoring.");
            return null;
        }
        Log.d("SessionLifecycleService", "Service bound to new client on process " + intent.getAction());
        Messenger messengerA = a(intent);
        if (messengerA != null) {
            Message messageObtain = Message.obtain(null, 4, 0, 0);
            messageObtain.replyTo = messengerA;
            b bVar = this.f26675p;
            if (bVar != null) {
                bVar.sendMessage(messageObtain);
            }
        }
        Messenger messenger = this.f26676q;
        if (messenger != null) {
            return messenger.getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f26674o.start();
        Looper looper = this.f26674o.getLooper();
        m.d(looper, "handlerThread.looper");
        this.f26675p = new b(looper);
        this.f26676q = new Messenger(this.f26675p);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f26674o.quit();
    }
}
