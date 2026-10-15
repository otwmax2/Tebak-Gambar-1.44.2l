package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.vungle.mediation.BuildConfig;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Uri f9333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzal f9334c = new zzal();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzar f9335d = new zzar(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f9336e = Collections.emptyList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfqk f9337f = zzfqk.u();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzau f9338g = new zzau();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzbd f9339h = zzbd.f10615c;

    public final zzaj a(String str) {
        this.f9332a = str;
        return this;
    }

    public final zzaj b(Uri uri) {
        this.f9333b = uri;
        return this;
    }

    public final zzbg c() {
        Uri uri = this.f9333b;
        zzba zzbaVar = uri != null ? new zzba(uri, null, null, null, this.f9336e, null, this.f9337f, null, null) : null;
        String str = this.f9332a;
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        return new zzbg(str, new zzap(this.f9334c, null), zzbaVar, new zzaw(this.f9338g), zzbm.f10918y, this.f9339h, null);
    }
}
