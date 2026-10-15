package j5;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzau;
import com.google.android.gms.internal.firebase_auth.zzbl;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f30709a = new Logger("JSONParser", new String[0]);

    @VisibleForTesting
    private static List<Object> a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            Object objC = jSONArray.get(i10);
            if (objC instanceof JSONArray) {
                objC = a((JSONArray) objC);
            } else if (objC instanceof JSONObject) {
                objC = c((JSONObject) objC);
            }
            arrayList.add(objC);
        }
        return arrayList;
    }

    public static Map<String, Object> b(String str) {
        Preconditions.g(str);
        List<String> listC = zzau.b('.').c(str);
        if (listC.size() < 2) {
            Logger logger = f30709a;
            String strValueOf = String.valueOf(str);
            logger.c(strValueOf.length() != 0 ? "Invalid idToken ".concat(strValueOf) : new String("Invalid idToken "), new Object[0]);
            return zzbl.a();
        }
        try {
            Map<String, Object> mapD = d(new String(Base64Utils.b(listC.get(1)), "UTF-8"));
            return mapD == null ? zzbl.a() : mapD;
        } catch (UnsupportedEncodingException e10) {
            f30709a.b("Unable to decode token", e10, new Object[0]);
            return zzbl.a();
        }
    }

    @VisibleForTesting
    private static Map<String, Object> c(JSONObject jSONObject) throws JSONException {
        o.a aVar = new o.a();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objC = jSONObject.get(next);
            if (objC instanceof JSONArray) {
                objC = a((JSONArray) objC);
            } else if (objC instanceof JSONObject) {
                objC = c((JSONObject) objC);
            }
            aVar.put(next, objC);
        }
        return aVar;
    }

    public static Map<String, Object> d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject != JSONObject.NULL) {
                return c(jSONObject);
            }
            return null;
        } catch (Exception e10) {
            Log.d("JSONParser", "Failed to parse JSONObject into Map.");
            throw new h5.a(e10);
        }
    }
}
