package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzakc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9415a = 2500;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9416b;

    public final int a() {
        return this.f9416b;
    }

    public final int b() {
        return this.f9415a;
    }

    public final void c(zzakx zzakxVar) throws zzakx {
        int i10 = this.f9416b + 1;
        this.f9416b = i10;
        int i11 = this.f9415a;
        this.f9415a = i11 + i11;
        if (i10 > 1) {
            throw zzakxVar;
        }
    }
}
