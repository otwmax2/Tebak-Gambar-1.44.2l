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
final class zzfhw implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    protected final zzfiw f18244o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f18245p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f18246q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final LinkedBlockingQueue f18247r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final HandlerThread f18248s;

    public zzfhw(Context context, String str, String str2) {
        this.f18245p = str;
        this.f18246q = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.f18248s = handlerThread;
        handlerThread.start();
        zzfiw zzfiwVar = new zzfiw(context, handlerThread.getLooper(), this, this, 9200000);
        this.f18244o = zzfiwVar;
        this.f18247r = new LinkedBlockingQueue();
        zzfiwVar.v();
    }

    @VisibleForTesting
    static zzans a() {
        zzamv zzamvVarJ0 = zzans.j0();
        zzamvVarJ0.r(32768L);
        return (zzans) zzamvVarJ0.k();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
        try {
            this.f18247r.put(a());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        try {
            this.f18247r.put(a());
        } catch (InterruptedException unused) {
        }
    }

    public final zzans b(int i10) {
        zzans zzansVar;
        try {
            zzansVar = (zzans) this.f18247r.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zzansVar = null;
        }
        return zzansVar == null ? a() : zzansVar;
    }

    public final void c() {
        zzfiw zzfiwVar = this.f18244o;
        if (zzfiwVar != null) {
            if (zzfiwVar.a() || this.f18244o.f()) {
                this.f18244o.i();
            }
        }
    }

    protected final zzfjb d() {
        try {
            return this.f18244o.o0();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        zzfjb zzfjbVarD = d();
        if (zzfjbVarD != null) {
            try {
                try {
                    this.f18247r.put(zzfjbVarD.A9(new zzfix(this.f18245p, this.f18246q)).V3());
                } catch (Throwable unused) {
                    this.f18247r.put(a());
                }
            } catch (InterruptedException unused2) {
            } catch (Throwable th) {
                c();
                this.f18248s.quit();
                throw th;
            }
            c();
            this.f18248s.quit();
        }
    }
}
