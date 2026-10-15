package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.k;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigFetchHttpClient {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f26596h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f26597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f26599c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f26600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f26601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f26602f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f26603g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j10, long j11) {
        this.f26597a = context;
        this.f26598b = str;
        this.f26599c = str2;
        this.f26600d = e(str);
        this.f26601e = str3;
        this.f26602f = j10;
        this.f26603g = j11;
    }

    private boolean a(JSONObject jSONObject) {
        try {
            return !jSONObject.get("state").equals("NO_CHANGE");
        } catch (JSONException unused) {
            return true;
        }
    }

    private JSONObject b(String str, String str2, Map<String, String> map) throws u6.f {
        HashMap map2 = new HashMap();
        if (str == null) {
            throw new u6.f("Fetch failed: Firebase installation id is null.");
        }
        map2.put("appInstanceId", str);
        map2.put("appInstanceIdToken", str2);
        map2.put("appId", this.f26598b);
        Locale locale = this.f26597a.getResources().getConfiguration().locale;
        map2.put("countryCode", locale.getCountry());
        int i10 = Build.VERSION.SDK_INT;
        map2.put("languageCode", i10 >= 21 ? locale.toLanguageTag() : locale.toString());
        map2.put("platformVersion", Integer.toString(i10));
        map2.put("timeZone", TimeZone.getDefault().getID());
        try {
            PackageInfo packageInfo = this.f26597a.getPackageManager().getPackageInfo(this.f26597a.getPackageName(), 0);
            if (packageInfo != null) {
                map2.put("appVersion", packageInfo.versionName);
                map2.put("appBuild", Long.toString(androidx.core.content.pm.a.a(packageInfo)));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        map2.put("packageName", this.f26597a.getPackageName());
        map2.put("sdkVersion", "21.0.0");
        map2.put("analyticsUserProperties", new JSONObject(map));
        return new JSONObject(map2);
    }

    private static f d(JSONObject jSONObject, Date date) throws u6.f {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        try {
            f.b bVarE = f.g().e(date);
            JSONObject jSONObject3 = null;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException unused) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                bVarE.c(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException unused2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                bVarE.d(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException unused3) {
            }
            if (jSONObject3 != null) {
                bVarE.f(jSONObject3);
            }
            return bVarE.a();
        } catch (JSONException e10) {
            throw new u6.f("Fetch failed: fetch response could not be parsed.", e10);
        }
    }

    private static String e(String str) {
        Matcher matcher = f26596h.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private JSONObject f(URLConnection uRLConnection) throws JSONException, IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i10 = bufferedReader.read();
            if (i10 == -1) {
                return new JSONObject(sb.toString());
            }
            sb.append((char) i10);
        }
    }

    private String g(String str, String str2) {
        return String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", str, str2);
    }

    private String h() {
        try {
            Context context = this.f26597a;
            byte[] bArrA = AndroidUtilsLight.a(context, context.getPackageName());
            if (bArrA != null) {
                return Hex.b(bArrA, false);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f26597a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e("FirebaseRemoteConfig", "No such package: " + this.f26597a.getPackageName(), e10);
            return null;
        }
    }

    private void i(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f26599c);
        httpURLConnection.setRequestProperty("X-Android-Package", this.f26597a.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", h());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    private void j(HttpURLConnection httpURLConnection, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    private void k(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    private void l(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map) {
        httpURLConnection.setDoOutput(true);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(this.f26602f));
        httpURLConnection.setReadTimeout((int) timeUnit.toMillis(this.f26603g));
        httpURLConnection.setRequestProperty("If-None-Match", str);
        i(httpURLConnection, str2);
        j(httpURLConnection, map);
    }

    HttpURLConnection c() throws u6.g {
        try {
            return (HttpURLConnection) new URL(g(this.f26600d, this.f26601e)).openConnection();
        } catch (IOException e10) {
            throw new u6.g(e10.getMessage());
        }
    }

    @Keep
    k.a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Date date) throws u6.g {
        l(httpURLConnection, str3, str2, map2);
        try {
            try {
                k(httpURLConnection, b(str, str2, map).toString().getBytes("utf-8"));
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    throw new u6.i(responseCode, httpURLConnection.getResponseMessage());
                }
                String headerField = httpURLConnection.getHeaderField("ETag");
                JSONObject jSONObjectF = f(httpURLConnection);
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException unused) {
                }
                return !a(jSONObjectF) ? k.a.a(date) : k.a.b(d(jSONObjectF, date), headerField);
            } finally {
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException unused2) {
                }
            }
        } catch (IOException | JSONException e10) {
            throw new u6.f("The client had an error while calling the backend!", e10);
        }
    }
}
