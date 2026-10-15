package com.facebook.internal.security;

import android.util.Base64;
import android.util.Log;
import ba.d;
import ba.p;
import com.facebook.FacebookSdk;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.facebook.internal.Utility;
import com.facebook.internal.security.OidcSecurityUtil;
import com.vungle.mediation.BuildConfig;
import h9.t;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;
import q9.l;
import t9.m;
import t9.y;

/* JADX INFO: compiled from: OidcSecurityUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class OidcSecurityUtil {
    public static final OidcSecurityUtil INSTANCE = new OidcSecurityUtil();
    private static final String OPENID_KEYS_PATH = "/.well-known/oauth/openid/keys/";
    public static final String SIGNATURE_ALGORITHM_SHA256 = "SHA256withRSA";
    public static final long TIMEOUT_IN_MILLISECONDS = 5000;

    private OidcSecurityUtil() {
    }

    public static final PublicKey getPublicKeyFromString(String str) throws InvalidKeySpecException {
        m.e(str, SDKConstants.PARAM_KEY);
        byte[] bArrDecode = Base64.decode(p.s(p.s(p.s(str, "\n", BuildConfig.FLAVOR, false, 4, null), "-----BEGIN PUBLIC KEY-----", BuildConfig.FLAVOR, false, 4, null), "-----END PUBLIC KEY-----", BuildConfig.FLAVOR, false, 4, null), 0);
        m.d(bArrDecode, "decode(pubKeyString, Base64.DEFAULT)");
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArrDecode));
        m.d(publicKeyGeneratePublic, "kf.generatePublic(x509publicKey)");
        return publicKeyGeneratePublic;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String getRawKeyFromEndPoint(final String str) {
        m.e(str, "kid");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        final URL url = new URL(TournamentShareDialogURIBuilder.scheme, m.k("www.", FacebookSdk.getFacebookDomain()), OPENID_KEYS_PATH);
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final y yVar = new y();
        FacebookSdk.getExecutor().execute(new Runnable() { // from class: h3.a
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                OidcSecurityUtil.m140getRawKeyFromEndPoint$lambda1(url, yVar, str, reentrantLock, conditionNewCondition);
            }
        });
        reentrantLock.lock();
        try {
            conditionNewCondition.await(5000L, TimeUnit.MILLISECONDS);
            reentrantLock.unlock();
            return (String) yVar.f35552o;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.String] */
    /* JADX INFO: renamed from: getRawKeyFromEndPoint$lambda-1, reason: not valid java name */
    public static final void m140getRawKeyFromEndPoint$lambda1(URL url, y yVar, String str, ReentrantLock reentrantLock, Condition condition) throws IOException {
        m.e(url, "$openIdKeyUrl");
        m.e(yVar, "$result");
        m.e(str, "$kid");
        m.e(reentrantLock, "$lock");
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        Objects.requireNonNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        try {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                m.d(inputStream, "connection.inputStream");
                Reader inputStreamReader = new InputStreamReader(inputStream, d.f4713b);
                String strC = l.c(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, Utility.DEFAULT_STREAM_BUFFER_SIZE));
                httpURLConnection.getInputStream().close();
                yVar.f35552o = new JSONObject(strC).optString(str);
                httpURLConnection.disconnect();
                reentrantLock.lock();
                try {
                    condition.signal();
                    t tVar = t.f30301a;
                } finally {
                }
            } catch (Exception e10) {
                String name = INSTANCE.getClass().getName();
                String message = e10.getMessage();
                if (message == null) {
                    message = "Error getting public key";
                }
                Log.d(name, message);
                httpURLConnection.disconnect();
                reentrantLock.lock();
                try {
                    condition.signal();
                    t tVar2 = t.f30301a;
                } finally {
                }
            }
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            reentrantLock.lock();
            try {
                condition.signal();
                t tVar3 = t.f30301a;
                throw th;
            } finally {
            }
        }
    }

    public static final boolean verify(PublicKey publicKey, String str, String str2) {
        m.e(publicKey, "publicKey");
        m.e(str, "data");
        m.e(str2, "signature");
        try {
            Signature signature = Signature.getInstance(SIGNATURE_ALGORITHM_SHA256);
            signature.initVerify(publicKey);
            byte[] bytes = str.getBytes(d.f4713b);
            m.d(bytes, "(this as java.lang.String).getBytes(charset)");
            signature.update(bytes);
            byte[] bArrDecode = Base64.decode(str2, 8);
            m.d(bArrDecode, "decode(signature, Base64.URL_SAFE)");
            return signature.verify(bArrDecode);
        } catch (Exception unused) {
            return false;
        }
    }

    public final String getOPENID_KEYS_PATH() {
        return OPENID_KEYS_PATH;
    }
}
