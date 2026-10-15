package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.facebook.appevents.AppEventsConstants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzezj {
    public zzezj() {
        try {
            zzfxi.a();
        } catch (GeneralSecurityException e10) {
            com.google.android.gms.ads.internal.util.zze.k("Failed to Configure Aead. ".concat(e10.toString()));
            com.google.android.gms.ads.internal.zzt.q().u(e10, "CryptoUtils.registerAead");
        }
    }

    public static final String a() {
        zzgpb zzgpbVarH = zzgpe.H();
        try {
            zzfvs.b(zzfwp.b(zzfwi.a("AES128_GCM")), zzfvq.b(zzgpbVarH));
        } catch (IOException | GeneralSecurityException e10) {
            com.google.android.gms.ads.internal.util.zze.k("Failed to generate key".concat(e10.toString()));
            com.google.android.gms.ads.internal.zzt.q().u(e10, "CryptoUtils.generateKey");
        }
        String strEncodeToString = Base64.encodeToString(zzgpbVarH.c().k(), 11);
        zzgpbVarH.d();
        return strEncodeToString;
    }

    @Nullable
    public static final String b(byte[] bArr, byte[] bArr2, String str, zzdpd zzdpdVar) {
        zzfwp zzfwpVarC = c(str);
        if (zzfwpVarC == null) {
            return null;
        }
        try {
            byte[] bArrA = ((zzfvo) zzfwpVarC.d(zzfvo.class)).a(bArr, bArr2);
            zzdpdVar.a().put("ds", AppEventsConstants.EVENT_PARAM_VALUE_YES);
            return new String(bArrA, "UTF-8");
        } catch (UnsupportedEncodingException | GeneralSecurityException e10) {
            com.google.android.gms.ads.internal.util.zze.k("Failed to decrypt ".concat(e10.toString()));
            com.google.android.gms.ads.internal.zzt.q().u(e10, "CryptoUtils.decrypt");
            zzdpdVar.a().put("dsf", e10.toString());
            return null;
        }
    }

    @Nullable
    private static final zzfwp c(String str) {
        try {
            return zzfvs.a(zzfvp.b(Base64.decode(str, 11)));
        } catch (IOException | GeneralSecurityException e10) {
            com.google.android.gms.ads.internal.util.zze.k("Failed to get keysethandle".concat(e10.toString()));
            com.google.android.gms.ads.internal.zzt.q().u(e10, "CryptoUtils.getHandle");
            return null;
        }
    }
}
