package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f18288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f18289b = Collections.emptyMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f18290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f18291d;

    public final zzfj a(int i10) {
        this.f18291d = 6;
        return this;
    }

    public final zzfj b(Map map) {
        this.f18289b = map;
        return this;
    }

    public final zzfj c(long j10) {
        this.f18290c = j10;
        return this;
    }

    public final zzfj d(Uri uri) {
        this.f18288a = uri;
        return this;
    }

    public final zzfl e() {
        if (this.f18288a != null) {
            return new zzfl(this.f18288a, this.f18289b, this.f18290c, this.f18291d);
        }
        throw new IllegalStateException("The uri must be set.");
    }
}
