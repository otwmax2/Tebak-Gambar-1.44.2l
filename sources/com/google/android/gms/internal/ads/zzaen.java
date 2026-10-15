package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaen implements zzaep {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f8629a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayDeque f8630b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzaew f8631c = new zzaew();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzaeo f8632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8634f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f8635g;

    private final long c(zzzv zzzvVar, int i10) throws IOException {
        ((zzzk) zzzvVar).g(this.f8629a, 0, i10, false);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | ((long) (this.f8629a[i11] & 255));
        }
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final void a(zzaeo zzaeoVar) {
        this.f8632d = zzaeoVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0183 A[LOOP:0: B:3:0x0005->B:75:0x0183, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00a3 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzaep
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(com.google.android.gms.internal.ads.zzzv r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 400
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaen.b(com.google.android.gms.internal.ads.zzzv):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final void zzb() {
        this.f8633e = 0;
        this.f8630b.clear();
        this.f8631c.e();
    }
}
