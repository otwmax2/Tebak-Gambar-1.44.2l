package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
final class zzfhy implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    protected final zzfiw f18249o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f18250p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f18251q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final LinkedBlockingQueue f18252r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final HandlerThread f18253s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzfhp f18254t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final long f18255u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f18256v;

    public zzfhy(Context context, int i10, int i11, String str, String str2, String str3, zzfhp zzfhpVar) {
        this.f18250p = str;
        this.f18256v = i11;
        this.f18251q = str2;
        this.f18254t = zzfhpVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f18253s = handlerThread;
        handlerThread.start();
        this.f18255u = System.currentTimeMillis();
        zzfiw zzfiwVar = new zzfiw(context, handlerThread.getLooper(), this, this, 19621000);
        this.f18249o = zzfiwVar;
        this.f18252r = new LinkedBlockingQueue();
        zzfiwVar.v();
    }

    @VisibleForTesting
    static zzfji a() {
        return new zzfji(null, 1);
    }

    private final void e(int i10, long j10, Exception exc) {
        this.f18254t.c(i10, System.currentTimeMillis() - j10, exc);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
        try {
            e(4011, this.f18255u, null);
            this.f18252r.put(a());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        try {
            e(4012, this.f18255u, null);
            this.f18252r.put(a());
        } catch (InterruptedException unused) {
        }
    }

    public final zzfji b(int i10) {
        zzfji zzfjiVar;
        try {
            zzfjiVar = (zzfji) this.f18252r.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            e(2009, this.f18255u, e10);
            zzfjiVar = null;
        }
        e(3004, this.f18255u, null);
        if (zzfjiVar != null) {
            if (zzfjiVar.f18312q == 7) {
                zzfhp.g(3);
            } else {
                zzfhp.g(2);
            }
        }
        return zzfjiVar == null ? a() : zzfjiVar;
    }

    public final void c() {
        zzfiw zzfiwVar = this.f18249o;
        if (zzfiwVar != null) {
            if (zzfiwVar.a() || this.f18249o.f()) {
                this.f18249o.i();
            }
        }
    }

    protected final zzfjb d() {
        try {
            return this.f18249o.o0();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        zzfjb zzfjbVarD = d();
        if (zzfjbVarD != null) {
            try {
                zzfji zzfjiVarRa = zzfjbVarD.Ra(new zzfjg(1, this.f18256v, this.f18250p, this.f18251q));
                e(5011, this.f18255u, null);
                this.f18252r.put(zzfjiVarRa);
            } finally {
                try {
                } finally {
                }
            }
        }
    }
}
