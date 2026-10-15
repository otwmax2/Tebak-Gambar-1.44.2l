package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzpc extends AudioTrack.StreamEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzpf f20381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzpd f20382b;

    zzpc(zzpd zzpdVar, zzpf zzpfVar) {
        this.f20382b = zzpdVar;
        this.f20381a = zzpfVar;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i10) {
        if (audioTrack.equals(this.f20382b.f20385c.f20403r)) {
            zzpf zzpfVar = this.f20382b.f20385c;
            if (zzpfVar.f20399n == null || !zzpfVar.M) {
                return;
            }
            zzpfVar.f20399n.zzb();
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        if (audioTrack.equals(this.f20382b.f20385c.f20403r)) {
            zzpf zzpfVar = this.f20382b.f20385c;
            if (zzpfVar.f20399n == null || !zzpfVar.M) {
                return;
            }
            zzpfVar.f20399n.zzb();
        }
    }
}
