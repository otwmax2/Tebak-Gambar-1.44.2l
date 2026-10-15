package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f17699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzeyf f17700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f17701c;

    zzeyn(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException, AssertionError {
        List listEmptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        zzeyf zzeyfVar = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("responses".equals(strNextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(strNextName2)) {
                        listEmptyList = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            listEmptyList.add(new zzeyc(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (strNextName2.equals("common")) {
                        zzeyfVar = new zzeyf(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (strNextName.equals("actions")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String strNextString = null;
                    JSONObject jSONObjectH = null;
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        if ("name".equals(strNextName3)) {
                            strNextString = jsonReader.nextString();
                        } else if ("info".equals(strNextName3)) {
                            jSONObjectH = com.google.android.gms.ads.internal.util.zzbu.h(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (strNextString != null) {
                        arrayList.add(new zzeym(strNextString, jSONObjectH));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.f17701c = arrayList;
        this.f17699a = listEmptyList;
        this.f17700b = zzeyfVar == null ? new zzeyf(new JsonReader(new StringReader("{}"))) : zzeyfVar;
    }

    public static zzeyn a(Reader reader) throws zzeyg {
        try {
            try {
                return new zzeyn(new JsonReader(reader));
            } finally {
                IOUtils.b(reader);
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e10) {
            throw new zzeyg("unable to parse ServerResponse", e10);
        }
    }
}
