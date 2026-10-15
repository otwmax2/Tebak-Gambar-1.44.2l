package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f17678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f17681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f17682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f17683f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f17684g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f17685h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzeye f17686i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Bundle f17687j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f17688k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f17689l;

    zzeyf(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        List listEmptyList = Collections.emptyList();
        Bundle bundle = new Bundle();
        jsonReader.beginObject();
        int iNextInt = 0;
        String strNextString = BuildConfig.FLAVOR;
        String strNextString2 = strNextString;
        String strNextString3 = strNextString2;
        zzeye zzeyeVar = null;
        long jNextLong = 0;
        boolean zNextBoolean = false;
        String strNextString4 = strNextString3;
        String strNextString5 = strNextString4;
        int iNextInt2 = 0;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("nofill_urls".equals(strNextName)) {
                listEmptyList = com.google.android.gms.ads.internal.util.zzbu.d(jsonReader);
            } else if ("refresh_interval".equals(strNextName)) {
                iNextInt = jsonReader.nextInt();
            } else if ("gws_query_id".equals(strNextName)) {
                strNextString4 = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(strNextName)) {
                strNextString5 = jsonReader.nextString();
            } else if ("is_idless".equals(strNextName)) {
                zNextBoolean = jsonReader.nextBoolean();
            } else if ("response_code".equals(strNextName)) {
                iNextInt2 = jsonReader.nextInt();
            } else if ("latency".equals(strNextName)) {
                jNextLong = jsonReader.nextLong();
            } else {
                String str = strNextString3;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F7)).booleanValue() && "public_error".equals(strNextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    zzeyeVar = new zzeye(jsonReader);
                } else if ("bidding_data".equals(strNextName)) {
                    strNextString = jsonReader.nextString();
                } else if ("response_info_extras".equals(strNextName)) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10363s6)).booleanValue()) {
                        try {
                            Bundle bundleA = com.google.android.gms.ads.internal.util.zzbu.a(com.google.android.gms.ads.internal.util.zzbu.h(jsonReader));
                            if (bundleA != null) {
                                bundle = bundleA;
                            }
                        } catch (IOException | JSONException unused) {
                        } catch (IllegalStateException unused2) {
                            jsonReader.skipValue();
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                } else if ("adRequestPostBody".equals(strNextName)) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10431y8)).booleanValue()) {
                        strNextString3 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                } else if ("adRequestUrl".equals(strNextName)) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10431y8)).booleanValue()) {
                        strNextString2 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                } else {
                    jsonReader.skipValue();
                }
                strNextString3 = str;
            }
        }
        jsonReader.endObject();
        this.f17678a = listEmptyList;
        this.f17680c = iNextInt;
        this.f17679b = strNextString4;
        this.f17681d = strNextString5;
        this.f17682e = iNextInt2;
        this.f17683f = jNextLong;
        this.f17686i = zzeyeVar;
        this.f17684g = zNextBoolean;
        this.f17685h = strNextString;
        this.f17687j = bundle;
        this.f17688k = strNextString2;
        this.f17689l = strNextString3;
    }
}
