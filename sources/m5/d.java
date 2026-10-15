package m5;

import android.os.Bundle;
import e5.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import k6.a;
import n5.g;

/* JADX INFO: compiled from: AnalyticsDeferredProxy.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k6.a<e5.a> f32173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile o5.a f32174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile p5.b f32175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<p5.a> f32176d;

    public d(k6.a<e5.a> aVar) {
        this(aVar, new p5.c(), new o5.f());
    }

    private void f() {
        this.f32173a.a(new a.InterfaceC0188a() { // from class: m5.a
            @Override // k6.a.InterfaceC0188a
            public final void a(k6.b bVar) {
                this.f32170a.i(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(String str, Bundle bundle) {
        this.f32174b.a(str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(p5.a aVar) {
        synchronized (this) {
            if (this.f32175c instanceof p5.c) {
                this.f32176d.add(aVar);
            }
            this.f32175c.a(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(k6.b bVar) {
        g.f().b("AnalyticsConnector now available.");
        e5.a aVar = (e5.a) bVar.get();
        o5.e eVar = new o5.e(aVar);
        e eVar2 = new e();
        if (j(aVar, eVar2) == null) {
            g.f().k("Could not register Firebase Analytics listener; a listener is already registered.");
            return;
        }
        g.f().b("Registered Firebase Analytics listener.");
        o5.d dVar = new o5.d();
        o5.c cVar = new o5.c(eVar, 500, TimeUnit.MILLISECONDS);
        synchronized (this) {
            Iterator<p5.a> it = this.f32176d.iterator();
            while (it.hasNext()) {
                dVar.a(it.next());
            }
            eVar2.d(dVar);
            eVar2.e(cVar);
            this.f32175c = dVar;
            this.f32174b = cVar;
        }
    }

    private static a.InterfaceC0154a j(e5.a aVar, e eVar) {
        a.InterfaceC0154a interfaceC0154aF = aVar.f("clx", eVar);
        if (interfaceC0154aF == null) {
            g.f().b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            interfaceC0154aF = aVar.f("crash", eVar);
            if (interfaceC0154aF != null) {
                g.f().k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return interfaceC0154aF;
    }

    public o5.a d() {
        return new o5.a() { // from class: m5.b
            @Override // o5.a
            public final void a(String str, Bundle bundle) {
                this.f32171a.g(str, bundle);
            }
        };
    }

    public p5.b e() {
        return new p5.b() { // from class: m5.c
            @Override // p5.b
            public final void a(p5.a aVar) {
                this.f32172a.h(aVar);
            }
        };
    }

    public d(k6.a<e5.a> aVar, p5.b bVar, o5.a aVar2) {
        this.f32173a = aVar;
        this.f32175c = bVar;
        this.f32176d = new ArrayList();
        this.f32174b = aVar2;
        f();
    }
}
