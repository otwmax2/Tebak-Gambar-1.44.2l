package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfjq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f18327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f18328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzfjr f18330d;

    /* synthetic */ zzfjq(zzfjr zzfjrVar, byte[] bArr, zzfjp zzfjpVar) {
        this.f18330d = zzfjrVar;
        this.f18327a = bArr;
    }

    public final zzfjq a(int i10) {
        this.f18329c = i10;
        return this;
    }

    public final zzfjq b(int i10) {
        this.f18328b = i10;
        return this;
    }

    public final synchronized void c() {
        try {
            zzfjr zzfjrVar = this.f18330d;
            if (zzfjrVar.f18332b) {
                zzfjrVar.f18331a.O0(this.f18327a);
                this.f18330d.f18331a.Q(this.f18328b);
                this.f18330d.f18331a.w(this.f18329c);
                this.f18330d.f18331a.g1(null);
                this.f18330d.f18331a.c();
            }
        } catch (RemoteException e10) {
            Log.d("GASS", "Clearcut log failed", e10);
        }
    }
}
