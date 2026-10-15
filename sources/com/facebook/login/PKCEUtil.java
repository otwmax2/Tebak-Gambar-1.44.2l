package com.facebook.login;

import android.os.Bundle;
import android.util.Base64;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.internal.ServerProtocol;
import i9.t;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: PKCEUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PKCEUtil {
    public static final PKCEUtil INSTANCE = new PKCEUtil();

    private PKCEUtil() {
    }

    public static final GraphRequest createCodeExchangeRequest(String str, String str2, String str3) {
        t9.m.e(str, "authorizationCode");
        t9.m.e(str2, "redirectUri");
        t9.m.e(str3, "codeVerifier");
        Bundle bundle = new Bundle();
        bundle.putString("code", str);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        bundle.putString("client_id", FacebookSdk.getApplicationId());
        bundle.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, str2);
        bundle.putString("code_verifier", str3);
        GraphRequest graphRequestNewGraphPathRequest = GraphRequest.Companion.newGraphPathRequest(null, "oauth/access_token", null);
        graphRequestNewGraphPathRequest.setHttpMethod(HttpMethod.GET);
        graphRequestNewGraphPathRequest.setParameters(bundle);
        return graphRequestNewGraphPathRequest;
    }

    public static final String generateCodeChallenge(String str, CodeChallengeMethod codeChallengeMethod) throws FacebookException {
        t9.m.e(str, "codeVerifier");
        t9.m.e(codeChallengeMethod, "codeChallengeMethod");
        if (!isValidCodeVerifier(str)) {
            throw new FacebookException("Invalid Code Verifier.");
        }
        if (codeChallengeMethod == CodeChallengeMethod.PLAIN) {
            return str;
        }
        try {
            byte[] bytes = str.getBytes(ba.d.f4717f);
            t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bytes, 0, bytes.length);
            String strEncodeToString = Base64.encodeToString(messageDigest.digest(), 11);
            t9.m.d(strEncodeToString, "{\n      // try to generate challenge with S256\n      val bytes: ByteArray = codeVerifier.toByteArray(Charsets.US_ASCII)\n      val messageDigest = MessageDigest.getInstance(\"SHA-256\")\n      messageDigest.update(bytes, 0, bytes.size)\n      val digest = messageDigest.digest()\n\n      Base64.encodeToString(digest, Base64.URL_SAFE or Base64.NO_PADDING or Base64.NO_WRAP)\n    }");
            return strEncodeToString;
        } catch (Exception e10) {
            throw new FacebookException(e10);
        }
    }

    public static final String generateCodeVerifier() {
        int iH = y9.l.h(new y9.f(43, 128), w9.c.f36036o);
        List listH = t.H(t.H(t.H(t.H(t.G(t.F(new y9.c('a', 'z'), new y9.c('A', 'Z')), new y9.c('0', '9')), '-'), '.'), '_'), '~');
        ArrayList arrayList = new ArrayList(iH);
        for (int i10 = 0; i10 < iH; i10++) {
            arrayList.add(Character.valueOf(((Character) t.I(listH, w9.c.f36036o)).charValue()));
        }
        return t.B(arrayList, com.vungle.mediation.BuildConfig.FLAVOR, null, null, 0, null, null, 62, null);
    }

    public static final boolean isValidCodeVerifier(String str) {
        if ((str == null || str.length() == 0) || str.length() < 43 || str.length() > 128) {
            return false;
        }
        return new ba.f("^[-._~A-Za-z0-9]+$").a(str);
    }
}
