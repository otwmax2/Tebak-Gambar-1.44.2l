package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfmz extends zzfnq {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final zzfmz f18457o = new zzfmz();

    private zzfmz() {
    }

    @Override // com.google.android.gms.internal.ads.zzfnq
    public final zzfnq a(zzfnj zzfnjVar) {
        Objects.requireNonNull(zzfnjVar);
        return f18457o;
    }

    @Override // com.google.android.gms.internal.ads.zzfnq
    public final Object b(Object obj) {
        return BuildConfig.FLAVOR;
    }

    public final boolean equals(@CheckForNull Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
