package com.twitter.sdk.android.core;

import android.util.Log;

/* JADX INFO: compiled from: DefaultLogger.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27423a = 4;

    @Override // com.twitter.sdk.android.core.h
    public void a(String str, String str2) {
        f(str, str2, null);
    }

    @Override // com.twitter.sdk.android.core.h
    public void b(String str, String str2, Throwable th) {
        if (e(str, 6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // com.twitter.sdk.android.core.h
    public void c(String str, String str2) {
        d(str, str2, null);
    }

    public void d(String str, String str2, Throwable th) {
        if (e(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    public boolean e(String str, int i10) {
        return this.f27423a <= i10;
    }

    public void f(String str, String str2, Throwable th) {
        if (e(str, 5)) {
            Log.w(str, str2, th);
        }
    }
}
