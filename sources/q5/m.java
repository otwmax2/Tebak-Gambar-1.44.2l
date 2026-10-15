package q5;

import y6.b;

/* JADX INFO: compiled from: CrashlyticsAppQualitySessionsSubscriber.java */
/* JADX INFO: loaded from: classes2.dex */
public class m implements y6.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f33929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f33930b;

    public m(x xVar, v5.f fVar) {
        this.f33929a = xVar;
        this.f33930b = new l(fVar);
    }

    @Override // y6.b
    public void a(b.C0304b c0304b) {
        n5.g.f().b("App Quality Sessions session changed: " + c0304b);
        this.f33930b.h(c0304b.a());
    }

    @Override // y6.b
    public boolean b() {
        return this.f33929a.d();
    }

    @Override // y6.b
    public b.a c() {
        return b.a.CRASHLYTICS;
    }

    public String d(String str) {
        return this.f33930b.c(str);
    }

    public void e(String str) {
        this.f33930b.i(str);
    }
}
