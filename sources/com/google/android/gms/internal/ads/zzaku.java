package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaku {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f9460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzajx f9461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzakx f9462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f9463d;

    private zzaku(zzakx zzakxVar) {
        this.f9463d = false;
        this.f9460a = null;
        this.f9461b = null;
        this.f9462c = zzakxVar;
    }

    private zzaku(Object obj, zzajx zzajxVar) {
        this.f9463d = false;
        this.f9460a = obj;
        this.f9461b = zzajxVar;
        this.f9462c = null;
    }

    public static zzaku a(zzakx zzakxVar) {
        return new zzaku(zzakxVar);
    }

    public static zzaku b(Object obj, zzajx zzajxVar) {
        return new zzaku(obj, zzajxVar);
    }

    public final boolean c() {
        return this.f9462c == null;
    }
}
