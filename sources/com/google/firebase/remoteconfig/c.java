package com.google.firebase.remoteconfig;

import android.content.Context;
import b5.g;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.k;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.q;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import l6.e;

/* JADX INFO: compiled from: RemoteConfigComponent.java */
/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public class c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Clock f26585j = DefaultClock.d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Random f26586k = new Random();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, a> f26587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f26588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f26589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g f26590d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f26591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c5.c f26592f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k6.b<e5.a> f26593g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f26594h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, String> f26595i;

    c(Context context, g gVar, e eVar, c5.c cVar, k6.b<e5.a> bVar) {
        this(context, Executors.newCachedThreadPool(), gVar, eVar, cVar, bVar, true);
    }

    private com.google.firebase.remoteconfig.internal.e c(String str, String str2) {
        return com.google.firebase.remoteconfig.internal.e.h(Executors.newCachedThreadPool(), o.c(this.f26588b, String.format("%s_%s_%s_%s.json", "frc", this.f26594h, str, str2)));
    }

    private m g(com.google.firebase.remoteconfig.internal.e eVar, com.google.firebase.remoteconfig.internal.e eVar2) {
        return new m(this.f26589c, eVar, eVar2);
    }

    static n h(Context context, String str, String str2) {
        return new n(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    private static q i(g gVar, String str, k6.b<e5.a> bVar) {
        if (k(gVar) && str.equals("firebase")) {
            return new q(bVar);
        }
        return null;
    }

    private static boolean j(g gVar, String str) {
        return str.equals("firebase") && k(gVar);
    }

    private static boolean k(g gVar) {
        return gVar.o().equals("[DEFAULT]");
    }

    synchronized a a(g gVar, String str, e eVar, c5.c cVar, Executor executor, com.google.firebase.remoteconfig.internal.e eVar2, com.google.firebase.remoteconfig.internal.e eVar3, com.google.firebase.remoteconfig.internal.e eVar4, k kVar, m mVar, n nVar) {
        if (!this.f26587a.containsKey(str)) {
            a aVar = new a(this.f26588b, gVar, eVar, j(gVar, str) ? cVar : null, executor, eVar2, eVar3, eVar4, kVar, mVar, nVar);
            aVar.v();
            this.f26587a.put(str, aVar);
        }
        return this.f26587a.get(str);
    }

    @KeepForSdk
    public synchronized a b(String str) {
        com.google.firebase.remoteconfig.internal.e eVarC;
        com.google.firebase.remoteconfig.internal.e eVarC2;
        com.google.firebase.remoteconfig.internal.e eVarC3;
        n nVarH;
        m mVarG;
        eVarC = c(str, "fetch");
        eVarC2 = c(str, "activate");
        eVarC3 = c(str, "defaults");
        nVarH = h(this.f26588b, this.f26594h, str);
        mVarG = g(eVarC2, eVarC3);
        final q qVarI = i(this.f26590d, str, this.f26593g);
        if (qVarI != null) {
            mVarG.b(new BiConsumer() { // from class: u6.k
                @Override // com.google.android.gms.common.util.BiConsumer
                public final void a(Object obj, Object obj2) {
                    qVarI.a((String) obj, (com.google.firebase.remoteconfig.internal.f) obj2);
                }
            });
        }
        return a(this.f26590d, str, this.f26591e, this.f26592f, this.f26589c, eVarC, eVarC2, eVarC3, e(str, eVarC, nVarH), mVarG, nVarH);
    }

    a d() {
        return b("firebase");
    }

    synchronized k e(String str, com.google.firebase.remoteconfig.internal.e eVar, n nVar) {
        return new k(this.f26591e, k(this.f26590d) ? this.f26593g : null, this.f26589c, f26585j, f26586k, eVar, f(this.f26590d.p().b(), str, nVar), nVar, this.f26595i);
    }

    ConfigFetchHttpClient f(String str, String str2, n nVar) {
        return new ConfigFetchHttpClient(this.f26588b, this.f26590d.p().c(), str, str2, nVar.b(), nVar.b());
    }

    protected c(Context context, ExecutorService executorService, g gVar, e eVar, c5.c cVar, k6.b<e5.a> bVar, boolean z10) {
        this.f26587a = new HashMap();
        this.f26595i = new HashMap();
        this.f26588b = context;
        this.f26589c = executorService;
        this.f26590d = gVar;
        this.f26591e = eVar;
        this.f26592f = cVar;
        this.f26593g = bVar;
        this.f26594h = gVar.p().c();
        if (z10) {
            Tasks.c(executorService, new Callable() { // from class: com.google.firebase.remoteconfig.b
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f26584a.d();
                }
            });
        }
    }
}
