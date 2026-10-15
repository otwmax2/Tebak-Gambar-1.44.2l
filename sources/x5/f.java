package x5;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.vungle.mediation.BuildConfig;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import q5.b0;
import q5.k0;
import q5.w;
import q5.x;
import q5.y;

/* JADX INFO: compiled from: SettingsController.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f36286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f36287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f36288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w f36289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x5.a f36290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k f36291f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final x f36292g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AtomicReference<d> f36293h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AtomicReference<TaskCompletionSource<d>> f36294i;

    /* JADX INFO: compiled from: SettingsController.java */
    class a implements SuccessContinuation<Void, Void> {
        a() {
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Task<Void> a(Void r52) throws Exception {
            JSONObject jSONObjectA = f.this.f36291f.a(f.this.f36287b, true);
            if (jSONObjectA != null) {
                d dVarB = f.this.f36288c.b(jSONObjectA);
                f.this.f36290e.c(dVarB.f36271c, jSONObjectA);
                f.this.q(jSONObjectA, "Loaded settings: ");
                f fVar = f.this;
                fVar.r(fVar.f36287b.f36302f);
                f.this.f36293h.set(dVarB);
                ((TaskCompletionSource) f.this.f36294i.get()).e(dVarB);
            }
            return Tasks.e(null);
        }
    }

    f(Context context, j jVar, w wVar, g gVar, x5.a aVar, k kVar, x xVar) {
        AtomicReference<d> atomicReference = new AtomicReference<>();
        this.f36293h = atomicReference;
        this.f36294i = new AtomicReference<>(new TaskCompletionSource());
        this.f36286a = context;
        this.f36287b = jVar;
        this.f36289d = wVar;
        this.f36288c = gVar;
        this.f36290e = aVar;
        this.f36291f = kVar;
        this.f36292g = xVar;
        atomicReference.set(b.b(wVar));
    }

    public static f l(Context context, String str, b0 b0Var, u5.b bVar, String str2, String str3, v5.f fVar, x xVar) {
        String strG = b0Var.g();
        k0 k0Var = new k0();
        return new f(context, new j(str, b0Var.h(), b0Var.i(), b0Var.j(), b0Var, q5.i.h(q5.i.m(context), str, str3, str2), str3, str2, y.c(strG).e()), k0Var, new g(k0Var), new x5.a(fVar), new c(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), bVar), xVar);
    }

    private d m(e eVar) throws Throwable {
        d dVar = null;
        try {
            if (!e.SKIP_CACHE_LOOKUP.equals(eVar)) {
                JSONObject jSONObjectB = this.f36290e.b();
                if (jSONObjectB != null) {
                    d dVarB = this.f36288c.b(jSONObjectB);
                    if (dVarB != null) {
                        q(jSONObjectB, "Loaded cached settings: ");
                        long jA = this.f36289d.a();
                        if (e.IGNORE_CACHE_EXPIRATION.equals(eVar) || !dVarB.a(jA)) {
                            try {
                                n5.g.f().i("Returning cached settings.");
                                dVar = dVarB;
                            } catch (Exception e10) {
                                e = e10;
                                dVar = dVarB;
                                n5.g.f().e("Failed to get cached settings", e);
                            }
                        } else {
                            n5.g.f().i("Cached settings have expired.");
                        }
                    } else {
                        n5.g.f().e("Failed to parse cached settings data.", null);
                    }
                } else {
                    n5.g.f().b("No cached settings data found.");
                }
            }
        } catch (Exception e11) {
            e = e11;
        }
        return dVar;
    }

    private String n() {
        return q5.i.q(this.f36286a).getString("existing_instance_identifier", BuildConfig.FLAVOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(JSONObject jSONObject, String str) throws JSONException {
        n5.g.f().b(str + jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public boolean r(String str) {
        SharedPreferences.Editor editorEdit = q5.i.q(this.f36286a).edit();
        editorEdit.putString("existing_instance_identifier", str);
        editorEdit.apply();
        return true;
    }

    @Override // x5.i
    public Task<d> a() {
        return this.f36294i.get().a();
    }

    @Override // x5.i
    public d b() {
        return this.f36293h.get();
    }

    boolean k() {
        return !n().equals(this.f36287b.f36302f);
    }

    public Task<Void> o(Executor executor) {
        return p(e.USE_CACHE, executor);
    }

    public Task<Void> p(e eVar, Executor executor) throws Throwable {
        d dVarM;
        if (!k() && (dVarM = m(eVar)) != null) {
            this.f36293h.set(dVarM);
            this.f36294i.get().e(dVarM);
            return Tasks.e(null);
        }
        d dVarM2 = m(e.IGNORE_CACHE_EXPIRATION);
        if (dVarM2 != null) {
            this.f36293h.set(dVarM2);
            this.f36294i.get().e(dVarM2);
        }
        return this.f36292g.i(executor).v(executor, new a());
    }
}
