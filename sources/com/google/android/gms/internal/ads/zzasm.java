package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzasm implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f9854a = getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final zzaqx f9855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final String f9856c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final String f9857d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final zzamv f9858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Method f9859f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final int f9860g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final int f9861h;

    public zzasm(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        this.f9855b = zzaqxVar;
        this.f9856c = str;
        this.f9857d = str2;
        this.f9858e = zzamvVar;
        this.f9860g = i10;
        this.f9861h = i11;
    }

    protected abstract void a() throws IllegalAccessException, InvocationTargetException;

    public Void b() throws Exception {
        int i10;
        try {
            long jNanoTime = System.nanoTime();
            Method methodJ = this.f9855b.j(this.f9856c, this.f9857d);
            this.f9859f = methodJ;
            if (methodJ == null) {
                return null;
            }
            a();
            zzapr zzaprVarD = this.f9855b.d();
            if (zzaprVarD != null && (i10 = this.f9860g) != Integer.MIN_VALUE) {
                zzaprVarD.c(this.f9861h, i10, (System.nanoTime() - jNanoTime) / 1000, null, null);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return null;
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() throws Exception {
        b();
        return null;
    }
}
