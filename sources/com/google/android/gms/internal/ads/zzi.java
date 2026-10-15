package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioAttributes f19844a;

    /* synthetic */ zzi(zzk zzkVar, zzh zzhVar) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
        int i10 = zzew.f17494a;
        if (i10 >= 29) {
            zzf.a(usage, 1);
        }
        if (i10 >= 32) {
            zzg.a(usage, 0);
        }
        this.f19844a = usage.build();
    }
}
