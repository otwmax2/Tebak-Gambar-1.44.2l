package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class Storage {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lock f6773c = new ReentrantLock();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("sLk")
    private static Storage f6774d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lock f6775a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLk")
    private final SharedPreferences f6776b;

    @VisibleForTesting
    Storage(Context context) {
        this.f6776b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @KeepForSdk
    public static Storage b(Context context) {
        Preconditions.k(context);
        Lock lock = f6773c;
        lock.lock();
        try {
            if (f6774d == null) {
                f6774d = new Storage(context.getApplicationContext());
            }
            Storage storage = f6774d;
            lock.unlock();
            return storage;
        } catch (Throwable th) {
            f6773c.unlock();
            throw th;
        }
    }

    private static final String i(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(str2);
        return sb.toString();
    }

    @KeepForSdk
    public void a() {
        this.f6775a.lock();
        try {
            this.f6776b.edit().clear().apply();
        } finally {
            this.f6775a.unlock();
        }
    }

    @KeepForSdk
    public GoogleSignInAccount c() {
        String strG;
        String strG2 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strG2) || (strG = g(i("googleSignInAccount", strG2))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.g4(strG);
        } catch (JSONException unused) {
            return null;
        }
    }

    @KeepForSdk
    public GoogleSignInOptions d() {
        String strG;
        String strG2 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strG2) || (strG = g(i("googleSignInOptions", strG2))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.d4(strG);
        } catch (JSONException unused) {
            return null;
        }
    }

    @KeepForSdk
    public String e() {
        return g("refreshToken");
    }

    @KeepForSdk
    public void f(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        Preconditions.k(googleSignInAccount);
        Preconditions.k(googleSignInOptions);
        h("defaultGoogleSignInAccount", googleSignInAccount.h4());
        Preconditions.k(googleSignInAccount);
        Preconditions.k(googleSignInOptions);
        String strH4 = googleSignInAccount.h4();
        h(i("googleSignInAccount", strH4), googleSignInAccount.i4());
        h(i("googleSignInOptions", strH4), googleSignInOptions.h4());
    }

    protected final String g(String str) {
        this.f6775a.lock();
        try {
            return this.f6776b.getString(str, null);
        } finally {
            this.f6775a.unlock();
        }
    }

    protected final void h(String str, String str2) {
        this.f6775a.lock();
        try {
            this.f6776b.edit().putString(str, str2).apply();
        } finally {
            this.f6775a.unlock();
        }
    }
}
