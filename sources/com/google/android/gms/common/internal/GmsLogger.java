package com.google.android.gms.common.internal;

import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class GmsLogger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7403b;

    @KeepForSdk
    public GmsLogger(String str) {
        this(str, null);
    }

    private final String j(String str) {
        String str2 = this.f7403b;
        return str2 == null ? str : str2.concat(str);
    }

    private final String k(String str, Object... objArr) {
        String str2 = String.format(str, objArr);
        String str3 = this.f7403b;
        return str3 == null ? str2 : str3.concat(str2);
    }

    @KeepForSdk
    public boolean a(int i10) {
        return Log.isLoggable(this.f7402a, i10);
    }

    @KeepForSdk
    public void b(String str, String str2) {
        if (a(3)) {
            Log.d(str, j(str2));
        }
    }

    @KeepForSdk
    public void c(String str, String str2) {
        if (a(6)) {
            Log.e(str, j(str2));
        }
    }

    @KeepForSdk
    public void d(String str, String str2, Throwable th) {
        if (a(6)) {
            Log.e(str, j(str2), th);
        }
    }

    @KeepForSdk
    public void e(String str, String str2, Object... objArr) {
        if (a(6)) {
            Log.e(str, k(str2, objArr));
        }
    }

    @KeepForSdk
    public void f(String str, String str2) {
        if (a(2)) {
            Log.v(str, j(str2));
        }
    }

    @KeepForSdk
    public void g(String str, String str2) {
        if (a(5)) {
            Log.w(str, j(str2));
        }
    }

    @KeepForSdk
    public void h(String str, String str2, Throwable th) {
        if (a(5)) {
            Log.w(str, j(str2), th);
        }
    }

    @KeepForSdk
    public void i(String str, String str2, Object... objArr) {
        if (a(5)) {
            Log.w(this.f7402a, k(str2, objArr));
        }
    }

    @KeepForSdk
    public GmsLogger(String str, String str2) {
        Preconditions.l(str, "log tag cannot be null");
        Preconditions.c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f7402a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f7403b = null;
        } else {
            this.f7403b = str2;
        }
    }
}
