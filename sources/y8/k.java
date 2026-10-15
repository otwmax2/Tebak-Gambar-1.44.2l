package y8;

import com.facebook.appevents.AppEventsConstants;
import com.vungle.mediation.BuildConfig;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: MCrypt.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37052a = "fedcba3450126789";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f37055d = "c670c13c2af975f1f72e19692cd70998";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IvParameterSpec f37053b = new IvParameterSpec(this.f37052a.getBytes());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SecretKeySpec f37054c = new SecretKeySpec(this.f37055d.getBytes(), "AES");

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        String str = BuildConfig.FLAVOR;
        for (int i10 = 0; i10 < length; i10++) {
            str = (bArr[i10] & 255) < 16 ? str + AppEventsConstants.EVENT_PARAM_VALUE_NO + Integer.toHexString(bArr[i10] & 255) : str + Integer.toHexString(bArr[i10] & 255);
        }
        return str;
    }

    public static byte[] d(String str) {
        if (str == null || str.length() < 2) {
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) Integer.parseInt(str.substring(i11, i11 + 2), 16);
        }
        return bArr;
    }

    private static String e(String str) {
        int length = 16 - (str.length() % 16);
        for (int i10 = 0; i10 < length; i10++) {
            str = str + ' ';
        }
        return str;
    }

    public byte[] b(String str) throws Exception {
        if (str == null || str.length() == 0) {
            throw new Exception("Empty string");
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(2, this.f37054c, this.f37053b);
            return cipher.doFinal(d(str));
        } catch (Exception e10) {
            com.google.firebase.crashlytics.a.a().d(e10);
            throw new Exception("[decrypt] " + e10.getMessage());
        }
    }

    public byte[] c(String str) throws Exception {
        if (str == null || str.length() == 0) {
            throw new Exception("Empty string");
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(1, this.f37054c, this.f37053b);
            return cipher.doFinal(e(str).getBytes());
        } catch (Exception e10) {
            com.google.firebase.crashlytics.a.a().d(e10);
            throw new Exception("[encrypt] " + e10.getMessage());
        }
    }
}
