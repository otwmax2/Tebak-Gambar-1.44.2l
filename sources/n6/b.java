package n6;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import b5.g;
import com.facebook.internal.security.CertificateUtil;
import com.vungle.mediation.BuildConfig;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: IidStore.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f32481c = {"*", "FCM", "GCM", BuildConfig.FLAVOR};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f32482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32483b;

    public b(g gVar) {
        this.f32482a = gVar.l().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f32483b = b(gVar);
    }

    private String a(String str, String str2) {
        return "|T|" + str + "|" + str2;
    }

    private static String b(g gVar) {
        String strD = gVar.p().d();
        if (strD != null) {
            return strD;
        }
        String strC = gVar.p().c();
        if (!strC.startsWith("1:") && !strC.startsWith("2:")) {
            return strC;
        }
        String[] strArrSplit = strC.split(CertificateUtil.DELIMITER);
        if (strArrSplit.length != 4) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    private static String c(PublicKey publicKey) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            bArrDigest[0] = (byte) (((bArrDigest[0] & 15) + 112) & 255);
            return Base64.encodeToString(bArrDigest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private String d(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException unused) {
            return null;
        }
    }

    private PublicKey e(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e10) {
            Log.w("ContentValues", "Invalid key stored " + e10);
            return null;
        }
    }

    private String g() {
        String string;
        synchronized (this.f32482a) {
            string = this.f32482a.getString("|S|id", null);
        }
        return string;
    }

    private String h() {
        synchronized (this.f32482a) {
            String string = this.f32482a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey publicKeyE = e(string);
            if (publicKeyE == null) {
                return null;
            }
            return c(publicKeyE);
        }
    }

    public String f() {
        synchronized (this.f32482a) {
            String strG = g();
            if (strG != null) {
                return strG;
            }
            return h();
        }
    }

    public String i() {
        synchronized (this.f32482a) {
            for (String str : f32481c) {
                String string = this.f32482a.getString(a(this.f32483b, str), null);
                if (string != null && !string.isEmpty()) {
                    if (string.startsWith("{")) {
                        string = d(string);
                    }
                    return string;
                }
            }
            return null;
        }
    }
}
