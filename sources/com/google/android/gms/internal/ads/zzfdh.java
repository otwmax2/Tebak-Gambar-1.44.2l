package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f17944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbzf f17945b;

    public zzfdh(Executor executor, zzbzf zzbzfVar) {
        this.f17944a = executor;
        this.f17945b = zzbzfVar;
    }

    final /* synthetic */ void a(String str) {
        this.f17945b.o(str);
    }

    public final void b(final String str) {
        this.f17944a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdg
            @Override // java.lang.Runnable
            public final void run() {
                this.f17942o.a(str);
            }
        });
    }
}
