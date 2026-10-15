package com.google.android.gms.common.internal;

import android.util.Log;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f7508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7509b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ BaseGmsClient f7510c;

    public zzc(BaseGmsClient baseGmsClient, Object obj) {
        this.f7510c = baseGmsClient;
        this.f7508a = obj;
    }

    protected abstract void a(Object obj);

    protected abstract void b();

    public final void c() {
        Object obj;
        synchronized (this) {
            obj = this.f7508a;
            if (this.f7509b) {
                Log.w("GmsClient", "Callback proxy " + toString() + " being reused. This is not safe.");
            }
        }
        if (obj != null) {
            try {
                a(obj);
            } catch (RuntimeException e10) {
                throw e10;
            }
        }
        synchronized (this) {
            this.f7509b = true;
        }
        e();
    }

    public final void d() {
        synchronized (this) {
            this.f7508a = null;
        }
    }

    public final void e() {
        d();
        synchronized (this.f7510c.F) {
            this.f7510c.F.remove(this);
        }
    }
}
