package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzalm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f9500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f9501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f9502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f9503d;

    public zzalm(int i10, List list, int i11, InputStream inputStream) {
        this.f9500a = i10;
        this.f9501b = list;
        this.f9502c = i11;
        this.f9503d = inputStream;
    }

    public final int a() {
        return this.f9502c;
    }

    public final int b() {
        return this.f9500a;
    }

    public final InputStream c() {
        InputStream inputStream = this.f9503d;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    public final List d() {
        return Collections.unmodifiableList(this.f9501b);
    }
}
