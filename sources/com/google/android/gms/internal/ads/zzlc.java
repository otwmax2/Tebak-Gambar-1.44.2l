package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzlc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f20107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzcn f20108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final zzss f20110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f20111e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzcn f20112f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f20113g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzss f20114h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f20115i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f20116j;

    public zzlc(long j10, zzcn zzcnVar, int i10, zzss zzssVar, long j11, zzcn zzcnVar2, int i11, zzss zzssVar2, long j12, long j13) {
        this.f20107a = j10;
        this.f20108b = zzcnVar;
        this.f20109c = i10;
        this.f20110d = zzssVar;
        this.f20111e = j11;
        this.f20112f = zzcnVar2;
        this.f20113g = i11;
        this.f20114h = zzssVar2;
        this.f20115i = j12;
        this.f20116j = j13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzlc.class == obj.getClass()) {
            zzlc zzlcVar = (zzlc) obj;
            if (this.f20107a == zzlcVar.f20107a && this.f20109c == zzlcVar.f20109c && this.f20111e == zzlcVar.f20111e && this.f20113g == zzlcVar.f20113g && this.f20115i == zzlcVar.f20115i && this.f20116j == zzlcVar.f20116j && zzfnp.a(this.f20108b, zzlcVar.f20108b) && zzfnp.a(this.f20110d, zzlcVar.f20110d) && zzfnp.a(this.f20112f, zzlcVar.f20112f) && zzfnp.a(this.f20114h, zzlcVar.f20114h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f20107a), this.f20108b, Integer.valueOf(this.f20109c), this.f20110d, Long.valueOf(this.f20111e), this.f20112f, Integer.valueOf(this.f20113g), this.f20114h, Long.valueOf(this.f20115i), Long.valueOf(this.f20116j)});
    }
}
