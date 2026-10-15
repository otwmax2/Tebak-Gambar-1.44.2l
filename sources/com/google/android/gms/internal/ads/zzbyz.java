package com.google.android.gms.internal.ads;

import android.content.Context;
import android.provider.Settings;
import android.util.JsonWriter;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbyz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f11596c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f11597d = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f11600g = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f11601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f11595b = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Clock f11598e = DefaultClock.d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set f11599f = new HashSet(Arrays.asList(new String[0]));

    public zzbyz() {
        this(null);
    }

    static /* synthetic */ void a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name(ShareConstants.MEDIA_URI).value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        s(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name(SDKConstants.PARAM_A2U_BODY).value(Base64Utils.c(bArr));
        }
        jsonWriter.endObject();
    }

    static /* synthetic */ void b(int i10, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i10);
        jsonWriter.endObject();
        s(jsonWriter, map);
        jsonWriter.endObject();
    }

    public static void i() {
        synchronized (f11595b) {
            f11596c = false;
            f11597d = false;
            zzbza.g("Ad debug logging enablement is out of date.");
        }
    }

    public static void j(boolean z10) {
        synchronized (f11595b) {
            f11596c = true;
            f11597d = z10;
        }
    }

    public static boolean k(Context context) {
        if (!((Boolean) zzbcg.f10523a.e()).booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e10) {
            zzbza.h("Fail to determine debug setting.", e10);
            return false;
        }
    }

    public static boolean l() {
        boolean z10;
        synchronized (f11595b) {
            z10 = false;
            if (f11596c && f11597d) {
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean m() {
        boolean z10;
        synchronized (f11595b) {
            z10 = f11596c;
        }
        return z10;
    }

    private static synchronized void n(String str) {
        zzbza.f("GMA Debug BEGIN");
        int i10 = 0;
        while (i10 < str.length()) {
            int i11 = i10 + 4000;
            zzbza.f("GMA Debug CONTENT ".concat(String.valueOf(str.substring(i10, Math.min(i11, str.length())))));
            i10 = i11;
        }
        zzbza.f("GMA Debug FINISH");
    }

    private final void o(String str, zzbyy zzbyyVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f11598e.a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator it = this.f11601a.iterator();
            while (it.hasNext()) {
                jsonWriter.value((String) it.next());
            }
            jsonWriter.endArray();
            zzbyyVar.a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e10) {
            zzbza.e("unable to log", e10);
        }
        n(stringWriter.toString());
    }

    private final void p(final String str) {
        o("onNetworkRequestError", new zzbyy() { // from class: com.google.android.gms.internal.ads.zzbyv
            @Override // com.google.android.gms.internal.ads.zzbyy
            public final void a(JsonWriter jsonWriter) throws IOException {
                String str2 = str;
                int i10 = zzbyz.f11600g;
                jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
                if (str2 != null) {
                    jsonWriter.name(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION).value(str2);
                }
                jsonWriter.endObject();
            }
        });
    }

    private final void q(final String str, final String str2, final Map map, final byte[] bArr) {
        o("onNetworkRequest", new zzbyy() { // from class: com.google.android.gms.internal.ads.zzbyw
            @Override // com.google.android.gms.internal.ads.zzbyy
            public final void a(JsonWriter jsonWriter) throws IOException {
                zzbyz.a(str, str2, map, bArr, jsonWriter);
            }
        });
    }

    private final void r(final Map map, final int i10) {
        o("onNetworkResponse", new zzbyy() { // from class: com.google.android.gms.internal.ads.zzbyu
            @Override // com.google.android.gms.internal.ads.zzbyy
            public final void a(JsonWriter jsonWriter) throws IOException {
                zzbyz.b(i10, map, jsonWriter);
            }
        });
    }

    private static void s(JsonWriter jsonWriter, Map map) throws IOException {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            if (!f11599f.contains(str)) {
                if (!(entry.getValue() instanceof List)) {
                    if (!(entry.getValue() instanceof String)) {
                        zzbza.d("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name("name").value(str);
                    jsonWriter.name(SDKConstants.PARAM_VALUE).value((String) entry.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str2 : (List) entry.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(str);
                        jsonWriter.name(SDKConstants.PARAM_VALUE).value(str2);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    public final void c(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (l()) {
            q(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public final void d(String str, String str2, Map map, byte[] bArr) {
        if (l()) {
            q(str, "GET", map, bArr);
        }
    }

    public final void e(HttpURLConnection httpURLConnection, int i10) {
        if (l()) {
            String responseMessage = null;
            r(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i10);
            if (i10 < 200 || i10 >= 300) {
                try {
                    responseMessage = httpURLConnection.getResponseMessage();
                } catch (IOException e10) {
                    zzbza.g("Can not get error message from error HttpURLConnection\n".concat(String.valueOf(e10.getMessage())));
                }
                p(responseMessage);
            }
        }
    }

    public final void f(Map map, int i10) {
        if (l()) {
            r(map, i10);
            if (i10 < 200 || i10 >= 300) {
                p(null);
            }
        }
    }

    public final void g(String str) {
        if (l() && str != null) {
            h(str.getBytes());
        }
    }

    public final void h(final byte[] bArr) {
        o("onNetworkResponseBody", new zzbyy() { // from class: com.google.android.gms.internal.ads.zzbyx
            @Override // com.google.android.gms.internal.ads.zzbyy
            public final void a(JsonWriter jsonWriter) throws IOException {
                byte[] bArr2 = bArr;
                int i10 = zzbyz.f11600g;
                jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
                int length = bArr2.length;
                String strC = Base64Utils.c(bArr2);
                if (length < 10000) {
                    jsonWriter.name(SDKConstants.PARAM_A2U_BODY).value(strC);
                } else {
                    String strJ = zzbyt.j(strC);
                    if (strJ != null) {
                        jsonWriter.name("bodydigest").value(strJ);
                    }
                }
                jsonWriter.name("bodylength").value(length);
                jsonWriter.endObject();
            }
        });
    }

    public zzbyz(String str) {
        this.f11601a = !l() ? new ArrayList() : Arrays.asList("network_request_".concat(String.valueOf(UUID.randomUUID().toString())));
    }
}
