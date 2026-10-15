package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class r0 implements zabz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f7137a;

    /* synthetic */ r0(a aVar, zaw zawVar) {
        this.f7137a = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void a(Bundle bundle) {
        this.f7137a.A.lock();
        try {
            a.w(this.f7137a, bundle);
            this.f7137a.f7073x = ConnectionResult.f6898s;
            a.x(this.f7137a);
        } finally {
            this.f7137a.A.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void b(int i10, boolean z10) {
        Lock lock;
        this.f7137a.A.lock();
        try {
            a aVar = this.f7137a;
            if (aVar.f7075z || aVar.f7074y == null || !aVar.f7074y.Z3()) {
                this.f7137a.f7075z = false;
                a.v(this.f7137a, i10, z10);
                lock = this.f7137a.A;
            } else {
                this.f7137a.f7075z = true;
                this.f7137a.f7068s.P0(i10);
                lock = this.f7137a.A;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.f7137a.A.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void c(ConnectionResult connectionResult) {
        this.f7137a.A.lock();
        try {
            this.f7137a.f7073x = connectionResult;
            a.x(this.f7137a);
        } finally {
            this.f7137a.A.unlock();
        }
    }
}
