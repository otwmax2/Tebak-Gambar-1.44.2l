package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzoh extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f20311o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f20312p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final zzaf f20313q;

    public zzoh(int i10, zzaf zzafVar, boolean z10) {
        super("AudioTrack write failed: " + i10);
        this.f20312p = z10;
        this.f20311o = i10;
        this.f20313q = zzafVar;
    }
}
