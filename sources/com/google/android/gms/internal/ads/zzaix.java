package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaix {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f9325c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f9326d;

    public zzaix(int i10, String str, List list, byte[] bArr) {
        this.f9323a = i10;
        this.f9324b = str;
        this.f9325c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f9326d = bArr;
    }
}
