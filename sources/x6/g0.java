package x6;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.vungle.mediation.BuildConfig;
import da.o0;
import da.p0;
import da.x1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import y6.b;

/* JADX INFO: compiled from: SessionLifecycleClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class g0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f36407f = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k9.g f36408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Messenger f36409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f36410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedBlockingDeque<Message> f36411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f36412e;

    /* JADX INFO: compiled from: SessionLifecycleClient.kt */
    public static final class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k9.g f36413a;

        /* JADX INFO: renamed from: x6.g0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SessionLifecycleClient.kt */
        @m9.f(c = "com.google.firebase.sessions.SessionLifecycleClient$ClientUpdateHandler$handleSessionUpdate$1", f = "SessionLifecycleClient.kt", l = {73}, m = "invokeSuspend")
        static final class C0297a extends m9.k implements s9.p<o0, k9.d<? super h9.t>, Object> {

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            int f36414s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            final /* synthetic */ String f36415t;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0297a(String str, k9.d<? super C0297a> dVar) {
                super(2, dVar);
                this.f36415t = str;
            }

            @Override // m9.a
            public final k9.d<h9.t> d(Object obj, k9.d<?> dVar) {
                return new C0297a(this.f36415t, dVar);
            }

            @Override // m9.a
            public final Object i(Object obj) throws Throwable {
                Object objC = l9.d.c();
                int i10 = this.f36414s;
                if (i10 == 0) {
                    h9.o.b(obj);
                    y6.a aVar = y6.a.f36997a;
                    this.f36414s = 1;
                    obj = aVar.c(this);
                    if (obj == objC) {
                        return objC;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    h9.o.b(obj);
                }
                Collection<y6.b> collectionValues = ((Map) obj).values();
                String str = this.f36415t;
                for (y6.b bVar : collectionValues) {
                    bVar.a(new b.C0304b(str));
                    Log.d("SessionLifecycleClient", "Notified " + bVar.c() + " of new session " + str);
                }
                return h9.t.f30301a;
            }

            @Override // s9.p
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public final Object invoke(o0 o0Var, k9.d<? super h9.t> dVar) {
                return ((C0297a) d(o0Var, dVar)).i(h9.t.f30301a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(k9.g gVar) {
            super(Looper.getMainLooper());
            t9.m.e(gVar, "backgroundDispatcher");
            this.f36413a = gVar;
        }

        private final void a(String str) {
            Log.d("SessionLifecycleClient", "Session update received: " + str);
            da.j.b(p0.a(this.f36413a), null, null, new C0297a(str, null), 3, null);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String string;
            t9.m.e(message, SDKConstants.PARAM_DEBUG_MESSAGE);
            if (message.what == 3) {
                Bundle data = message.getData();
                if (data == null || (string = data.getString("SessionUpdateExtra")) == null) {
                    string = BuildConfig.FLAVOR;
                }
                a(string);
                return;
            }
            Log.w("SessionLifecycleClient", "Received unexpected event from the SessionLifecycleService: " + message);
            super.handleMessage(message);
        }
    }

    /* JADX INFO: compiled from: SessionLifecycleClient.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: SessionLifecycleClient.kt */
    @m9.f(c = "com.google.firebase.sessions.SessionLifecycleClient$sendLifecycleEvents$1", f = "SessionLifecycleClient.kt", l = {149}, m = "invokeSuspend")
    static final class c extends m9.k implements s9.p<o0, k9.d<? super h9.t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f36416s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ List<Message> f36418u;

        /* JADX INFO: compiled from: Comparisons.kt */
        public static final class a<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                return j9.b.a(Long.valueOf(((Message) t10).getWhen()), Long.valueOf(((Message) t11).getWhen()));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(List<Message> list, k9.d<? super c> dVar) {
            super(2, dVar);
            this.f36418u = list;
        }

        @Override // m9.a
        public final k9.d<h9.t> d(Object obj, k9.d<?> dVar) {
            return g0.this.new c(this.f36418u, dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
        @Override // m9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object i(java.lang.Object r6) throws java.lang.Throwable {
            /*
                r5 = this;
                java.lang.Object r0 = l9.b.c()
                int r1 = r5.f36416s
                r2 = 1
                if (r1 == 0) goto L17
                if (r1 != r2) goto Lf
                h9.o.b(r6)
                goto L25
            Lf:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L17:
                h9.o.b(r6)
                y6.a r6 = y6.a.f36997a
                r5.f36416s = r2
                java.lang.Object r6 = r6.c(r5)
                if (r6 != r0) goto L25
                return r0
            L25:
                java.util.Map r6 = (java.util.Map) r6
                boolean r0 = r6.isEmpty()
                java.lang.String r1 = "SessionLifecycleClient"
                if (r0 == 0) goto L35
                java.lang.String r6 = "Sessions SDK did not have any dependent SDKs register as dependencies. Events will not be sent."
                android.util.Log.d(r1, r6)
                goto La3
            L35:
                java.util.Collection r6 = r6.values()
                boolean r0 = r6 instanceof java.util.Collection
                r3 = 0
                if (r0 == 0) goto L46
                boolean r0 = r6.isEmpty()
                if (r0 == 0) goto L46
            L44:
                r6 = 1
                goto L5d
            L46:
                java.util.Iterator r6 = r6.iterator()
            L4a:
                boolean r0 = r6.hasNext()
                if (r0 == 0) goto L44
                java.lang.Object r0 = r6.next()
                y6.b r0 = (y6.b) r0
                boolean r0 = r0.b()
                if (r0 == 0) goto L4a
                r6 = 0
            L5d:
                if (r6 == 0) goto L65
                java.lang.String r6 = "Data Collection is disabled for all subscribers. Skipping this Event"
                android.util.Log.d(r1, r6)
                goto La3
            L65:
                r6 = 2
                android.os.Message[] r0 = new android.os.Message[r6]
                x6.g0 r1 = x6.g0.this
                java.util.List<android.os.Message> r4 = r5.f36418u
                android.os.Message r6 = x6.g0.b(r1, r4, r6)
                r0[r3] = r6
                x6.g0 r6 = x6.g0.this
                java.util.List<android.os.Message> r1 = r5.f36418u
                android.os.Message r6 = x6.g0.b(r6, r1, r2)
                r0[r2] = r6
                java.util.List r6 = i9.j.i(r0)
                java.util.List r6 = i9.j.t(r6)
                x6.g0$c$a r0 = new x6.g0$c$a
                r0.<init>()
                java.util.List r6 = i9.j.M(r6, r0)
                x6.g0 r0 = x6.g0.this
                java.util.Iterator r6 = r6.iterator()
            L93:
                boolean r1 = r6.hasNext()
                if (r1 == 0) goto La3
                java.lang.Object r1 = r6.next()
                android.os.Message r1 = (android.os.Message) r1
                x6.g0.e(r0, r1)
                goto L93
            La3:
                h9.t r6 = h9.t.f30301a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: x6.g0.c.i(java.lang.Object):java.lang.Object");
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super h9.t> dVar) {
            return ((c) d(o0Var, dVar)).i(h9.t.f30301a);
        }
    }

    /* JADX INFO: compiled from: SessionLifecycleClient.kt */
    public static final class d implements ServiceConnection {
        d() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d("SessionLifecycleClient", "Connected to SessionLifecycleService. Queue size " + g0.this.f36411d.size());
            g0.this.f36409b = new Messenger(iBinder);
            g0.this.f36410c = true;
            g0 g0Var = g0.this;
            g0Var.o(g0Var.j());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d("SessionLifecycleClient", "Disconnected from SessionLifecycleService");
            g0.this.f36409b = null;
            g0.this.f36410c = false;
        }
    }

    public g0(k9.g gVar) {
        t9.m.e(gVar, "backgroundDispatcher");
        this.f36408a = gVar;
        this.f36411d = new LinkedBlockingDeque<>(20);
        this.f36412e = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Message> j() {
        ArrayList arrayList = new ArrayList();
        this.f36411d.drainTo(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Message l(List<Message> list, int i10) {
        Object obj;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((Message) obj2).what == i10) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long when = ((Message) next).getWhen();
                do {
                    Object next2 = it.next();
                    long when2 = ((Message) next2).getWhen();
                    if (when < when2) {
                        next = next2;
                        when = when2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (Message) obj;
    }

    private final void m(Message message) {
        if (!this.f36411d.offer(message)) {
            Log.d("SessionLifecycleClient", "Failed to enqueue message " + message.what + ". Dropping.");
            return;
        }
        Log.d("SessionLifecycleClient", "Queued message " + message.what + ". Queue size " + this.f36411d.size());
    }

    private final void n(int i10) {
        List<Message> listJ = j();
        Message messageObtain = Message.obtain(null, i10, 0, 0);
        t9.m.d(messageObtain, "obtain(null, messageCode, 0, 0)");
        listJ.add(messageObtain);
        o(listJ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final x1 o(List<Message> list) {
        return da.j.b(p0.a(this.f36408a), null, null, new c(list, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(Message message) {
        if (this.f36409b == null) {
            m(message);
            return;
        }
        try {
            Log.d("SessionLifecycleClient", "Sending lifecycle " + message.what + " to service");
            Messenger messenger = this.f36409b;
            if (messenger != null) {
                messenger.send(message);
            }
        } catch (RemoteException e10) {
            Log.w("SessionLifecycleClient", "Unable to deliver message: " + message.what, e10);
            m(message);
        }
    }

    public final void h() {
        n(2);
    }

    public final void i() {
        h0.f36422a.a().a(new Messenger(new a(this.f36408a)), this.f36412e);
    }

    public final void k() {
        n(1);
    }
}
