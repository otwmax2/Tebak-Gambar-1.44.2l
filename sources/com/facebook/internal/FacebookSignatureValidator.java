package com.facebook.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import i9.i0;
import java.util.HashSet;

/* JADX INFO: compiled from: FacebookSignatureValidator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FacebookSignatureValidator {
    public static final FacebookSignatureValidator INSTANCE = new FacebookSignatureValidator();
    private static final String FBR_HASH = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9";
    private static final String FBR2_HASH = "cc2751449a350f668590264ed76692694a80308a";
    private static final String FBI_HASH = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc";
    private static final String FBL_HASH = "df6b721c8b4d3b6eb44c861d4415007e5a35fc95";
    private static final String MSR_HASH = "9b8f518b086098de3d77736f9458a3d2f6f95a37";
    private static final String FBF_HASH = "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3";
    private static final String IGR_HASH = "c56fb7d591ba6704df047fd98f535372fea00211";
    private static final HashSet<String> validAppSignatureHashes = i0.c(FBR_HASH, FBR2_HASH, FBI_HASH, FBL_HASH, MSR_HASH, FBF_HASH, IGR_HASH);

    private FacebookSignatureValidator() {
    }

    public static final boolean validateSignature(Context context, String str) {
        t9.m.e(context, "context");
        t9.m.e(str, "packageName");
        String str2 = Build.BRAND;
        int i10 = context.getApplicationInfo().flags;
        t9.m.d(str2, "brand");
        if (ba.p.u(str2, "generic", false, 2, null) && (i10 & 2) != 0) {
            return true;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null) {
                return false;
            }
            t9.m.d(signatureArr, "packageInfo.signatures");
            if (signatureArr.length == 0) {
                return false;
            }
            Signature[] signatureArr2 = packageInfo.signatures;
            t9.m.d(signatureArr2, "packageInfo.signatures");
            for (Signature signature : signatureArr2) {
                HashSet<String> hashSet = validAppSignatureHashes;
                Utility utility = Utility.INSTANCE;
                byte[] byteArray = signature.toByteArray();
                t9.m.d(byteArray, "it.toByteArray()");
                if (!i9.t.p(hashSet, Utility.sha1hash(byteArray))) {
                    return false;
                }
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
