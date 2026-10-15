package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzno {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzno f20267b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zznn f20268a;

    static {
        f20267b = zzew.f17494a < 31 ? new zzno() : new zzno(zznn.f20265b);
    }

    public zzno() {
        this.f20268a = null;
        zzdl.f(zzew.f17494a < 31);
    }

    private zzno(zznn zznnVar) {
        this.f20268a = zznnVar;
    }

    public final LogSessionId a() {
        zznn zznnVar = this.f20268a;
        Objects.requireNonNull(zznnVar);
        return zznnVar.f20266a;
    }

    public zzno(LogSessionId logSessionId) {
        this.f20268a = new zznn(logSessionId);
    }
}
