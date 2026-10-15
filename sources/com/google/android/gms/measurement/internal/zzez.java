package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzez {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f24646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f24647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f24648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bundle f24649d;

    public zzez(String str, String str2, Bundle bundle, long j10) {
        this.f24646a = str;
        this.f24647b = str2;
        this.f24649d = bundle;
        this.f24648c = j10;
    }

    public static zzez b(zzav zzavVar) {
        return new zzez(zzavVar.f24454o, zzavVar.f24456q, zzavVar.f24455p.X3(), zzavVar.f24457r);
    }

    public final zzav a() {
        return new zzav(this.f24646a, new zzat(new Bundle(this.f24649d)), this.f24647b, this.f24648c);
    }

    public final String toString() {
        return "origin=" + this.f24647b + ",name=" + this.f24646a + ",params=" + this.f24649d.toString();
    }
}
