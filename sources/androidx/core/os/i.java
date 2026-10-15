package androidx.core.os;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: compiled from: LocaleListCompatWrapper.java */
/* JADX INFO: loaded from: classes.dex */
final class i implements j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Locale[] f2276c = new Locale[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Locale f2277d = new Locale("en", "XA");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Locale f2278e = new Locale("ar", "XB");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Locale f2279f = h.b("en-Latn");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Locale[] f2280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2281b;

    i(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f2280a = f2276c;
            this.f2281b = BuildConfig.FLAVOR;
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < localeArr.length; i10++) {
            Locale locale = localeArr[i10];
            if (locale == null) {
                throw new NullPointerException("list[" + i10 + "] is null");
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                c(sb, locale2);
                if (i10 < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f2280a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f2281b = sb.toString();
    }

    static void c(StringBuilder sb, Locale locale) {
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country == null || country.isEmpty()) {
            return;
        }
        sb.append('-');
        sb.append(locale.getCountry());
    }

    @Override // androidx.core.os.j
    public String a() {
        return this.f2281b;
    }

    @Override // androidx.core.os.j
    public Object b() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        Locale[] localeArr = ((i) obj).f2280a;
        if (this.f2280a.length != localeArr.length) {
            return false;
        }
        int i10 = 0;
        while (true) {
            Locale[] localeArr2 = this.f2280a;
            if (i10 >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i10].equals(localeArr[i10])) {
                return false;
            }
            i10++;
        }
    }

    @Override // androidx.core.os.j
    public Locale get(int i10) {
        if (i10 >= 0) {
            Locale[] localeArr = this.f2280a;
            if (i10 < localeArr.length) {
                return localeArr[i10];
            }
        }
        return null;
    }

    public int hashCode() {
        int iHashCode = 1;
        for (Locale locale : this.f2280a) {
            iHashCode = (iHashCode * 31) + locale.hashCode();
        }
        return iHashCode;
    }

    @Override // androidx.core.os.j
    public boolean isEmpty() {
        return this.f2280a.length == 0;
    }

    @Override // androidx.core.os.j
    public int size() {
        return this.f2280a.length;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i10 = 0;
        while (true) {
            Locale[] localeArr = this.f2280a;
            if (i10 >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i10]);
            if (i10 < this.f2280a.length - 1) {
                sb.append(',');
            }
            i10++;
        }
    }
}
