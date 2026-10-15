package j5;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.firebase_auth.zzff;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f30724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f30725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences f30726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Logger f30727d;

    public q(Context context, String str) {
        Preconditions.k(context);
        this.f30725b = Preconditions.g(str);
        this.f30724a = context.getApplicationContext();
        this.f30726c = this.f30724a.getSharedPreferences(String.format("com.google.firebase.auth.api.Store.%s", this.f30725b), 0);
        this.f30727d = new Logger("StorageHelpers", new String[0]);
    }

    private final e0 b(JSONObject jSONObject) {
        JSONArray jSONArray;
        g0 g0VarV;
        try {
            String string = jSONObject.getString("cachedTokenState");
            String string2 = jSONObject.getString("applicationName");
            boolean z10 = jSONObject.getBoolean("anonymous");
            String string3 = jSONObject.getString(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
            String str = string3 != null ? string3 : "2";
            JSONArray jSONArray2 = jSONObject.getJSONArray("userInfos");
            int length = jSONArray2.length();
            ArrayList arrayList = new ArrayList(length);
            for (int i10 = 0; i10 < length; i10++) {
                arrayList.add(a0.a4(jSONArray2.getString(i10)));
            }
            e0 e0Var = new e0(b5.g.n(string2), arrayList);
            if (!TextUtils.isEmpty(string)) {
                e0Var.h4(zzff.W3(string));
            }
            if (!z10) {
                e0Var.i4();
            }
            e0Var.o4(str);
            if (jSONObject.has("userMetadata") && (g0VarV = g0.v(jSONObject.getJSONObject("userMetadata"))) != null) {
                e0Var.q4(g0VarV);
            }
            if (jSONObject.has("userMultiFactorInfo") && (jSONArray = jSONObject.getJSONArray("userMultiFactorInfo")) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    JSONObject jSONObject2 = new JSONObject(jSONArray.getString(i11));
                    arrayList2.add("phone".equals(jSONObject2.optString("factorIdKey")) ? g5.g0.Z3(jSONObject2) : null);
                }
                e0Var.j4(arrayList2);
            }
            return e0Var;
        } catch (h5.a | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException e10) {
            this.f30727d.j(e10);
            return null;
        }
    }

    private final String g(g5.s sVar) {
        JSONObject jSONObject = new JSONObject();
        if (!e0.class.isAssignableFrom(sVar.getClass())) {
            return null;
        }
        e0 e0Var = (e0) sVar;
        try {
            jSONObject.put("cachedTokenState", e0Var.c());
            jSONObject.put("applicationName", e0Var.k4().o());
            jSONObject.put("type", "com.google.firebase.auth.internal.DefaultFirebaseUser");
            if (e0Var.f() != null) {
                JSONArray jSONArray = new JSONArray();
                List<a0> listF = e0Var.f();
                for (int i10 = 0; i10 < listF.size(); i10++) {
                    jSONArray.put(listF.get(i10).c4());
                }
                jSONObject.put("userInfos", jSONArray);
            }
            jSONObject.put("anonymous", e0Var.c4());
            jSONObject.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "2");
            if (e0Var.X3() != null) {
                jSONObject.put("userMetadata", ((g0) e0Var.X3()).w());
            }
            List<g5.z> listA = ((i0) e0Var.Y3()).a();
            if (listA != null && !listA.isEmpty()) {
                JSONArray jSONArray2 = new JSONArray();
                for (int i11 = 0; i11 < listA.size(); i11++) {
                    jSONArray2.put(listA.get(i11).X3());
                }
                jSONObject.put("userMultiFactorInfo", jSONArray2);
            }
            return jSONObject.toString();
        } catch (Exception e10) {
            this.f30727d.i("Failed to turn object into JSON", e10, new Object[0]);
            throw new h5.a(e10);
        }
    }

    public final g5.s a() {
        String string = this.f30726c.getString("com.google.firebase.auth.FIREBASE_USER", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            if (jSONObject.has("type") && "com.google.firebase.auth.internal.DefaultFirebaseUser".equalsIgnoreCase(jSONObject.optString("type"))) {
                return b(jSONObject);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final void c(g5.s sVar) {
        Preconditions.k(sVar);
        String strG = g(sVar);
        if (TextUtils.isEmpty(strG)) {
            return;
        }
        this.f30726c.edit().putString("com.google.firebase.auth.FIREBASE_USER", strG).apply();
    }

    public final void d(g5.s sVar, zzff zzffVar) {
        Preconditions.k(sVar);
        Preconditions.k(zzffVar);
        this.f30726c.edit().putString(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", sVar.b4()), zzffVar.c4()).apply();
    }

    public final void e(String str) {
        this.f30726c.edit().remove(str).apply();
    }

    public final zzff f(g5.s sVar) {
        Preconditions.k(sVar);
        String string = this.f30726c.getString(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", sVar.b4()), null);
        if (string != null) {
            return zzff.W3(string);
        }
        return null;
    }
}
