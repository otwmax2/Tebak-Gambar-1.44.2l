package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class g0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Result f7104o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zada f7105p;

    g0(zada zadaVar, Result result) {
        this.f7105p = zadaVar;
        this.f7104o = result;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            try {
                BasePendingResult.f6997p.set(Boolean.TRUE);
                ((ResultTransform) Preconditions.k(this.f7105p.f7257a)).b(this.f7104o);
                zada zadaVar = this.f7105p;
                h0 unused = zadaVar.f7263g;
                h0 unused2 = zadaVar.f7263g;
                throw null;
            } catch (RuntimeException unused3) {
                zada zadaVar2 = this.f7105p;
                h0 unused4 = zadaVar2.f7263g;
                h0 unused5 = zadaVar2.f7263g;
                throw null;
            }
        } catch (Throwable th) {
            BasePendingResult.f6997p.set(Boolean.FALSE);
            zada zadaVar3 = this.f7105p;
            zada.j(this.f7104o);
            GoogleApiClient googleApiClient = (GoogleApiClient) this.f7105p.f7262f.get();
            if (googleApiClient != null) {
                googleApiClient.n(this.f7105p);
            }
            throw th;
        }
    }
}
