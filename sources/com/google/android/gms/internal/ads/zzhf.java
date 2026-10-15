package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhf implements zzjp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzwt f19791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f19792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f19793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f19794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f19795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f19796f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f19797g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f19798h;

    public zzhf() {
        zzwt zzwtVar = new zzwt(true, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        h(2500, 0, "bufferForPlaybackMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        h(5000, 0, "bufferForPlaybackAfterRebufferMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        h(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        h(50000, 5000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        h(50000, 50000, "maxBufferMs", "minBufferMs");
        h(0, 0, "backBufferDurationMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.f19791a = zzwtVar;
        this.f19792b = zzew.g0(50000L);
        this.f19793c = zzew.g0(50000L);
        this.f19794d = zzew.g0(2500L);
        this.f19795e = zzew.g0(5000L);
        this.f19797g = 13107200;
        this.f19796f = zzew.g0(0L);
    }

    private static void h(int i10, int i11, String str, String str2) {
        zzdl.e(i10 >= i11, str + " cannot be less than " + str2);
    }

    private final void i(boolean z10) {
        this.f19797g = 13107200;
        this.f19798h = false;
        if (z10) {
            this.f19791a.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void a() {
        i(true);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final boolean b(long j10, float f10, boolean z10, long j11) {
        long jF0 = zzew.f0(j10, f10);
        long jMin = z10 ? this.f19795e : this.f19794d;
        if (j11 != -9223372036854775807L) {
            jMin = Math.min(j11 / 2, jMin);
        }
        return jMin <= 0 || jF0 >= jMin || this.f19791a.a() >= this.f19797g;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final boolean c() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void d() {
        i(true);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void e(zzkn[] zzknVarArr, zzur zzurVar, zzwe[] zzweVarArr) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int length = zzknVarArr.length;
            if (i10 >= 2) {
                int iMax = Math.max(13107200, i11);
                this.f19797g = iMax;
                this.f19791a.f(iMax);
                return;
            } else {
                if (zzweVarArr[i10] != null) {
                    i11 += zzknVarArr[i10].zzb() != 1 ? 131072000 : 13107200;
                }
                i10++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final boolean f(long j10, long j11, float f10) {
        int iA = this.f19791a.a();
        int i10 = this.f19797g;
        long jMin = this.f19792b;
        if (f10 > 1.0f) {
            jMin = Math.min(zzew.d0(jMin, f10), this.f19793c);
        }
        if (j11 < Math.max(jMin, 500000L)) {
            boolean z10 = iA < i10;
            this.f19798h = z10;
            if (!z10 && j11 < 500000) {
                zzee.e("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= this.f19793c || iA >= i10) {
            this.f19798h = false;
        }
        return this.f19798h;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final zzwt g() {
        return this.f19791a;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final long zza() {
        return this.f19796f;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void zzb() {
        i(false);
    }
}
