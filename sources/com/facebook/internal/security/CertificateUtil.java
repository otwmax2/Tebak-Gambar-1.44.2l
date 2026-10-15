package com.facebook.internal.security;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.vungle.mediation.BuildConfig;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import t9.m;

/* JADX INFO: compiled from: CertificateUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CertificateUtil {
    public static final String DELIMITER = ":";
    public static final CertificateUtil INSTANCE = new CertificateUtil();

    private CertificateUtil() {
    }

    public static final String getCertificateHash(Context context) {
        m.e(context, "ctx");
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            StringBuilder sb = new StringBuilder();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            m.d(signatureArr, "signatures");
            int length = signatureArr.length;
            int i10 = 0;
            while (i10 < length) {
                Signature signature = signatureArr[i10];
                i10++;
                messageDigest.update(signature.toByteArray());
                sb.append(Base64.encodeToString(messageDigest.digest(), 0));
                sb.append(DELIMITER);
            }
            if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            String string = sb.toString();
            m.d(string, "sb.toString()");
            return string;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
            return BuildConfig.FLAVOR;
        }
    }

    public static /* synthetic */ void getDELIMITER$facebook_core_release$annotations() {
    }
}
