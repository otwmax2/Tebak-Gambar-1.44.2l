package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzek {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object f24549h = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f24551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f24552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f24553d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f24554e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Object f24555f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile Object f24556g = null;

    /* synthetic */ zzek(String str, Object obj, Object obj2, m mVar, zzej zzejVar) {
        this.f24550a = str;
        this.f24552c = obj;
        this.f24553d = obj2;
        this.f24551b = mVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f24554e
            monitor-enter(r0)
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6e
            if (r4 == 0) goto L7
            return r4
        L7:
            com.google.android.gms.measurement.internal.zzaa r4 = com.google.android.gms.measurement.internal.n.f24224a
            if (r4 != 0) goto Le
            java.lang.Object r4 = r3.f24552c
            return r4
        Le:
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzek.f24549h
            monitor-enter(r4)
            boolean r0 = com.google.android.gms.measurement.internal.zzaa.a()     // Catch: java.lang.Throwable -> L6b
            if (r0 == 0) goto L22
            java.lang.Object r0 = r3.f24556g     // Catch: java.lang.Throwable -> L6b
            if (r0 != 0) goto L1e
            java.lang.Object r0 = r3.f24552c     // Catch: java.lang.Throwable -> L6b
            goto L20
        L1e:
            java.lang.Object r0 = r3.f24556g     // Catch: java.lang.Throwable -> L6b
        L20:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6b
            return r0
        L22:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6b
            java.util.List r4 = com.google.android.gms.measurement.internal.zzel.b()     // Catch: java.lang.SecurityException -> L58
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.SecurityException -> L58
        L2b:
            boolean r0 = r4.hasNext()     // Catch: java.lang.SecurityException -> L58
            if (r0 == 0) goto L59
            java.lang.Object r0 = r4.next()     // Catch: java.lang.SecurityException -> L58
            com.google.android.gms.measurement.internal.zzek r0 = (com.google.android.gms.measurement.internal.zzek) r0     // Catch: java.lang.SecurityException -> L58
            boolean r1 = com.google.android.gms.measurement.internal.zzaa.a()     // Catch: java.lang.SecurityException -> L58
            if (r1 != 0) goto L50
            r1 = 0
            com.google.android.gms.measurement.internal.m r2 = r0.f24551b     // Catch: java.lang.IllegalStateException -> L46 java.lang.SecurityException -> L58
            if (r2 == 0) goto L46
            java.lang.Object r1 = r2.zza()     // Catch: java.lang.IllegalStateException -> L46 java.lang.SecurityException -> L58
        L46:
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzek.f24549h     // Catch: java.lang.SecurityException -> L58
            monitor-enter(r2)     // Catch: java.lang.SecurityException -> L58
            r0.f24556g = r1     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4d
            goto L2b
        L4d:
            r4 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4d
            throw r4     // Catch: java.lang.SecurityException -> L58
        L50:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.SecurityException -> L58
            java.lang.String r0 = "Refreshing flag cache must be done on a worker thread."
            r4.<init>(r0)     // Catch: java.lang.SecurityException -> L58
            throw r4     // Catch: java.lang.SecurityException -> L58
        L58:
        L59:
            com.google.android.gms.measurement.internal.m r4 = r3.f24551b
            if (r4 != 0) goto L60
            java.lang.Object r4 = r3.f24552c
            return r4
        L60:
            java.lang.Object r4 = r4.zza()     // Catch: java.lang.IllegalStateException -> L65 java.lang.SecurityException -> L68
            return r4
        L65:
            java.lang.Object r4 = r3.f24552c
            return r4
        L68:
            java.lang.Object r4 = r3.f24552c
            return r4
        L6b:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6b
            throw r0
        L6e:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6e
            goto L72
        L71:
            throw r4
        L72:
            goto L71
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzek.a(java.lang.Object):java.lang.Object");
    }

    public final String b() {
        return this.f24550a;
    }
}
