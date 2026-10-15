package com.google.android.gms.internal.games;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f23181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23182c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f23180a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashMap<String, AtomicInteger> f23183d = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23184e = 1000;

    public zzfd(Looper looper, int i10) {
        this.f23181b = new zzfk(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        synchronized (this.f23180a) {
            this.f23182c = false;
            a();
        }
    }

    public final void a() {
        synchronized (this.f23180a) {
            for (Map.Entry<String, AtomicInteger> entry : this.f23183d.entrySet()) {
                d(entry.getKey(), entry.getValue().get());
            }
            this.f23183d.clear();
        }
    }

    protected abstract void d(String str, int i10);

    public final void e(String str, int i10) {
        synchronized (this.f23180a) {
            if (!this.f23182c) {
                this.f23182c = true;
                this.f23181b.postDelayed(new zzfc(this), this.f23184e);
            }
            AtomicInteger atomicInteger = this.f23183d.get(str);
            if (atomicInteger == null) {
                atomicInteger = new AtomicInteger();
                this.f23183d.put(str, atomicInteger);
            }
            atomicInteger.addAndGet(i10);
        }
    }
}
