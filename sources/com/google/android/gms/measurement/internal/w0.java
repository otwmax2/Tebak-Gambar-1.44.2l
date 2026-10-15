package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpm;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class w0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f24340o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f24341p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f24342q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ long f24343r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzha f24344s;

    w0(zzha zzhaVar, String str, String str2, String str3, long j10) {
        this.f24344s = zzhaVar;
        this.f24340o = str;
        this.f24341p = str2;
        this.f24342q = str3;
        this.f24343r = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpm.b();
        if (this.f24344s.f24735o.R().y(null, zzel.f24600v0)) {
            String str = this.f24340o;
            if (str == null) {
                this.f24344s.f24735o.q(this.f24341p, null);
                return;
            } else {
                this.f24344s.f24735o.q(this.f24341p, new zziu(this.f24342q, str, this.f24343r));
                return;
            }
        }
        String str2 = this.f24340o;
        if (str2 == null) {
            this.f24344s.f24735o.a0().I().E(this.f24341p, null);
        } else {
            this.f24344s.f24735o.a0().I().E(this.f24341p, new zziu(this.f24342q, str2, this.f24343r));
        }
    }
}
