package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f26436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private String f26437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private String f26438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private int f26439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private int f26440e = 0;

    f0(Context context) {
        this.f26436a = context;
    }

    static String c(b5.g gVar) {
        String strD = gVar.p().d();
        if (strD != null) {
            return strD;
        }
        String strC = gVar.p().c();
        if (!strC.startsWith("1:")) {
            return strC;
        }
        String[] strArrSplit = strC.split(CertificateUtil.DELIMITER);
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    private PackageInfo f(String str) {
        try {
            return this.f26436a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            String strValueOf = String.valueOf(e10);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
            sb.append("Failed to find package ");
            sb.append(strValueOf);
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
    }

    private synchronized void h() {
        PackageInfo packageInfoF = f(this.f26436a.getPackageName());
        if (packageInfoF != null) {
            this.f26437b = Integer.toString(packageInfoF.versionCode);
            this.f26438c = packageInfoF.versionName;
        }
    }

    synchronized String a() {
        if (this.f26437b == null) {
            h();
        }
        return this.f26437b;
    }

    synchronized String b() {
        if (this.f26438c == null) {
            h();
        }
        return this.f26438c;
    }

    synchronized int d() {
        PackageInfo packageInfoF;
        if (this.f26439d == 0 && (packageInfoF = f("com.google.android.gms")) != null) {
            this.f26439d = packageInfoF.versionCode;
        }
        return this.f26439d;
    }

    synchronized int e() {
        int i10 = this.f26440e;
        if (i10 != 0) {
            return i10;
        }
        PackageManager packageManager = this.f26436a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
            return 0;
        }
        int i11 = 1;
        if (!PlatformVersion.j()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.f26440e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f26440e = 2;
            return 2;
        }
        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
        if (PlatformVersion.j()) {
            this.f26440e = 2;
            i11 = 2;
        } else {
            this.f26440e = 1;
        }
        return i11;
    }

    boolean g() {
        return e() != 0;
    }
}
