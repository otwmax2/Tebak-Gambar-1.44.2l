package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzpk implements zzof {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzpl f20412a;

    /* synthetic */ zzpk(zzpl zzplVar, zzpj zzpjVar) {
        this.f20412a = zzplVar;
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void a(Exception exc) {
        zzee.c("MediaCodecAudioRenderer", "Audio sink error", exc);
        this.f20412a.Q0.b(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzof
    public final void zzb() {
        zzpl zzplVar = this.f20412a;
        if (zzplVar.Z0 != null) {
            zzplVar.Z0.zzb();
        }
    }
}
