package y4;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class v implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CountDownLatch f36987a = new CountDownLatch(1);

    /* synthetic */ v(u uVar) {
    }

    public final void a() throws InterruptedException {
        this.f36987a.await();
    }

    @Override // y4.b
    public final void b(Exception exc) {
        this.f36987a.countDown();
    }

    @Override // y4.c
    public final void onSuccess(Object obj) {
        this.f36987a.countDown();
    }
}
