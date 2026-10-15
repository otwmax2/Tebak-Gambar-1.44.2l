package r5;

import com.vungle.mediation.BuildConfig;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: KeysMap.java */
/* JADX INFO: loaded from: classes2.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f34257a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f34258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f34259c;

    public d(int i10, int i11) {
        this.f34258b = i10;
        this.f34259c = i11;
    }

    private String b(String str) {
        if (str != null) {
            return c(str, this.f34259c);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    public static String c(String str, int i10) {
        if (str == null) {
            return str;
        }
        String strTrim = str.trim();
        return strTrim.length() > i10 ? strTrim.substring(0, i10) : strTrim;
    }

    public synchronized Map<String, String> a() {
        return Collections.unmodifiableMap(new HashMap(this.f34257a));
    }

    public synchronized boolean d(String str, String str2) {
        String strB = b(str);
        if (this.f34257a.size() >= this.f34258b && !this.f34257a.containsKey(strB)) {
            n5.g.f().k("Ignored entry \"" + str + "\" when adding custom keys. Maximum allowable: " + this.f34258b);
            return false;
        }
        String strC = c(str2, this.f34259c);
        if (q5.i.y(this.f34257a.get(strB), strC)) {
            return false;
        }
        Map<String, String> map = this.f34257a;
        if (str2 == null) {
            strC = BuildConfig.FLAVOR;
        }
        map.put(strB, strC);
        return true;
    }

    public synchronized void e(Map<String, String> map) {
        int i10 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String strB = b(entry.getKey());
            if (this.f34257a.size() < this.f34258b || this.f34257a.containsKey(strB)) {
                String value = entry.getValue();
                this.f34257a.put(strB, value == null ? BuildConfig.FLAVOR : c(value, this.f34259c));
            } else {
                i10++;
            }
        }
        if (i10 > 0) {
            n5.g.f().k("Ignored " + i10 + " entries when adding custom keys. Maximum allowable: " + this.f34258b);
        }
    }
}
