package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzdtf extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f15634o;

    public zzdtf(int i10) {
        this.f15634o = i10;
    }

    public final int a() {
        return this.f15634o;
    }

    public zzdtf(int i10, String str) {
        super(str);
        this.f15634o = i10;
    }

    public zzdtf(int i10, String str, Throwable th) {
        super(str, th);
        this.f15634o = 1;
    }
}
