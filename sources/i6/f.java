package i6;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.core.os.n;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.vungle.mediation.BuildConfig;
import i6.j;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import k5.f0;
import k5.r;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: DefaultHeartBeatController.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements i, j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k6.b<k> f30488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f30489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k6.b<t6.i> f30490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<g> f30491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f30492e;

    private f(final Context context, final String str, Set<g> set, k6.b<t6.i> bVar, Executor executor) {
        this((k6.b<k>) new k6.b() { // from class: i6.e
            @Override // k6.b
            public final Object get() {
                return f.j(context, str);
            }
        }, set, executor, bVar, context);
    }

    public static k5.c<f> g() {
        final f0 f0VarA = f0.a(f5.a.class, Executor.class);
        return k5.c.d(f.class, i.class, j.class).b(r.j(Context.class)).b(r.j(b5.g.class)).b(r.n(g.class)).b(r.l(t6.i.class)).b(r.k(f0VarA)).f(new k5.h() { // from class: i6.d
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return f.h(f0VarA, eVar);
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f h(f0 f0Var, k5.e eVar) {
        return new f((Context) eVar.a(Context.class), ((b5.g) eVar.a(b5.g.class)).q(), (Set<g>) eVar.g(g.class), (k6.b<t6.i>) eVar.c(t6.i.class), (Executor) eVar.e(f0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String i() throws Exception {
        String string;
        synchronized (this) {
            k kVar = this.f30488a.get();
            List<l> listC = kVar.c();
            kVar.b();
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < listC.size(); i10++) {
                l lVar = listC.get(i10);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("agent", lVar.c());
                jSONObject.put("dates", new JSONArray((Collection) lVar.b()));
                jSONArray.put(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("heartbeats", jSONArray);
            jSONObject2.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "2");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                try {
                    gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                    gZIPOutputStream.close();
                    base64OutputStream.close();
                    string = byteArrayOutputStream.toString("UTF-8");
                } finally {
                }
            } finally {
            }
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k j(Context context, String str) {
        return new k(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void k() throws Exception {
        synchronized (this) {
            this.f30488a.get().k(System.currentTimeMillis(), this.f30490c.get().a());
        }
        return null;
    }

    @Override // i6.i
    public Task<String> a() {
        return n.a(this.f30489b) ^ true ? Tasks.e(BuildConfig.FLAVOR) : Tasks.c(this.f30492e, new Callable() { // from class: i6.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f30484a.i();
            }
        });
    }

    @Override // i6.j
    public synchronized j.a b(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        k kVar = this.f30488a.get();
        if (!kVar.i(jCurrentTimeMillis)) {
            return j.a.NONE;
        }
        kVar.g();
        return j.a.GLOBAL;
    }

    public Task<Void> l() {
        return this.f30491d.size() <= 0 ? Tasks.e(null) : n.a(this.f30489b) ^ true ? Tasks.e(null) : Tasks.c(this.f30492e, new Callable() { // from class: i6.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f30483a.k();
            }
        });
    }

    f(k6.b<k> bVar, Set<g> set, Executor executor, k6.b<t6.i> bVar2, Context context) {
        this.f30488a = bVar;
        this.f30491d = set;
        this.f30492e = executor;
        this.f30490c = bVar2;
        this.f30489b = context;
    }
}
