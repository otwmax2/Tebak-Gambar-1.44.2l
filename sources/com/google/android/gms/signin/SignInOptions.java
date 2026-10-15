package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class SignInOptions implements Api.ApiOptions.Optional {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final SignInOptions f24896x = new SignInOptions(false, false, null, false, null, null, false, null, null, null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f24897o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f24898p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f24899q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f24900r = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f24903u = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f24901s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final String f24902t = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Long f24904v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Long f24905w = null;

    /* synthetic */ SignInOptions(boolean z10, boolean z11, String str, boolean z12, String str2, String str3, boolean z13, Long l10, Long l11, zaf zafVar) {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SignInOptions)) {
            return false;
        }
        boolean z10 = ((SignInOptions) obj).f24897o;
        return Objects.b(null, null) && Objects.b(null, null) && Objects.b(null, null) && Objects.b(null, null) && Objects.b(null, null);
    }

    public final int hashCode() {
        Boolean bool = Boolean.FALSE;
        return Objects.c(bool, bool, null, bool, bool, null, null, null, null);
    }
}
