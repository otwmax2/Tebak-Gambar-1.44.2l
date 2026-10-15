package com.google.android.gms.internal.ads;

import android.media.AudioFormat;
import android.media.AudioTrack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzou {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzaf f20360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f20363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f20364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f20365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f20366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f20367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzdb f20368i;

    public zzou(zzaf zzafVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, zzdb zzdbVar) {
        this.f20360a = zzafVar;
        this.f20361b = i10;
        this.f20362c = i11;
        this.f20363d = i12;
        this.f20364e = i13;
        this.f20365f = i14;
        this.f20366g = i15;
        this.f20367h = i16;
        this.f20368i = zzdbVar;
    }

    public final long a(long j10) {
        return (j10 * 1000000) / ((long) this.f20364e);
    }

    public final AudioTrack b(boolean z10, zzk zzkVar, int i10) throws zzoe {
        AudioTrack audioTrack;
        try {
            int i11 = zzew.f17494a;
            if (i11 >= 29) {
                audioTrack = new AudioTrack.Builder().setAudioAttributes(zzkVar.a().f19844a).setAudioFormat(new AudioFormat.Builder().setSampleRate(this.f20364e).setChannelMask(this.f20365f).setEncoding(this.f20366g).build()).setTransferMode(1).setBufferSizeInBytes(this.f20367h).setSessionId(i10).setOffloadedPlayback(this.f20362c == 1).build();
            } else if (i11 < 21) {
                int i12 = zzkVar.f20008a;
                audioTrack = i10 == 0 ? new AudioTrack(3, this.f20364e, this.f20365f, this.f20366g, this.f20367h, 1) : new AudioTrack(3, this.f20364e, this.f20365f, this.f20366g, this.f20367h, 1, i10);
            } else {
                audioTrack = new AudioTrack(zzkVar.a().f19844a, new AudioFormat.Builder().setSampleRate(this.f20364e).setChannelMask(this.f20365f).setEncoding(this.f20366g).build(), this.f20367h, 1, i10);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception unused) {
            }
            throw new zzoe(state, this.f20364e, this.f20365f, this.f20367h, this.f20360a, c(), null);
        } catch (IllegalArgumentException | UnsupportedOperationException e10) {
            throw new zzoe(0, this.f20364e, this.f20365f, this.f20367h, this.f20360a, c(), e10);
        }
    }

    public final boolean c() {
        return this.f20362c == 1;
    }
}
