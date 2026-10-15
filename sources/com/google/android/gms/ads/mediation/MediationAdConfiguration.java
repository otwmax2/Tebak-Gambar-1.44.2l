package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public class MediationAdConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bundle f6274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bundle f6275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f6276d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f6277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f6278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f6279g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f6280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f6281i;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z10, Location location, int i10, int i11, String str2, String str3) {
        this.f6273a = str;
        this.f6274b = bundle;
        this.f6275c = bundle2;
        this.f6276d = context;
        this.f6277e = z10;
        this.f6278f = i10;
        this.f6279g = i11;
        this.f6280h = str2;
        this.f6281i = str3;
    }

    public Context a() {
        return this.f6276d;
    }

    public Bundle b() {
        return this.f6275c;
    }

    public Bundle c() {
        return this.f6274b;
    }
}
