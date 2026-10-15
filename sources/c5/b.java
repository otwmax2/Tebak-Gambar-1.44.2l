package c5;

import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import e5.a;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: AbtExperimentInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f4864g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final DateFormat f4865h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4868c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Date f4869d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f4870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f4871f;

    public b(String str, String str2, String str3, Date date, long j10, long j11) {
        this.f4866a = str;
        this.f4867b = str2;
        this.f4868c = str3;
        this.f4869d = date;
        this.f4870e = j10;
        this.f4871f = j11;
    }

    static b a(Map<String, String> map) throws a {
        e(map);
        try {
            return new b(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : BuildConfig.FLAVOR, f4865h.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis")));
        } catch (NumberFormatException e10) {
            throw new a("Could not process experiment: one of the durations could not be converted into a long.", e10);
        } catch (ParseException e11) {
            throw new a("Could not process experiment: parsing experiment start time failed.", e11);
        }
    }

    private static void e(Map<String, String> map) throws a {
        ArrayList arrayList = new ArrayList();
        for (String str : f4864g) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new a(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    String b() {
        return this.f4866a;
    }

    long c() {
        return this.f4869d.getTime();
    }

    a.c d(String str) {
        a.c cVar = new a.c();
        cVar.f28936a = str;
        cVar.f28948m = c();
        cVar.f28937b = this.f4866a;
        cVar.f28938c = this.f4867b;
        cVar.f28939d = TextUtils.isEmpty(this.f4868c) ? null : this.f4868c;
        cVar.f28940e = this.f4870e;
        cVar.f28945j = this.f4871f;
        return cVar;
    }
}
