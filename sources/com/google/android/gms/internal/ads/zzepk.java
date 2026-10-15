package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepk implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f17139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f17140b;

    zzepk(zzfuu zzfuuVar, Context context) {
        this.f17139a = zzfuuVar;
        this.f17140b = context;
    }

    public static Bundle a(Context context, JSONArray jSONArray) {
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
            String strOptString = jSONObjectOptJSONObject.optString("bk");
            String strOptString2 = jSONObjectOptJSONObject.optString("sk");
            int iOptInt = jSONObjectOptJSONObject.optInt("type", -1);
            int i11 = iOptInt != 0 ? iOptInt != 1 ? iOptInt != 2 ? 0 : 3 : 2 : 1;
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2) && i11 != 0) {
                String[] strArrSplit = strOptString2.split("/");
                int length = strArrSplit.length;
                Object obj = null;
                if (length <= 2 && length != 0) {
                    if (length == 1) {
                        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                        str = strArrSplit[0];
                    } else {
                        sharedPreferences = context.getSharedPreferences(strArrSplit[0], 0);
                        str = strArrSplit[1];
                    }
                    obj = sharedPreferences.getAll().get(str);
                }
                if (obj != null) {
                    int i12 = i11 - 1;
                    if (i12 != 0) {
                        if (i12 != 1) {
                            if (obj instanceof Boolean) {
                                bundle.putBoolean(strOptString, ((Boolean) obj).booleanValue());
                            }
                        } else if (obj instanceof Integer) {
                            bundle.putInt(strOptString, ((Integer) obj).intValue());
                        } else if (obj instanceof Long) {
                            bundle.putLong(strOptString, ((Long) obj).longValue());
                        } else if (obj instanceof Float) {
                            bundle.putFloat(strOptString, ((Float) obj).floatValue());
                        }
                    } else if (obj instanceof String) {
                        bundle.putString(strOptString, (String) obj);
                    }
                }
            }
        }
        return bundle;
    }

    final /* synthetic */ zzepm b() throws Exception {
        String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H5);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final Bundle bundleA = a(this.f17140b, new JSONArray(str));
            return new zzepm() { // from class: com.google.android.gms.internal.ads.zzepj
                @Override // com.google.android.gms.internal.ads.zzepm
                public final void a(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", bundleA);
                }
            };
        } catch (JSONException e10) {
            zzbza.c("JSON parsing error", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 37;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17139a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzepi
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f17137a.b();
            }
        });
    }
}
