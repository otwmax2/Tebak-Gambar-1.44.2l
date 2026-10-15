package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfku {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static zzfku f18361c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SharedPreferences f18363b;

    private zzfku(Context context) {
        this.f18362a = context.getPackageName();
        this.f18363b = context.getSharedPreferences("paid_storage_sp", 0);
    }

    static zzfku b(Context context) {
        if (f18361c == null) {
            f18361c = new zzfku(context);
        }
        return f18361c;
    }

    final long a(String str, long j10) {
        return this.f18363b.getLong(str, -1L);
    }

    @Nullable
    final String c(String str, String str2) {
        return this.f18363b.getString(str, null);
    }

    final void d(String str, Object obj) throws IOException {
        boolean zCommit;
        if (obj instanceof String) {
            zCommit = this.f18363b.edit().putString(str, (String) obj).commit();
        } else if (obj instanceof Long) {
            zCommit = this.f18363b.edit().putLong(str, ((Long) obj).longValue()).commit();
        } else {
            if (!(obj instanceof Boolean)) {
                String str2 = "Unexpected object class " + String.valueOf(obj.getClass()) + " for app " + this.f18362a;
                Log.e("PaidLifecycleSPHandler", str2);
                throw new IllegalArgumentException(str2);
            }
            zCommit = this.f18363b.edit().putBoolean(str, ((Boolean) obj).booleanValue()).commit();
        }
        if (zCommit) {
            return;
        }
        String str3 = "Failed to store " + str + " for app " + this.f18362a;
        Log.e("PaidLifecycleSPHandler", str3);
        throw new IOException(str3);
    }

    final void e(String str) throws IOException {
        if (this.f18363b.edit().remove(str).commit()) {
            return;
        }
        String str2 = "Failed to remove " + str + " for app " + this.f18362a;
        Log.e("PaidLifecycleSPHandler", str2);
        throw new IOException(str2);
    }

    final boolean f(String str, boolean z10) {
        return this.f18363b.getBoolean(str, true);
    }

    final boolean g(String str) {
        return this.f18363b.contains(str);
    }
}
