package com.android.volley.toolbox;

import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.NetworkResponse;
import com.android.volley.VolleyLog;
import com.facebook.appevents.AppEventsConstants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public class HttpHeaderParser {
    static List<Header> a(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<Header> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().a());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = entry.f5068h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header header : entry.f5068h) {
                    if (!treeSet.contains(header.a())) {
                        arrayList.add(header);
                    }
                }
            }
        } else if (!entry.f5067g.isEmpty()) {
            for (Map.Entry<String, String> entry2 : entry.f5067g.entrySet()) {
                if (!treeSet.contains(entry2.getKey())) {
                    arrayList.add(new Header(entry2.getKey(), entry2.getValue()));
                }
            }
        }
        return arrayList;
    }

    static String b(long j10) {
        return d("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j10));
    }

    static Map<String, String> c(Cache.Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        String str = entry.f5062b;
        if (str != null) {
            map.put("If-None-Match", str);
        }
        long j10 = entry.f5064d;
        if (j10 > 0) {
            map.put("If-Modified-Since", b(j10));
        }
        return map;
    }

    private static SimpleDateFormat d(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    public static Cache.Entry e(NetworkResponse networkResponse) {
        boolean z10;
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = networkResponse.f5096c;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        long jH = str != null ? h(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i10 = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            int i11 = 0;
            j10 = 0;
            j11 = 0;
            while (i10 < strArrSplit.length) {
                String strTrim = strArrSplit[i10].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j10 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j11 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    i11 = 1;
                }
                i10++;
            }
            i10 = i11;
            z10 = true;
        } else {
            z10 = false;
            j10 = 0;
            j11 = 0;
        }
        String str3 = map.get("Expires");
        long jH2 = str3 != null ? h(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long jH3 = str4 != null ? h(str4) : 0L;
        String str5 = map.get("ETag");
        if (z10) {
            j13 = jCurrentTimeMillis + (j10 * 1000);
            if (i10 != 0) {
                j14 = j13;
            } else {
                Long.signum(j11);
                j14 = (j11 * 1000) + j13;
            }
            j12 = j14;
        } else {
            j12 = 0;
            if (jH <= 0 || jH2 < jH) {
                j13 = 0;
            } else {
                j13 = jCurrentTimeMillis + (jH2 - jH);
                j12 = j13;
            }
        }
        Cache.Entry entry = new Cache.Entry();
        entry.f5061a = networkResponse.f5095b;
        entry.f5062b = str5;
        entry.f5066f = j13;
        entry.f5065e = j12;
        entry.f5063c = jH;
        entry.f5064d = jH3;
        entry.f5067g = map;
        entry.f5068h = networkResponse.f5097d;
        return entry;
    }

    public static String f(Map<String, String> map) {
        return g(map, "ISO-8859-1");
    }

    public static String g(Map<String, String> map, String str) {
        String str2;
        if (map != null && (str2 = map.get("Content-Type")) != null) {
            String[] strArrSplit = str2.split(";", 0);
            for (int i10 = 1; i10 < strArrSplit.length; i10++) {
                String[] strArrSplit2 = strArrSplit[i10].trim().split("=", 0);
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                    return strArrSplit2[1];
                }
            }
        }
        return str;
    }

    public static long h(String str) {
        try {
            return d("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e10) {
            if (AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(str) || "-1".equals(str)) {
                VolleyLog.e("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            VolleyLog.d(e10, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    static List<Header> i(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    static Map<String, String> j(List<Header> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.a(), header.b());
        }
        return treeMap;
    }
}
