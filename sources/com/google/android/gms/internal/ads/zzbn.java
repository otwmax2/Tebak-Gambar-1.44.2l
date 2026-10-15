package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzbn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f11010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f11013d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f11014e;

    protected zzbn(zzbn zzbnVar) {
        this.f11010a = zzbnVar.f11010a;
        this.f11011b = zzbnVar.f11011b;
        this.f11012c = zzbnVar.f11012c;
        this.f11013d = zzbnVar.f11013d;
        this.f11014e = zzbnVar.f11014e;
    }

    public zzbn(Object obj, int i10, int i11, long j10) {
        this(obj, i10, i11, j10, -1);
    }

    private zzbn(Object obj, int i10, int i11, long j10, int i12) {
        this.f11010a = obj;
        this.f11011b = i10;
        this.f11012c = i11;
        this.f11013d = j10;
        this.f11014e = i12;
    }

    public final zzbn a(Object obj) {
        return this.f11010a.equals(obj) ? this : new zzbn(obj, this.f11011b, this.f11012c, this.f11013d, this.f11014e);
    }

    public final boolean b() {
        return this.f11011b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbn)) {
            return false;
        }
        zzbn zzbnVar = (zzbn) obj;
        return this.f11010a.equals(zzbnVar.f11010a) && this.f11011b == zzbnVar.f11011b && this.f11012c == zzbnVar.f11012c && this.f11013d == zzbnVar.f11013d && this.f11014e == zzbnVar.f11014e;
    }

    public final int hashCode() {
        return ((((((((this.f11010a.hashCode() + 527) * 31) + this.f11011b) * 31) + this.f11012c) * 31) + ((int) this.f11013d)) * 31) + this.f11014e;
    }

    public zzbn(Object obj, long j10) {
        this(obj, -1, -1, j10, -1);
    }

    public zzbn(Object obj, long j10, int i10) {
        this(obj, -1, -1, j10, i10);
    }
}
