package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.o;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.t;
import com.vungle.mediation.BuildConfig;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: OAuth1aParameters.java */
/* JADX INFO: loaded from: classes2.dex */
class d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final SecureRandom f27462g = new SecureRandom();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f27463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f27464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f27465c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f27466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f27467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<String, String> f27468f;

    d(r rVar, t tVar, String str, String str2, String str3, Map<String, String> map) {
        this.f27463a = rVar;
        this.f27464b = tVar;
        this.f27465c = str;
        this.f27466d = str2;
        this.f27467e = str3;
        this.f27468f = map;
    }

    private void a(StringBuilder sb, String str, String str2) {
        if (str2 != null) {
            sb.append(' ');
            sb.append(d9.f.c(str));
            sb.append("=\"");
            sb.append(d9.f.c(str2));
            sb.append("\",");
        }
    }

    private String f(TreeMap<String, String> treeMap) {
        StringBuilder sb = new StringBuilder();
        int size = treeMap.size();
        int i10 = 0;
        for (Map.Entry<String, String> entry : treeMap.entrySet()) {
            sb.append(d9.f.c(d9.f.c(entry.getKey())));
            sb.append("%3D");
            sb.append(d9.f.c(d9.f.c(entry.getValue())));
            i10++;
            if (i10 < size) {
                sb.append("%26");
            }
        }
        return sb.toString();
    }

    private String g() {
        return String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(f27462g.nextLong()));
    }

    private String h() {
        t tVar = this.f27464b;
        return d9.f.e(this.f27463a.t()) + '&' + d9.f.e(tVar != null ? tVar.f27503q : null);
    }

    private String i() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }

    String b(String str) {
        try {
            String strH = h();
            byte[] bytes = str.getBytes("UTF8");
            SecretKeySpec secretKeySpec = new SecretKeySpec(strH.getBytes("UTF8"), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            byte[] bArrDoFinal = mac.doFinal(bytes);
            return okio.f.p(bArrDoFinal, 0, bArrDoFinal.length).c();
        } catch (UnsupportedEncodingException e10) {
            o.g().b("Twitter", "Failed to calculate signature", e10);
            return BuildConfig.FLAVOR;
        } catch (InvalidKeyException e11) {
            o.g().b("Twitter", "Failed to calculate signature", e11);
            return BuildConfig.FLAVOR;
        } catch (NoSuchAlgorithmException e12) {
            o.g().b("Twitter", "Failed to calculate signature", e12);
            return BuildConfig.FLAVOR;
        }
    }

    String c(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("OAuth");
        a(sb, "oauth_callback", this.f27465c);
        a(sb, "oauth_consumer_key", this.f27463a.h());
        a(sb, "oauth_nonce", str);
        a(sb, "oauth_signature", str3);
        a(sb, "oauth_signature_method", "HMAC-SHA1");
        a(sb, "oauth_timestamp", str2);
        t tVar = this.f27464b;
        a(sb, "oauth_token", tVar != null ? tVar.f27502p : null);
        a(sb, "oauth_version", "1.0");
        return sb.substring(0, sb.length() - 1);
    }

    String d(String str, String str2) {
        String str3;
        URI uriCreate = URI.create(this.f27467e);
        TreeMap<String, String> treeMapB = d9.f.b(uriCreate, true);
        Map<String, String> map = this.f27468f;
        if (map != null) {
            treeMapB.putAll(map);
        }
        String str4 = this.f27465c;
        if (str4 != null) {
            treeMapB.put("oauth_callback", str4);
        }
        treeMapB.put("oauth_consumer_key", this.f27463a.h());
        treeMapB.put("oauth_nonce", str);
        treeMapB.put("oauth_signature_method", "HMAC-SHA1");
        treeMapB.put("oauth_timestamp", str2);
        t tVar = this.f27464b;
        if (tVar != null && (str3 = tVar.f27502p) != null) {
            treeMapB.put("oauth_token", str3);
        }
        treeMapB.put("oauth_version", "1.0");
        return this.f27466d.toUpperCase(Locale.ENGLISH) + '&' + d9.f.c(uriCreate.getScheme() + "://" + uriCreate.getHost() + uriCreate.getPath()) + '&' + f(treeMapB);
    }

    public String e() {
        String strG = g();
        String strI = i();
        return c(strG, strI, b(d(strG, strI)));
    }
}
