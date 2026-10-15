package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgwg extends zzgwj implements zzamb {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    zzamc f19691w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected final String f19692x = "moov";

    public zzgwg(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzamb
    public final void b(zzgwk zzgwkVar, ByteBuffer byteBuffer, long j10, zzaly zzalyVar) throws IOException {
        zzgwkVar.zzb();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.f19697p = zzgwkVar;
        this.f19699r = zzgwkVar.zzb();
        zzgwkVar.D(zzgwkVar.zzb() + j10);
        this.f19700s = zzgwkVar.zzb();
        this.f19696o = zzalyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamb
    public final void d(zzamc zzamcVar) {
        this.f19691w = zzamcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamb
    public final String zza() {
        return this.f19692x;
    }
}
