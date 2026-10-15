package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.util.IOUtils;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdyc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15929a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map f15930b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f15931c = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f15932d = -1;

    public static zzdyc a(Reader reader) throws zzeyg {
        try {
            try {
                JsonReader jsonReader = new JsonReader(reader);
                HashMap map = new HashMap();
                long jNextLong = -1;
                String strNextString = BuildConfig.FLAVOR;
                jsonReader.beginObject();
                int iNextInt = 0;
                while (jsonReader.hasNext()) {
                    String strNextName = jsonReader.nextName();
                    if ("response".equals(strNextName)) {
                        iNextInt = jsonReader.nextInt();
                    } else if (SDKConstants.PARAM_A2U_BODY.equals(strNextName)) {
                        strNextString = jsonReader.nextString();
                    } else if ("latency".equals(strNextName)) {
                        jNextLong = jsonReader.nextLong();
                    } else if ("headers".equals(strNextName)) {
                        map = new HashMap();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            map.put(jsonReader.nextName(), com.google.android.gms.ads.internal.util.zzbu.d(jsonReader));
                        }
                        jsonReader.endObject();
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                zzdyc zzdycVar = new zzdyc();
                zzdycVar.f15929a = iNextInt;
                if (strNextString != null) {
                    zzdycVar.f15931c = strNextString;
                }
                zzdycVar.f15932d = jNextLong;
                zzdycVar.f15930b = map;
                return zzdycVar;
            } finally {
                IOUtils.b(reader);
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException e10) {
            throw new zzeyg("Unable to parse Response", e10);
        }
    }
}
