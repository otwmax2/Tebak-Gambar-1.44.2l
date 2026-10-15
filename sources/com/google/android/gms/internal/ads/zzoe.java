package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzoe extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f20308o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f20309p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final zzaf f20310q;

    public zzoe(int i10, int i11, int i12, int i13, zzaf zzafVar, boolean z10, Exception exc) {
        StringBuilder sb = new StringBuilder();
        sb.append("AudioTrack init failed ");
        sb.append(i10);
        sb.append(" Config(");
        sb.append(i11);
        sb.append(", ");
        sb.append(i12);
        sb.append(", ");
        sb.append(i13);
        sb.append(")");
        sb.append(true != z10 ? BuildConfig.FLAVOR : " (recoverable)");
        super(sb.toString(), exc);
        this.f20308o = i10;
        this.f20309p = z10;
        this.f20310q = zzafVar;
    }
}
