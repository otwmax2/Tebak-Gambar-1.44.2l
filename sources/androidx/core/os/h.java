package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: compiled from: LocaleListCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final h f2273b = a(new Locale[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f2274a;

    /* JADX INFO: compiled from: LocaleListCompat.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Locale[] f2275a = {new Locale("en", "XA"), new Locale("ar", "XB")};

        static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }

        private static boolean b(Locale locale) {
            for (Locale locale2 : f2275a) {
                if (locale2.equals(locale)) {
                    return true;
                }
            }
            return false;
        }

        static boolean c(Locale locale, Locale locale2) {
            if (locale.equals(locale2)) {
                return true;
            }
            if (!locale.getLanguage().equals(locale2.getLanguage()) || b(locale) || b(locale2)) {
                return false;
            }
            String strC = androidx.core.text.b.c(locale);
            if (!strC.isEmpty()) {
                return strC.equals(androidx.core.text.b.c(locale2));
            }
            String country = locale.getCountry();
            return country.isEmpty() || country.equals(locale2.getCountry());
        }
    }

    /* JADX INFO: compiled from: LocaleListCompat.java */
    static class b {
        static LocaleList a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }

        static LocaleList b() {
            return LocaleList.getAdjustedDefault();
        }

        static LocaleList c() {
            return LocaleList.getDefault();
        }
    }

    private h(j jVar) {
        this.f2274a = jVar;
    }

    public static h a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? i(b.a(localeArr)) : new h(new i(localeArr));
    }

    static Locale b(String str) {
        if (str.contains("-")) {
            String[] strArrSplit = str.split("-", -1);
            if (strArrSplit.length > 2) {
                return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            }
            if (strArrSplit.length > 1) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            if (strArrSplit.length == 1) {
                return new Locale(strArrSplit[0]);
            }
        } else {
            if (!str.contains("_")) {
                return new Locale(str);
            }
            String[] strArrSplit2 = str.split("_", -1);
            if (strArrSplit2.length > 2) {
                return new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]);
            }
            if (strArrSplit2.length > 1) {
                return new Locale(strArrSplit2[0], strArrSplit2[1]);
            }
            if (strArrSplit2.length == 1) {
                return new Locale(strArrSplit2[0]);
            }
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    public static h c(String str) {
        if (str == null || str.isEmpty()) {
            return e();
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i10 = 0; i10 < length; i10++) {
            localeArr[i10] = Build.VERSION.SDK_INT >= 21 ? a.a(strArrSplit[i10]) : b(strArrSplit[i10]);
        }
        return a(localeArr);
    }

    public static h e() {
        return f2273b;
    }

    public static h i(LocaleList localeList) {
        return new h(new k(localeList));
    }

    public Locale d(int i10) {
        return this.f2274a.get(i10);
    }

    public boolean equals(Object obj) {
        return (obj instanceof h) && this.f2274a.equals(((h) obj).f2274a);
    }

    public boolean f() {
        return this.f2274a.isEmpty();
    }

    public int g() {
        return this.f2274a.size();
    }

    public String h() {
        return this.f2274a.a();
    }

    public int hashCode() {
        return this.f2274a.hashCode();
    }

    public String toString() {
        return this.f2274a.toString();
    }
}
