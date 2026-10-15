package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.facebook.appevents.UserDataStore;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.datatransport.cct.d;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import k3.j;
import k3.k;
import k3.l;
import k3.m;
import k3.n;
import k3.o;
import k3.p;
import l3.h;
import l3.i;
import m3.f;
import m3.g;
import m3.m;

/* JADX INFO: compiled from: CctTransportBackend.java */
/* JADX INFO: loaded from: classes.dex */
final class d implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d6.a f5545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectivityManager f5546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f5547c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final URL f5548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v3.a f5549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v3.a f5550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f5551g;

    /* JADX INFO: compiled from: CctTransportBackend.java */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final URL f5552a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final j f5553b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f5554c;

        a(URL url, j jVar, String str) {
            this.f5552a = url;
            this.f5553b = jVar;
            this.f5554c = str;
        }

        a a(URL url) {
            return new a(url, this.f5553b, this.f5554c);
        }
    }

    /* JADX INFO: compiled from: CctTransportBackend.java */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f5555a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final URL f5556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f5557c;

        b(int i10, URL url, long j10) {
            this.f5555a = i10;
            this.f5556b = url;
            this.f5557c = j10;
        }
    }

    d(Context context, v3.a aVar, v3.a aVar2, int i10) {
        this.f5545a = j.b();
        this.f5547c = context;
        this.f5546b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f5548d = n(com.google.android.datatransport.cct.a.f5535c);
        this.f5549e = aVar2;
        this.f5550f = aVar;
        this.f5551g = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e(a aVar) throws IOException {
        p3.a.f("CctTransportBackend", "Making request to: %s", aVar.f5552a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f5552a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f5551g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.1.9"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f5554c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.f5545a.a(aVar.f5553b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    p3.a.f("CctTransportBackend", "Status Code: %d", Integer.valueOf(responseCode));
                    p3.a.b("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                    p3.a.b("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream inputStreamM = m(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        try {
                            b bVar = new b(responseCode, null, n.b(new BufferedReader(new InputStreamReader(inputStreamM))).c());
                            if (inputStreamM != null) {
                                inputStreamM.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } finally {
                        }
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } finally {
                }
            } catch (Throwable th3) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (d6.b e10) {
            e = e10;
            p3.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        } catch (ConnectException e11) {
            e = e11;
            p3.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e12) {
            e = e12;
            p3.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e13) {
            e = e13;
            p3.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        }
    }

    private static int f(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return o.b.UNKNOWN_MOBILE_SUBTYPE.e();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return o.b.COMBINED.e();
        }
        if (o.b.c(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    private static int g(NetworkInfo networkInfo) {
        return networkInfo == null ? o.c.NONE.e() : networkInfo.getType();
    }

    private static int h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            p3.a.d("CctTransportBackend", "Unable to find version code for package", e10);
            return -1;
        }
    }

    private j i(f fVar) {
        l.a aVarJ;
        HashMap map = new HashMap();
        for (i iVar : fVar.b()) {
            String strJ = iVar.j();
            if (map.containsKey(strJ)) {
                ((List) map.get(strJ)).add(iVar);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(iVar);
                map.put(strJ, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            i iVar2 = (i) ((List) entry.getValue()).get(0);
            m.a aVarB = k3.m.a().f(p.DEFAULT).g(this.f5550f.a()).h(this.f5549e.a()).b(k.a().c(k.b.ANDROID_FIREBASE).b(k3.a.a().m(Integer.valueOf(iVar2.g("sdk-version"))).j(iVar2.b(DeviceRequestsHelper.DEVICE_INFO_MODEL)).f(iVar2.b("hardware")).d(iVar2.b(DeviceRequestsHelper.DEVICE_INFO_DEVICE)).l(iVar2.b("product")).k(iVar2.b("os-uild")).h(iVar2.b("manufacturer")).e(iVar2.b("fingerprint")).c(iVar2.b(UserDataStore.COUNTRY)).g(iVar2.b("locale")).i(iVar2.b("mcc_mnc")).b(iVar2.b("application_build")).a()).a());
            try {
                aVarB.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                aVarB.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (i iVar3 : (List) entry.getValue()) {
                h hVarE = iVar3.e();
                j3.b bVarB = hVarE.b();
                if (bVarB.equals(j3.b.b("proto"))) {
                    aVarJ = l.j(hVarE.a());
                } else if (bVarB.equals(j3.b.b("json"))) {
                    aVarJ = l.i(new String(hVarE.a(), Charset.forName("UTF-8")));
                } else {
                    p3.a.g("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", bVarB);
                }
                aVarJ.c(iVar3.f()).d(iVar3.k()).h(iVar3.h("tz-offset")).e(o.a().c(o.c.c(iVar3.g("net-type"))).b(o.b.c(iVar3.g("mobile-subtype"))).a());
                if (iVar3.d() != null) {
                    aVarJ.b(iVar3.d());
                }
                arrayList3.add(aVarJ.a());
            }
            aVarB.c(arrayList3);
            arrayList2.add(aVarB.a());
        }
        return j.a(arrayList2);
    }

    private static TelephonyManager j(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    static long k() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a l(a aVar, b bVar) {
        URL url = bVar.f5556b;
        if (url == null) {
            return null;
        }
        p3.a.b("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.a(bVar.f5556b);
    }

    private static InputStream m(InputStream inputStream, String str) throws IOException {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    private static URL n(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Invalid url: " + str, e10);
        }
    }

    @Override // m3.m
    public i a(i iVar) {
        NetworkInfo activeNetworkInfo = this.f5546b.getActiveNetworkInfo();
        return iVar.l().a("sdk-version", Build.VERSION.SDK_INT).c(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL).c("hardware", Build.HARDWARE).c(DeviceRequestsHelper.DEVICE_INFO_DEVICE, Build.DEVICE).c("product", Build.PRODUCT).c("os-uild", Build.ID).c("manufacturer", Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b("tz-offset", k()).a("net-type", g(activeNetworkInfo)).a("mobile-subtype", f(activeNetworkInfo)).c(UserDataStore.COUNTRY, Locale.getDefault().getCountry()).c("locale", Locale.getDefault().getLanguage()).c("mcc_mnc", j(this.f5547c).getSimOperator()).c("application_build", Integer.toString(h(this.f5547c))).d();
    }

    @Override // m3.m
    public g b(f fVar) {
        j jVarI = i(fVar);
        URL urlN = this.f5548d;
        if (fVar.c() != null) {
            try {
                com.google.android.datatransport.cct.a aVarC = com.google.android.datatransport.cct.a.c(fVar.c());
                strD = aVarC.d() != null ? aVarC.d() : null;
                if (aVarC.e() != null) {
                    urlN = n(aVarC.e());
                }
            } catch (IllegalArgumentException unused) {
                return g.a();
            }
        }
        try {
            b bVar = (b) q3.b.a(5, new a(urlN, jVarI, strD), new q3.a() { // from class: com.google.android.datatransport.cct.b
                @Override // q3.a
                public final Object a(Object obj) {
                    return this.f5543a.e((d.a) obj);
                }
            }, new q3.c() { // from class: com.google.android.datatransport.cct.c
                @Override // q3.c
                public final Object a(Object obj, Object obj2) {
                    return d.l((d.a) obj, (d.b) obj2);
                }
            });
            int i10 = bVar.f5555a;
            if (i10 == 200) {
                return g.e(bVar.f5557c);
            }
            if (i10 < 500 && i10 != 404) {
                return i10 == 400 ? g.d() : g.a();
            }
            return g.f();
        } catch (IOException e10) {
            p3.a.d("CctTransportBackend", "Could not make request to the backend", e10);
            return g.f();
        }
    }

    d(Context context, v3.a aVar, v3.a aVar2) {
        this(context, aVar, aVar2, 130000);
    }
}
