package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbmf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    static final com.google.android.gms.ads.internal.util.zzbb f10948b = new zzbmd();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    static final com.google.android.gms.ads.internal.util.zzbb f10949c = new zzbme();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzblr f10950a;

    public zzbmf(Context context, zzbzg zzbzgVar, String str, @Nullable zzfep zzfepVar) {
        this.f10950a = new zzblr(context, zzbzgVar, str, f10948b, f10949c, zzfepVar);
    }

    public final zzblv a(String str, zzbly zzblyVar, zzblx zzblxVar) {
        return new zzbmj(this.f10950a, str, zzblyVar, zzblxVar);
    }

    public final zzbmo b() {
        return new zzbmo(this.f10950a);
    }
}
