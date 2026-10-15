package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class s0 implements zabz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f7139a;

    /* synthetic */ s0(a aVar, zay zayVar) {
        this.f7139a = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void a(Bundle bundle) {
        this.f7139a.A.lock();
        try {
            this.f7139a.f7074y = ConnectionResult.f6898s;
            a.x(this.f7139a);
        } finally {
            this.f7139a.A.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void b(int i10, boolean z10) {
        Lock lock;
        this.f7139a.A.lock();
        try {
            a aVar = this.f7139a;
            if (aVar.f7075z) {
                aVar.f7075z = false;
                a.v(this.f7139a, i10, z10);
                lock = this.f7139a.A;
            } else {
                aVar.f7075z = true;
                this.f7139a.f7067r.P0(i10);
                lock = this.f7139a.A;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.f7139a.A.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void c(ConnectionResult connectionResult) {
        this.f7139a.A.lock();
        try {
            this.f7139a.f7074y = connectionResult;
            a.x(this.f7139a);
        } finally {
            this.f7139a.A.unlock();
        }
    }
}
