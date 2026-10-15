package b5;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.provider.FirebaseInitProvider;
import com.vungle.mediation.BuildConfig;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import k5.o;
import k5.x;

/* JADX INFO: compiled from: FirebaseApp.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Object f4656k = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final Map<String, g> f4657l = new o.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q f4660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k5.o f4661d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final x<q6.a> f4664g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final k6.b<i6.f> f4665h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f4662e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f4663f = new AtomicBoolean();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List<a> f4666i = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List<h> f4667j = new CopyOnWriteArrayList();

    /* JADX INFO: compiled from: FirebaseApp.java */
    /* JADX INFO: loaded from: classes2.dex */
    @KeepForSdk
    public interface a {
        @KeepForSdk
        void a(boolean z10);
    }

    /* JADX INFO: compiled from: FirebaseApp.java */
    /* JADX INFO: loaded from: classes2.dex */
    @TargetApi(14)
    private static class b implements BackgroundDetector.BackgroundStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static AtomicReference<b> f4668a = new AtomicReference<>();

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c(Context context) {
            if (PlatformVersion.a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f4668a.get() == null) {
                    b bVar = new b();
                    if (f4668a.compareAndSet(null, bVar)) {
                        BackgroundDetector.c(application);
                        BackgroundDetector.b().a(bVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void a(boolean z10) {
            synchronized (g.f4656k) {
                for (g gVar : new ArrayList(g.f4657l.values())) {
                    if (gVar.f4662e.get()) {
                        gVar.A(z10);
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: FirebaseApp.java */
    /* JADX INFO: loaded from: classes2.dex */
    @TargetApi(24)
    private static class c extends BroadcastReceiver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<c> f4669b = new AtomicReference<>();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f4670a;

        public c(Context context) {
            this.f4670a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (f4669b.get() == null) {
                c cVar = new c(context);
                if (f4669b.compareAndSet(null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.f4670a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (g.f4656k) {
                Iterator<g> it = g.f4657l.values().iterator();
                while (it.hasNext()) {
                    it.next().r();
                }
            }
            c();
        }
    }

    protected g(final Context context, String str, q qVar) {
        this.f4658a = (Context) Preconditions.k(context);
        this.f4659b = Preconditions.g(str);
        this.f4660c = (q) Preconditions.k(qVar);
        s sVarB = FirebaseInitProvider.b();
        a7.c.b("Firebase");
        a7.c.b("ComponentDiscovery");
        List<k6.b<ComponentRegistrar>> listB = k5.g.c(context, ComponentDiscoveryService.class).b();
        a7.c.a();
        a7.c.b("Runtime");
        o.b bVarG = k5.o.m(l5.k.INSTANCE).d(listB).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(k5.c.s(context, Context.class, new Class[0])).b(k5.c.s(this, g.class, new Class[0])).b(k5.c.s(qVar, q.class, new Class[0])).g(new a7.b());
        if (androidx.core.os.n.a(context) && FirebaseInitProvider.c()) {
            bVarG.b(k5.c.s(sVarB, s.class, new Class[0]));
        }
        k5.o oVarE = bVarG.e();
        this.f4661d = oVarE;
        a7.c.a();
        this.f4664g = new x<>(new k6.b() { // from class: b5.f
            @Override // k6.b
            public final Object get() {
                return this.f4654a.x(context);
            }
        });
        this.f4665h = oVarE.c(i6.f.class);
        g(new a() { // from class: b5.e
            @Override // b5.g.a
            public final void a(boolean z10) {
                this.f4653a.y(z10);
            }
        });
        a7.c.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(boolean z10) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        Iterator<a> it = this.f4666i.iterator();
        while (it.hasNext()) {
            it.next().a(z10);
        }
    }

    private void i() {
        Preconditions.o(!this.f4663f.get(), "FirebaseApp was deleted");
    }

    private static List<String> k() {
        ArrayList arrayList = new ArrayList();
        synchronized (f4656k) {
            Iterator<g> it = f4657l.values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().o());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static g m() {
        g gVar;
        synchronized (f4656k) {
            gVar = f4657l.get("[DEFAULT]");
            if (gVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
            gVar.f4665h.get().l();
        }
        return gVar;
    }

    public static g n(String str) {
        g gVar;
        String str2;
        synchronized (f4656k) {
            gVar = f4657l.get(z(str));
            if (gVar == null) {
                List<String> listK = k();
                if (listK.isEmpty()) {
                    str2 = BuildConfig.FLAVOR;
                } else {
                    str2 = "Available app names: " + TextUtils.join(", ", listK);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
            }
            gVar.f4665h.get().l();
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (!androidx.core.os.n.a(this.f4658a)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + o());
            c.b(this.f4658a);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + o());
        this.f4661d.p(w());
        this.f4665h.get().l();
    }

    public static g s(Context context) {
        synchronized (f4656k) {
            if (f4657l.containsKey("[DEFAULT]")) {
                return m();
            }
            q qVarA = q.a(context);
            if (qVarA == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return t(context, qVarA);
        }
    }

    public static g t(Context context, q qVar) {
        return u(context, qVar, "[DEFAULT]");
    }

    public static g u(Context context, q qVar, String str) {
        g gVar;
        b.c(context);
        String strZ = z(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f4656k) {
            Map<String, g> map = f4657l;
            Preconditions.o(!map.containsKey(strZ), "FirebaseApp name " + strZ + " already exists!");
            Preconditions.l(context, "Application context cannot be null.");
            gVar = new g(context, strZ, qVar);
            map.put(strZ, gVar);
        }
        gVar.r();
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ q6.a x(Context context) {
        return new q6.a(context, q(), (h6.c) this.f4661d.a(h6.c.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(boolean z10) {
        if (z10) {
            return;
        }
        this.f4665h.get().l();
    }

    private static String z(String str) {
        return str.trim();
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f4659b.equals(((g) obj).o());
        }
        return false;
    }

    @KeepForSdk
    public void g(a aVar) {
        i();
        if (this.f4662e.get() && BackgroundDetector.b().d()) {
            aVar.a(true);
        }
        this.f4666i.add(aVar);
    }

    @KeepForSdk
    public void h(h hVar) {
        i();
        Preconditions.k(hVar);
        this.f4667j.add(hVar);
    }

    public int hashCode() {
        return this.f4659b.hashCode();
    }

    @KeepForSdk
    public <T> T j(Class<T> cls) {
        i();
        return (T) this.f4661d.a(cls);
    }

    public Context l() {
        i();
        return this.f4658a;
    }

    public String o() {
        i();
        return this.f4659b;
    }

    public q p() {
        i();
        return this.f4660c;
    }

    @KeepForSdk
    public String q() {
        return Base64Utils.e(o().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.e(p().c().getBytes(Charset.defaultCharset()));
    }

    public String toString() {
        return Objects.d(this).a("name", this.f4659b).a(SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, this.f4660c).toString();
    }

    @KeepForSdk
    public boolean v() {
        i();
        return this.f4664g.get().b();
    }

    @KeepForSdk
    public boolean w() {
        return "[DEFAULT]".equals(o());
    }
}
