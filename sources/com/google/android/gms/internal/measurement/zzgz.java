package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgz {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static HashMap f23510f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Object f23515k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f23516l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Uri f23505a = Uri.parse("content://com.google.android.gsf.gservices");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Uri f23506b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f23507c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f23508d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f23509e = new AtomicBoolean();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final HashMap f23511g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final HashMap f23512h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final HashMap f23513i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final HashMap f23514j = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final String[] f23517m = new String[0];

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzgz.class) {
            if (f23510f == null) {
                f23509e.set(false);
                f23510f = new HashMap();
                f23515k = new Object();
                f23516l = false;
                contentResolver.registerContentObserver(f23505a, true, new zzgy(null));
            } else if (f23509e.getAndSet(false)) {
                f23510f.clear();
                f23511g.clear();
                f23512h.clear();
                f23513i.clear();
                f23514j.clear();
                f23515k = new Object();
                f23516l = false;
            }
            Object obj = f23515k;
            if (f23510f.containsKey(str)) {
                String str3 = (String) f23510f.get(str);
                if (str3 != null) {
                    str = str3;
                }
                return str;
            }
            int length = f23517m.length;
            Cursor cursorQuery = contentResolver.query(f23505a, null, null, new String[]{str}, null);
            if (cursorQuery == null) {
                return null;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    c(obj, str, null);
                    return null;
                }
                String string = cursorQuery.getString(1);
                if (string != null && string.equals(null)) {
                    string = null;
                }
                c(obj, str, string);
                return string != null ? string : null;
            } finally {
                cursorQuery.close();
            }
        }
    }

    private static void c(Object obj, String str, String str2) {
        synchronized (zzgz.class) {
            if (obj == f23515k) {
                f23510f.put(str, str2);
            }
        }
    }
}
