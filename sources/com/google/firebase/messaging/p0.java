package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SharedPreferences f26507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f26508b;

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final long f26509d = TimeUnit.DAYS.toMillis(7);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f26510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f26511b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f26512c;

        private a(String str, String str2, long j10) {
            this.f26510a = str;
            this.f26511b = str2;
            this.f26512c = j10;
        }

        static String a(String str, String str2, long j10) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j10);
                return jSONObject.toString();
            } catch (JSONException e10) {
                String strValueOf = String.valueOf(e10);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 24);
                sb.append("Failed to encode token: ");
                sb.append(strValueOf);
                Log.w("FirebaseMessaging", sb.toString());
                return null;
            }
        }

        static a c(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e10) {
                String strValueOf = String.valueOf(e10);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(strValueOf);
                Log.w("FirebaseMessaging", sb.toString());
                return null;
            }
        }

        boolean b(String str) {
            return System.currentTimeMillis() > this.f26512c + f26509d || !str.equals(this.f26511b);
        }
    }

    public p0(Context context) {
        this.f26508b = context;
        this.f26507a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        a("com.google.android.gms.appid-no-backup");
    }

    private void a(String str) {
        File file = new File(androidx.core.content.a.i(this.f26508b), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || e()) {
                return;
            }
            Log.i("FirebaseMessaging", "App restored, clearing state");
            c();
        } catch (IOException e10) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String strValueOf = String.valueOf(e10.getMessage());
                Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(strValueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    private String b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|*");
        return sb.toString();
    }

    public synchronized void c() {
        this.f26507a.edit().clear().commit();
    }

    public synchronized a d(String str, String str2) {
        return a.c(this.f26507a.getString(b(str, str2), null));
    }

    public synchronized boolean e() {
        return this.f26507a.getAll().isEmpty();
    }

    public synchronized void f(String str, String str2, String str3, String str4) {
        String strA = a.a(str3, str4, System.currentTimeMillis());
        if (strA == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.f26507a.edit();
        editorEdit.putString(b(str, str2), strA);
        editorEdit.commit();
    }
}
