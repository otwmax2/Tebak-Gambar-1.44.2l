package com.twitter.sdk.android.core;

/* JADX INFO: compiled from: TwitterRateLimit.java */
/* JADX INFO: loaded from: classes2.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f27527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f27528c;

    z(ja.s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("headers must not be null");
        }
        for (int i10 = 0; i10 < sVar.h(); i10++) {
            if ("x-rate-limit-limit".equals(sVar.e(i10))) {
                this.f27526a = Integer.valueOf(sVar.i(i10)).intValue();
            } else if ("x-rate-limit-remaining".equals(sVar.e(i10))) {
                this.f27527b = Integer.valueOf(sVar.i(i10)).intValue();
            } else if ("x-rate-limit-reset".equals(sVar.e(i10))) {
                this.f27528c = Long.valueOf(sVar.i(i10)).longValue();
            }
        }
    }
}
