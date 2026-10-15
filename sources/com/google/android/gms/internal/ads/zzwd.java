package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzwd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzcp f20939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f20940b;

    public zzwd(zzcp zzcpVar, int[] iArr, int i10) {
        if (iArr.length == 0) {
            zzee.c("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
        }
        this.f20939a = zzcpVar;
        this.f20940b = iArr;
    }
}
