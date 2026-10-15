package com.google.android.gms.internal.ads;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzqx f20504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaFormat f20505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzaf f20506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Surface f20507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaCrypto f20508e = null;

    private zzqs(zzqx zzqxVar, MediaFormat mediaFormat, zzaf zzafVar, Surface surface, MediaCrypto mediaCrypto, int i10) {
        this.f20504a = zzqxVar;
        this.f20505b = mediaFormat;
        this.f20506c = zzafVar;
        this.f20507d = surface;
    }

    public static zzqs a(zzqx zzqxVar, MediaFormat mediaFormat, zzaf zzafVar, MediaCrypto mediaCrypto) {
        return new zzqs(zzqxVar, mediaFormat, zzafVar, null, null, 0);
    }

    public static zzqs b(zzqx zzqxVar, MediaFormat mediaFormat, zzaf zzafVar, Surface surface, MediaCrypto mediaCrypto) {
        return new zzqs(zzqxVar, mediaFormat, zzafVar, surface, null, 0);
    }
}
