package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f18368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f18370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f18371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    public final long f18372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f18373f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f18374g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f18375h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f18376i;

    static {
        zzbh.b("media3.datasource");
    }

    public zzfl(Uri uri) {
        this(uri, 0L, 1, null, Collections.emptyMap(), 0L, -1L, null, 0, null);
    }

    public static String a(int i10) {
        return "GET";
    }

    public final boolean b(int i10) {
        return (this.f18376i & i10) == i10;
    }

    public final String toString() {
        return "DataSpec[GET " + String.valueOf(this.f18368a) + ", " + this.f18373f + ", " + this.f18374g + ", null, " + this.f18376i + "]";
    }

    @Deprecated
    public zzfl(Uri uri, byte[] bArr, long j10, long j11, long j12, String str, int i10) {
        this(uri, j10 - j11, 1, null, Collections.emptyMap(), j11, j12, null, i10, null);
    }

    private zzfl(Uri uri, long j10, int i10, byte[] bArr, Map map, long j11, long j12, String str, int i11, Object obj) {
        long j13 = j10 + j11;
        boolean z10 = false;
        zzdl.d(j13 >= 0);
        zzdl.d(j11 >= 0);
        long j14 = -1;
        if (j12 <= 0) {
            if (j12 != -1) {
                j14 = j12;
            }
            zzdl.d(z10);
            this.f18368a = uri;
            this.f18369b = 1;
            this.f18370c = null;
            this.f18371d = Collections.unmodifiableMap(new HashMap(map));
            this.f18373f = j11;
            this.f18372e = j13;
            this.f18374g = j14;
            this.f18375h = null;
            this.f18376i = i11;
        }
        j14 = j12;
        z10 = true;
        zzdl.d(z10);
        this.f18368a = uri;
        this.f18369b = 1;
        this.f18370c = null;
        this.f18371d = Collections.unmodifiableMap(new HashMap(map));
        this.f18373f = j11;
        this.f18372e = j13;
        this.f18374g = j14;
        this.f18375h = null;
        this.f18376i = i11;
    }
}
