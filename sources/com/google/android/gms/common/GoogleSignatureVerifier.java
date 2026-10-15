package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.errorprone.annotations.RestrictedInheritance;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
public class GoogleSignatureVerifier {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private static GoogleSignatureVerifier f6926c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile String f6928b;

    public GoogleSignatureVerifier(Context context) {
        this.f6927a = context.getApplicationContext();
    }

    @KeepForSdk
    public static GoogleSignatureVerifier a(Context context) {
        Preconditions.k(context);
        synchronized (GoogleSignatureVerifier.class) {
            if (f6926c == null) {
                l.d(context);
                f6926c = new GoogleSignatureVerifier(context);
            }
        }
        return f6926c;
    }

    @Nullable
    static final h d(PackageInfo packageInfo, h... hVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        i iVar = new i(packageInfo.signatures[0].toByteArray());
        for (int i10 = 0; i10 < hVarArr.length; i10++) {
            if (hVarArr[i10].equals(iVar)) {
                return hVarArr[i10];
            }
        }
        return null;
    }

    public static final boolean e(PackageInfo packageInfo, boolean z10) {
        if (z10 && packageInfo != null && ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName))) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            z10 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
        }
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z10 ? d(packageInfo, k.f7536a) : d(packageInfo, k.f7536a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private final n f(String str, boolean z10, boolean z11) {
        n nVarC;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return n.c("null pkg");
        }
        if (str.equals(this.f6928b)) {
            return n.b();
        }
        if (l.e()) {
            nVarC = l.b(str, GooglePlayServicesUtilLight.f(this.f6927a), false, false);
        } else {
            try {
                PackageInfo packageInfo = this.f6927a.getPackageManager().getPackageInfo(str, 64);
                boolean zF = GooglePlayServicesUtilLight.f(this.f6927a);
                if (packageInfo == null) {
                    nVarC = n.c("null pkg");
                } else {
                    Signature[] signatureArr = packageInfo.signatures;
                    if (signatureArr == null || signatureArr.length != 1) {
                        nVarC = n.c("single cert required");
                    } else {
                        i iVar = new i(packageInfo.signatures[0].toByteArray());
                        String str2 = packageInfo.packageName;
                        n nVarA = l.a(str2, iVar, zF, false);
                        nVarC = (!nVarA.f7550a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !l.a(str2, iVar, false, true).f7550a) ? nVarA : n.c("debuggable release cert app rejected");
                    }
                }
            } catch (PackageManager.NameNotFoundException e10) {
                return n.d("no pkg ".concat(str), e10);
            }
        }
        if (nVarC.f7550a) {
            this.f6928b = str;
        }
        return nVarC;
    }

    @KeepForSdk
    public boolean b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (e(packageInfo, false)) {
            return true;
        }
        if (e(packageInfo, true)) {
            if (GooglePlayServicesUtilLight.f(this.f6927a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean c(int i10) {
        n nVarC;
        int length;
        String[] packagesForUid = this.f6927a.getPackageManager().getPackagesForUid(i10);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            nVarC = null;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    Preconditions.k(nVarC);
                    break;
                }
                nVarC = f(packagesForUid[i11], false, false);
                if (nVarC.f7550a) {
                    break;
                }
                i11++;
            }
        } else {
            nVarC = n.c("no pkgs");
        }
        nVarC.e();
        return nVarC.f7550a;
    }
}
