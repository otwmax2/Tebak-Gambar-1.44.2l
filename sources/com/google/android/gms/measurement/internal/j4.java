package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzeq;
import com.google.android.gms.internal.measurement.zzex;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class j4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f24171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f24172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Boolean f24173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Boolean f24174d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Long f24175e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Long f24176f;

    j4(String str, int i10) {
        this.f24171a = str;
        this.f24172b = i10;
    }

    private static Boolean d(String str, int i10, boolean z10, String str2, List list, String str3, zzey zzeyVar) {
        if (i10 == 7) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z10 && i10 != 2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i10 - 1) {
            case 1:
                if (str3 != null) {
                    try {
                    } catch (PatternSyntaxException unused) {
                        if (zzeyVar != null) {
                            zzeyVar.r().b("Invalid regular expression in REGEXP audience filter. expression", str3);
                        }
                        return null;
                    }
                    break;
                }
                break;
            case 6:
                if (list != null) {
                    break;
                }
                break;
        }
        return null;
    }

    @VisibleForTesting
    static Boolean e(BigDecimal bigDecimal, zzeq zzeqVar, double d10) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.k(zzeqVar);
        if (zzeqVar.A()) {
            if (zzeqVar.F() != 1) {
                if (zzeqVar.F() == 5) {
                    if (!zzeqVar.E() || !zzeqVar.D()) {
                        return null;
                    }
                } else if (!zzeqVar.B()) {
                    return null;
                }
                int iF = zzeqVar.F();
                if (zzeqVar.F() == 5) {
                    if (zzlk.L(zzeqVar.y()) && zzlk.L(zzeqVar.x())) {
                        try {
                            BigDecimal bigDecimal5 = new BigDecimal(zzeqVar.y());
                            bigDecimal4 = new BigDecimal(zzeqVar.x());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    return null;
                }
                if (!zzlk.L(zzeqVar.w())) {
                    return null;
                }
                try {
                    bigDecimal2 = new BigDecimal(zzeqVar.w());
                    bigDecimal3 = null;
                    bigDecimal4 = null;
                } catch (NumberFormatException unused2) {
                }
                if (iF == 5) {
                    if (bigDecimal3 == null) {
                        return null;
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                }
                int i10 = iF - 1;
                if (i10 == 1) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                }
                if (i10 == 2) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                }
                if (i10 != 3) {
                    if (i10 == 4 && bigDecimal3 != null) {
                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                    }
                    return null;
                }
                if (bigDecimal2 == null) {
                    return null;
                }
                if (d10 != 0.0d) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d10).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d10).multiply(new BigDecimal(2)))) < 0);
                }
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
            }
        }
        return null;
    }

    @VisibleForTesting
    static Boolean f(String str, zzex zzexVar, zzey zzeyVar) {
        List list;
        Preconditions.k(zzexVar);
        if (str == null || !zzexVar.C() || zzexVar.D() == 1) {
            return null;
        }
        if (zzexVar.D() == 7) {
            if (zzexVar.u() == 0) {
                return null;
            }
        } else if (!zzexVar.B()) {
            return null;
        }
        int iD = zzexVar.D();
        boolean z10 = zzexVar.z();
        String strX = (z10 || iD == 2 || iD == 7) ? zzexVar.x() : zzexVar.x().toUpperCase(Locale.ENGLISH);
        if (zzexVar.u() == 0) {
            list = null;
        } else {
            List listY = zzexVar.y();
            if (!z10) {
                ArrayList arrayList = new ArrayList(listY.size());
                Iterator it = listY.iterator();
                while (it.hasNext()) {
                    arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                }
                listY = Collections.unmodifiableList(arrayList);
            }
            list = listY;
        }
        return d(str, iD, z10, strX, list, iD == 2 ? strX : null, zzeyVar);
    }

    static Boolean g(double d10, zzeq zzeqVar) {
        try {
            return e(new BigDecimal(d10), zzeqVar, Math.ulp(d10));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean h(long j10, zzeq zzeqVar) {
        try {
            return e(new BigDecimal(j10), zzeqVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean i(String str, zzeq zzeqVar) {
        if (!zzlk.L(str)) {
            return null;
        }
        try {
            return e(new BigDecimal(str), zzeqVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @VisibleForTesting
    static Boolean j(Boolean bool, boolean z10) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z10);
    }

    abstract int a();

    abstract boolean b();

    abstract boolean c();
}
