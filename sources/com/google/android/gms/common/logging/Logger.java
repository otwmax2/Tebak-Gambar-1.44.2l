package com.google.android.gms.common.logging;

import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.vungle.mediation.BuildConfig;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final GmsLogger f7546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7547d;

    @KeepForSdk
    public Logger(String str, String... strArr) {
        String string;
        if (strArr.length == 0) {
            string = BuildConfig.FLAVOR;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str2 : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str2);
            }
            sb.append("] ");
            string = sb.toString();
        }
        this.f7545b = string;
        this.f7544a = str;
        this.f7546c = new GmsLogger(str);
        int i10 = 2;
        while (i10 <= 7 && !Log.isLoggable(this.f7544a, i10)) {
            i10++;
        }
        this.f7547d = i10;
    }

    @KeepForSdk
    public void a(String str, Object... objArr) {
        if (f(3)) {
            Log.d(this.f7544a, d(str, objArr));
        }
    }

    @KeepForSdk
    public void b(String str, Throwable th, Object... objArr) {
        Log.e(this.f7544a, d(str, objArr), th);
    }

    @KeepForSdk
    public void c(String str, Object... objArr) {
        Log.e(this.f7544a, d(str, objArr));
    }

    @KeepForSdk
    protected String d(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f7545b.concat(str);
    }

    @KeepForSdk
    public void e(String str, Object... objArr) {
        Log.i(this.f7544a, d(str, objArr));
    }

    @KeepForSdk
    public boolean f(int i10) {
        return this.f7547d <= i10;
    }

    @KeepForSdk
    public void g(String str, Object... objArr) {
        if (f(2)) {
            Log.v(this.f7544a, d(str, objArr));
        }
    }

    @KeepForSdk
    public void h(String str, Object... objArr) {
        Log.w(this.f7544a, d(str, objArr));
    }

    @KeepForSdk
    public void i(String str, Throwable th, Object... objArr) {
        Log.wtf(this.f7544a, d(str, objArr), th);
    }

    @KeepForSdk
    public void j(Throwable th) {
        Log.wtf(this.f7544a, th);
    }
}
