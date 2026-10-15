package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqf implements zzqt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfok f20457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfok f20458c;

    public zzqf(int i10, boolean z10) {
        zzqd zzqdVar = new zzqd(i10);
        zzqe zzqeVar = new zzqe(i10);
        this.f20457b = zzqdVar;
        this.f20458c = zzqeVar;
    }

    static /* synthetic */ HandlerThread a(int i10) {
        return new HandlerThread(zzqh.e(i10, "ExoPlayer:MediaCodecAsyncAdapter:"));
    }

    static /* synthetic */ HandlerThread b(int i10) {
        return new HandlerThread(zzqh.e(i10, "ExoPlayer:MediaCodecQueueingThread:"));
    }

    public final zzqh c(zzqs zzqsVar) throws Exception {
        MediaCodec mediaCodecCreateByCodecName;
        zzqh zzqhVar;
        String str = zzqsVar.f20504a.f20512a;
        zzqh zzqhVar2 = null;
        try {
            int i10 = zzew.f17494a;
            Trace.beginSection("createCodec:" + str);
            mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            try {
                zzqhVar = new zzqh(mediaCodecCreateByCodecName, a(((zzqd) this.f20457b).f20455o), b(((zzqe) this.f20458c).f20456o), false, null);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Exception e11) {
            e = e11;
            mediaCodecCreateByCodecName = null;
        }
        try {
            Trace.endSection();
            zzqh.d(zzqhVar, zzqsVar.f20505b, zzqsVar.f20507d, null, 0);
            return zzqhVar;
        } catch (Exception e12) {
            e = e12;
            zzqhVar2 = zzqhVar;
            if (zzqhVar2 != null) {
                zzqhVar2.j();
            } else if (mediaCodecCreateByCodecName != null) {
                mediaCodecCreateByCodecName.release();
            }
            throw e;
        }
    }
}
