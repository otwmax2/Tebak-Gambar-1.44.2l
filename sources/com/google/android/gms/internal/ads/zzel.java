package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzel {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static zzel f16878e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f16879a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f16880b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f16881c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f16882d = 0;

    private zzel(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        zzew.a(context, new zzek(this, null), intentFilter);
    }

    public static synchronized zzel b(Context context) {
        if (f16878e == null) {
            f16878e = new zzel(context);
        }
        return f16878e;
    }

    static /* synthetic */ void c(zzel zzelVar, int i10) {
        synchronized (zzelVar.f16881c) {
            if (zzelVar.f16882d == i10) {
                return;
            }
            zzelVar.f16882d = i10;
            for (WeakReference weakReference : zzelVar.f16880b) {
                zzwu zzwuVar = (zzwu) weakReference.get();
                if (zzwuVar != null) {
                    zzwuVar.f20969a.g(i10);
                } else {
                    zzelVar.f16880b.remove(weakReference);
                }
            }
        }
    }

    public final int a() {
        int i10;
        synchronized (this.f16881c) {
            i10 = this.f16882d;
        }
        return i10;
    }

    public final void d(final zzwu zzwuVar) {
        for (WeakReference weakReference : this.f16880b) {
            if (weakReference.get() == null) {
                this.f16880b.remove(weakReference);
            }
        }
        this.f16880b.add(new WeakReference(zzwuVar));
        final byte[] bArr = null;
        this.f16879a.post(new Runnable(zzwuVar, bArr) { // from class: com.google.android.gms.internal.ads.zzeh

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public final /* synthetic */ zzwu f16639p;

            @Override // java.lang.Runnable
            public final void run() {
                zzel zzelVar = this.f16638o;
                zzwu zzwuVar2 = this.f16639p;
                zzwuVar2.f20969a.g(zzelVar.a());
            }
        });
    }
}
