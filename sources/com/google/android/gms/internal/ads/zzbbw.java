package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzbbw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f10491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f10492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f10493c;

    protected zzbbw(String str, Object obj, int i10) {
        this.f10491a = str;
        this.f10492b = obj;
        this.f10493c = i10;
    }

    public static zzbbw a(String str, double d10) {
        return new zzbbw(str, Double.valueOf(d10), 3);
    }

    public static zzbbw b(String str, long j10) {
        return new zzbbw(str, Long.valueOf(j10), 2);
    }

    public static zzbbw c(String str, String str2) {
        return new zzbbw(str, str2, 4);
    }

    public static zzbbw d(String str, boolean z10) {
        return new zzbbw(str, Boolean.valueOf(z10), 1);
    }

    public final Object e() {
        zzbda zzbdaVarA = zzbdc.a();
        if (zzbdaVarA != null) {
            int i10 = this.f10493c - 1;
            return i10 != 0 ? i10 != 1 ? i10 != 2 ? zzbdaVarA.a(this.f10491a, (String) this.f10492b) : zzbdaVarA.b(this.f10491a, ((Double) this.f10492b).doubleValue()) : zzbdaVarA.c(this.f10491a, ((Long) this.f10492b).longValue()) : zzbdaVarA.d(this.f10491a, ((Boolean) this.f10492b).booleanValue());
        }
        if (zzbdc.b() != null) {
            zzbdc.b().zza();
        }
        return this.f10492b;
    }
}
