package e8;

import e8.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class c implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue<Runnable> f28964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadPoolExecutor f28965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque<b> f28966c = new ArrayDeque<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f28967d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f28964a = linkedBlockingQueue;
        this.f28965b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b bVarPoll = this.f28966c.poll();
        this.f28967d = bVarPoll;
        if (bVarPoll != null) {
            bVarPoll.c(this.f28965b);
        }
    }

    @Override // e8.b.a
    public void a(b bVar) {
        this.f28967d = null;
        b();
    }

    public void c(b bVar) {
        bVar.a(this);
        this.f28966c.add(bVar);
        if (this.f28967d == null) {
            b();
        }
    }
}
