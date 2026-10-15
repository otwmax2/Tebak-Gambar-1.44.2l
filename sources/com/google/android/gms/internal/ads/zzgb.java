package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgb extends zzfz {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f18954r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String f18955s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Map f18956t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final byte[] f18957u;

    public zzgb(int i10, String str, IOException iOException, Map map, zzfl zzflVar, byte[] bArr) {
        super("Response code: " + i10, iOException, zzflVar, 2004, 1);
        this.f18954r = i10;
        this.f18955s = str;
        this.f18956t = map;
        this.f18957u = bArr;
    }
}
