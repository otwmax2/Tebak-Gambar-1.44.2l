package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: GuestSessionProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OAuth2Service f27425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n<e> f27426b;

    /* JADX INFO: compiled from: GuestSessionProvider.java */
    class a extends c<com.twitter.sdk.android.core.internal.oauth.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f27427a;

        a(CountDownLatch countDownLatch) {
            this.f27427a = countDownLatch;
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            f.this.f27426b.b(0L);
            this.f27427a.countDown();
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<com.twitter.sdk.android.core.internal.oauth.a> lVar) {
            f.this.f27426b.d(new e(lVar.f27482a));
            this.f27427a.countDown();
        }
    }

    public f(OAuth2Service oAuth2Service, n<e> nVar) {
        this.f27425a = oAuth2Service;
        this.f27426b = nVar;
    }

    public synchronized e b() {
        e eVar = (e) this.f27426b.c();
        if (c(eVar)) {
            return eVar;
        }
        e();
        return (e) this.f27426b.c();
    }

    boolean c(e eVar) {
        return (eVar == null || eVar.a() == null || eVar.a().w()) ? false : true;
    }

    public synchronized e d(e eVar) {
        e eVar2 = (e) this.f27426b.c();
        if (eVar != null && eVar.equals(eVar2)) {
            e();
        }
        return (e) this.f27426b.c();
    }

    void e() {
        o.g().c("GuestSessionProvider", "Refreshing expired guest session.");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f27425a.j(new a(countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            this.f27426b.b(0L);
        }
    }
}
