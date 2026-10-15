package com.google.firebase.remoteconfig;

import android.content.Context;
import android.util.Log;
import b5.g;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.internal.e;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.k;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import u6.j;

/* JADX INFO: compiled from: FirebaseRemoteConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final byte[] f26572l = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f26573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f26574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c5.c f26575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f26576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f26577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f26578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e f26579g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final k f26580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final m f26581i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n f26582j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final l6.e f26583k;

    a(Context context, g gVar, l6.e eVar, c5.c cVar, Executor executor, e eVar2, e eVar3, e eVar4, k kVar, m mVar, n nVar) {
        this.f26573a = context;
        this.f26574b = gVar;
        this.f26583k = eVar;
        this.f26575c = cVar;
        this.f26576d = executor;
        this.f26577e = eVar2;
        this.f26578f = eVar3;
        this.f26579g = eVar4;
        this.f26580h = kVar;
        this.f26581i = mVar;
        this.f26582j = nVar;
    }

    public static a i() {
        return j(g.m());
    }

    public static a j(g gVar) {
        return ((c) gVar.j(c.class)).d();
    }

    private static boolean m(f fVar, f fVar2) {
        return fVar2 == null || !fVar.e().equals(fVar2.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task n(Task task, Task task2, Task task3) throws Exception {
        if (!task.t() || task.p() == null) {
            return Tasks.e(Boolean.FALSE);
        }
        f fVar = (f) task.p();
        return (!task2.t() || m(fVar, (f) task2.p())) ? this.f26578f.k(fVar).l(this.f26576d, new Continuation() { // from class: u6.a
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task4) {
                return Boolean.valueOf(this.f35599a.r(task4));
            }
        }) : Tasks.e(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task o(k.a aVar) throws Exception {
        return Tasks.e(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void p(j jVar) throws Exception {
        this.f26582j.g(jVar);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task q(f fVar) throws Exception {
        return Tasks.e(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(Task<f> task) {
        if (!task.t()) {
            return false;
        }
        this.f26577e.d();
        if (task.p() != null) {
            x(task.p().c());
            return true;
        }
        Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
        return true;
    }

    private Task<Void> u(Map<String, String> map) {
        try {
            return this.f26579g.k(f.g().b(map).a()).u(new SuccessContinuation() { // from class: u6.c
                @Override // com.google.android.gms.tasks.SuccessContinuation
                public final Task a(Object obj) {
                    return com.google.firebase.remoteconfig.a.q((com.google.firebase.remoteconfig.internal.f) obj);
                }
            });
        } catch (JSONException e10) {
            Log.e("FirebaseRemoteConfig", "The provided defaults map could not be processed.", e10);
            return Tasks.e(null);
        }
    }

    static List<Map<String, String>> w(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            HashMap map = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            arrayList.add(map);
        }
        return arrayList;
    }

    public Task<Boolean> f() {
        final Task<f> taskE = this.f26577e.e();
        final Task<f> taskE2 = this.f26578f.e();
        return Tasks.i(taskE, taskE2).n(this.f26576d, new Continuation() { // from class: u6.b
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task) {
                return this.f35600a.n(taskE, taskE2, task);
            }
        });
    }

    public Task<Void> g(long j10) {
        return this.f26580h.h(j10).u(new SuccessContinuation() { // from class: u6.d
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task a(Object obj) {
                return com.google.firebase.remoteconfig.a.o((k.a) obj);
            }
        });
    }

    public boolean h(String str) {
        return this.f26581i.d(str);
    }

    public long k(String str) {
        return this.f26581i.f(str);
    }

    public String l(String str) {
        return this.f26581i.h(str);
    }

    public Task<Void> s(final j jVar) {
        return Tasks.c(this.f26576d, new Callable() { // from class: u6.e
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35605a.p(jVar);
            }
        });
    }

    public Task<Void> t(int i10) {
        return u(p.a(this.f26573a, i10));
    }

    void v() {
        this.f26578f.e();
        this.f26579g.e();
        this.f26577e.e();
    }

    void x(JSONArray jSONArray) {
        if (this.f26575c == null) {
            return;
        }
        try {
            this.f26575c.k(w(jSONArray));
        } catch (c5.a e10) {
            Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e10);
        } catch (JSONException e11) {
            Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e11);
        }
    }
}
