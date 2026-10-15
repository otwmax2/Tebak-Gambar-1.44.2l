package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbz extends zzce {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AtomicReference f23351o = new AtomicReference();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f23352p;

    public static final Object Q4(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e10) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e10);
            throw e10;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcf
    public final void X(Bundle bundle) {
        synchronized (this.f23351o) {
            try {
                this.f23351o.set(bundle);
                this.f23352p = true;
            } finally {
                this.f23351o.notify();
            }
        }
    }

    public final Bundle X0(long j10) {
        Bundle bundle;
        synchronized (this.f23351o) {
            if (!this.f23352p) {
                try {
                    this.f23351o.wait(j10);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f23351o.get();
        }
        return bundle;
    }

    public final String t1(long j10) {
        return (String) Q4(X0(j10), String.class);
    }
}
