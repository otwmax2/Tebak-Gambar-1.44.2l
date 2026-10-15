package com.google.android.gms.internal.ads;

import com.vungle.warren.AdLoader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbcy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzbbw f10610a = zzbbw.d("gads:always_collect_trustless_token_at_native_side", false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzbbw f10611b = zzbbw.d("gms:expose_token_for_gma:enabled", true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzbbw f10612c = zzbbw.b("gads:timeout_for_trustless_token:millis", AdLoader.RETRY_DELAY);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzbbw f10613d = zzbbw.b("gads:cached_token:ttl_millis", 10800000);
}
