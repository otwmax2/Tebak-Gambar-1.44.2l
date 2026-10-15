package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzfh extends IOException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f18198o;

    public zzfh(int i10) {
        this.f18198o = i10;
    }

    public zzfh(String str, int i10) {
        super(str);
        this.f18198o = i10;
    }

    public zzfh(String str, Throwable th, int i10) {
        super(str, th);
        this.f18198o = i10;
    }

    public zzfh(Throwable th, int i10) {
        super(th);
        this.f18198o = i10;
    }
}
