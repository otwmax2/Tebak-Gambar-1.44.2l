package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private int f6893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f6894c = 0;

    public zzr(Context context) {
        this.f6892a = context;
    }

    private final PackageInfo b(String str) {
        try {
            return Wrappers.a(this.f6892a).f(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            String strValueOf = String.valueOf(e10);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
            sb.append("Failed to find package ");
            sb.append(strValueOf);
            Log.w("Metadata", sb.toString());
            return null;
        }
    }

    public final synchronized int a() {
        int i10 = this.f6894c;
        if (i10 != 0) {
            return i10;
        }
        PackageManager packageManager = this.f6892a.getPackageManager();
        if (Wrappers.a(this.f6892a).b("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("Metadata", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!PlatformVersion.j()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.f6894c = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f6894c = 2;
            return 2;
        }
        Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
        if (PlatformVersion.j()) {
            this.f6894c = 2;
        } else {
            this.f6894c = 1;
        }
        return this.f6894c;
    }

    public final synchronized int c() {
        PackageInfo packageInfoB;
        if (this.f6893b == 0 && (packageInfoB = b("com.google.android.gms")) != null) {
            this.f6893b = packageInfoB.versionCode;
        }
        return this.f6893b;
    }
}
