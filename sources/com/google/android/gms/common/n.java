package com.google.android.gms.common;

import android.util.Log;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final n f7549e = new n(true, 3, 1, null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f7550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    final String f7551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    final Throwable f7552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f7553d;

    private n(boolean z10, int i10, int i11, @Nullable String str, @Nullable Throwable th) {
        this.f7550a = z10;
        this.f7553d = i10;
        this.f7551b = str;
        this.f7552c = th;
    }

    @Deprecated
    static n b() {
        return f7549e;
    }

    static n c(String str) {
        return new n(false, 1, 5, str, null);
    }

    static n d(String str, Throwable th) {
        return new n(false, 1, 5, str, th);
    }

    static n f(int i10) {
        return new n(true, i10, 1, null, null);
    }

    static n g(int i10, int i11, String str, @Nullable Throwable th) {
        return new n(false, i10, i11, str, th);
    }

    @Nullable
    String a() {
        return this.f7551b;
    }

    final void e() {
        if (this.f7550a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f7552c != null) {
            Log.d("GoogleCertificatesRslt", a(), this.f7552c);
        } else {
            Log.d("GoogleCertificatesRslt", a());
        }
    }
}
