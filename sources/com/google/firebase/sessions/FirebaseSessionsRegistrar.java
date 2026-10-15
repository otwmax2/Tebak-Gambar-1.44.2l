package com.google.firebase.sessions;

import android.content.Context;
import androidx.annotation.Keep;
import b5.g;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import da.i0;
import f5.b;
import java.util.List;
import k5.c;
import k5.f0;
import k5.r;
import l6.e;
import t9.m;
import x6.c0;
import x6.d0;
import x6.e0;
import x6.h;
import x6.h0;
import x6.l;
import x6.l0;
import x6.x;
import x6.y;
import z6.f;

/* JADX INFO: compiled from: FirebaseSessionsRegistrar.kt */
/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {

    @Deprecated
    private static final String LIBRARY_NAME = "fire-sessions";
    private static final a Companion = new a(null);

    @Deprecated
    private static final f0<g> firebaseApp = f0.b(g.class);

    @Deprecated
    private static final f0<e> firebaseInstallationsApi = f0.b(e.class);

    @Deprecated
    private static final f0<i0> backgroundDispatcher = f0.a(f5.a.class, i0.class);

    @Deprecated
    private static final f0<i0> blockingDispatcher = f0.a(b.class, i0.class);

    @Deprecated
    private static final f0<j3.g> transportFactory = f0.b(j3.g.class);

    @Deprecated
    private static final f0<c0> sessionFirelogPublisher = f0.b(c0.class);

    @Deprecated
    private static final f0<e0> sessionGenerator = f0.b(e0.class);

    @Deprecated
    private static final f0<f> sessionsSettings = f0.b(f.class);

    /* JADX INFO: compiled from: FirebaseSessionsRegistrar.kt */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-0, reason: not valid java name */
    public static final l m169getComponents$lambda0(k5.e eVar) {
        Object objE = eVar.e(firebaseApp);
        m.d(objE, "container[firebaseApp]");
        Object objE2 = eVar.e(sessionsSettings);
        m.d(objE2, "container[sessionsSettings]");
        Object objE3 = eVar.e(backgroundDispatcher);
        m.d(objE3, "container[backgroundDispatcher]");
        return new l((g) objE, (f) objE2, (k9.g) objE3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-1, reason: not valid java name */
    public static final e0 m170getComponents$lambda1(k5.e eVar) {
        return new e0(l0.f36440a, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-2, reason: not valid java name */
    public static final c0 m171getComponents$lambda2(k5.e eVar) {
        Object objE = eVar.e(firebaseApp);
        m.d(objE, "container[firebaseApp]");
        g gVar = (g) objE;
        Object objE2 = eVar.e(firebaseInstallationsApi);
        m.d(objE2, "container[firebaseInstallationsApi]");
        e eVar2 = (e) objE2;
        Object objE3 = eVar.e(sessionsSettings);
        m.d(objE3, "container[sessionsSettings]");
        f fVar = (f) objE3;
        k6.b bVarB = eVar.b(transportFactory);
        m.d(bVarB, "container.getProvider(transportFactory)");
        h hVar = new h(bVarB);
        Object objE4 = eVar.e(backgroundDispatcher);
        m.d(objE4, "container[backgroundDispatcher]");
        return new d0(gVar, eVar2, fVar, hVar, (k9.g) objE4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-3, reason: not valid java name */
    public static final f m172getComponents$lambda3(k5.e eVar) {
        Object objE = eVar.e(firebaseApp);
        m.d(objE, "container[firebaseApp]");
        Object objE2 = eVar.e(blockingDispatcher);
        m.d(objE2, "container[blockingDispatcher]");
        Object objE3 = eVar.e(backgroundDispatcher);
        m.d(objE3, "container[backgroundDispatcher]");
        Object objE4 = eVar.e(firebaseInstallationsApi);
        m.d(objE4, "container[firebaseInstallationsApi]");
        return new f((g) objE, (k9.g) objE2, (k9.g) objE3, (e) objE4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-4, reason: not valid java name */
    public static final x m173getComponents$lambda4(k5.e eVar) {
        Context contextL = ((g) eVar.e(firebaseApp)).l();
        m.d(contextL, "container[firebaseApp].applicationContext");
        Object objE = eVar.e(backgroundDispatcher);
        m.d(objE, "container[backgroundDispatcher]");
        return new y(contextL, (k9.g) objE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-5, reason: not valid java name */
    public static final h0 m174getComponents$lambda5(k5.e eVar) {
        Object objE = eVar.e(firebaseApp);
        m.d(objE, "container[firebaseApp]");
        return new x6.i0((g) objE);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<? extends Object>> getComponents() {
        c.b bVarH = c.c(l.class).h(LIBRARY_NAME);
        f0<g> f0Var = firebaseApp;
        c.b bVarB = bVarH.b(r.k(f0Var));
        f0<f> f0Var2 = sessionsSettings;
        c.b bVarB2 = bVarB.b(r.k(f0Var2));
        f0<i0> f0Var3 = backgroundDispatcher;
        c.b bVarB3 = c.c(c0.class).h("session-publisher").b(r.k(f0Var));
        f0<e> f0Var4 = firebaseInstallationsApi;
        return i9.l.g(bVarB2.b(r.k(f0Var3)).f(new k5.h() { // from class: x6.r
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return FirebaseSessionsRegistrar.m169getComponents$lambda0(eVar);
            }
        }).e().d(), c.c(e0.class).h("session-generator").f(new k5.h() { // from class: x6.o
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return FirebaseSessionsRegistrar.m170getComponents$lambda1(eVar);
            }
        }).d(), bVarB3.b(r.k(f0Var4)).b(r.k(f0Var2)).b(r.m(transportFactory)).b(r.k(f0Var3)).f(new k5.h() { // from class: x6.q
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return FirebaseSessionsRegistrar.m171getComponents$lambda2(eVar);
            }
        }).d(), c.c(f.class).h("sessions-settings").b(r.k(f0Var)).b(r.k(blockingDispatcher)).b(r.k(f0Var3)).b(r.k(f0Var4)).f(new k5.h() { // from class: x6.s
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return FirebaseSessionsRegistrar.m172getComponents$lambda3(eVar);
            }
        }).d(), c.c(x.class).h("sessions-datastore").b(r.k(f0Var)).b(r.k(f0Var3)).f(new k5.h() { // from class: x6.p
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return FirebaseSessionsRegistrar.m173getComponents$lambda4(eVar);
            }
        }).d(), c.c(h0.class).h("sessions-service-binder").b(r.k(f0Var)).f(new k5.h() { // from class: x6.n
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return FirebaseSessionsRegistrar.m174getComponents$lambda5(eVar);
            }
        }).d(), t6.h.b(LIBRARY_NAME, "1.2.0"));
    }
}
