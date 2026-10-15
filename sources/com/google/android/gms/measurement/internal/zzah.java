package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzah {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzah f24435b = new zzah(null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EnumMap f24436a;

    public zzah(Boolean bool, Boolean bool2) {
        EnumMap enumMap = new EnumMap(zzag.class);
        this.f24436a = enumMap;
        enumMap.put(zzag.AD_STORAGE, bool);
        enumMap.put(zzag.ANALYTICS_STORAGE, bool2);
    }

    public static zzah a(Bundle bundle) {
        if (bundle == null) {
            return f24435b;
        }
        EnumMap enumMap = new EnumMap(zzag.class);
        for (zzag zzagVar : zzag.values()) {
            enumMap.put(zzagVar, n(bundle.getString(zzagVar.f24434o)));
        }
        return new zzah(enumMap);
    }

    public static zzah b(String str) {
        EnumMap enumMap = new EnumMap(zzag.class);
        if (str != null) {
            int i10 = 0;
            while (true) {
                zzag[] zzagVarArr = zzag.f24432r;
                int length = zzagVarArr.length;
                if (i10 >= 2) {
                    break;
                }
                zzag zzagVar = zzagVarArr[i10];
                int i11 = i10 + 2;
                if (i11 < str.length()) {
                    char cCharAt = str.charAt(i11);
                    Boolean bool = null;
                    if (cCharAt != '-') {
                        if (cCharAt == '0') {
                            bool = Boolean.FALSE;
                        } else if (cCharAt == '1') {
                            bool = Boolean.TRUE;
                        }
                    }
                    enumMap.put(zzagVar, bool);
                }
                i10++;
            }
        }
        return new zzah(enumMap);
    }

    public static String g(Bundle bundle) {
        String string;
        for (zzag zzagVar : zzag.values()) {
            if (bundle.containsKey(zzagVar.f24434o) && (string = bundle.getString(zzagVar.f24434o)) != null && n(string) == null) {
                return string;
            }
        }
        return null;
    }

    public static boolean j(int i10, int i11) {
        return i10 <= i11;
    }

    static final int m(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    private static Boolean n(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final zzah c(zzah zzahVar) {
        EnumMap enumMap = new EnumMap(zzag.class);
        for (zzag zzagVar : zzag.values()) {
            Boolean boolValueOf = (Boolean) this.f24436a.get(zzagVar);
            Boolean bool = (Boolean) zzahVar.f24436a.get(zzagVar);
            if (boolValueOf == null) {
                boolValueOf = bool;
            } else if (bool != null) {
                boolValueOf = Boolean.valueOf(boolValueOf.booleanValue() && bool.booleanValue());
            }
            enumMap.put(zzagVar, boolValueOf);
        }
        return new zzah(enumMap);
    }

    public final zzah d(zzah zzahVar) {
        EnumMap enumMap = new EnumMap(zzag.class);
        for (zzag zzagVar : zzag.values()) {
            Boolean bool = (Boolean) this.f24436a.get(zzagVar);
            if (bool == null) {
                bool = (Boolean) zzahVar.f24436a.get(zzagVar);
            }
            enumMap.put(zzagVar, bool);
        }
        return new zzah(enumMap);
    }

    public final Boolean e() {
        return (Boolean) this.f24436a.get(zzag.AD_STORAGE);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzah)) {
            return false;
        }
        zzah zzahVar = (zzah) obj;
        for (zzag zzagVar : zzag.values()) {
            if (m((Boolean) this.f24436a.get(zzagVar)) != m((Boolean) zzahVar.f24436a.get(zzagVar))) {
                return false;
            }
        }
        return true;
    }

    public final Boolean f() {
        return (Boolean) this.f24436a.get(zzag.ANALYTICS_STORAGE);
    }

    public final String h() {
        StringBuilder sb = new StringBuilder("G1");
        zzag[] zzagVarArr = zzag.f24432r;
        int length = zzagVarArr.length;
        for (int i10 = 0; i10 < 2; i10++) {
            Boolean bool = (Boolean) this.f24436a.get(zzagVarArr[i10]);
            sb.append(bool == null ? '-' : bool.booleanValue() ? '1' : '0');
        }
        return sb.toString();
    }

    public final int hashCode() {
        Iterator it = this.f24436a.values().iterator();
        int iM = 17;
        while (it.hasNext()) {
            iM = (iM * 31) + m((Boolean) it.next());
        }
        return iM;
    }

    public final boolean i(zzag zzagVar) {
        Boolean bool = (Boolean) this.f24436a.get(zzagVar);
        return bool == null || bool.booleanValue();
    }

    public final boolean k(zzah zzahVar) {
        return l(zzahVar, (zzag[]) this.f24436a.keySet().toArray(new zzag[0]));
    }

    public final boolean l(zzah zzahVar, zzag... zzagVarArr) {
        for (zzag zzagVar : zzagVarArr) {
            Boolean bool = (Boolean) this.f24436a.get(zzagVar);
            Boolean bool2 = (Boolean) zzahVar.f24436a.get(zzagVar);
            Boolean bool3 = Boolean.FALSE;
            if (bool == bool3 && bool2 != bool3) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("settings: ");
        zzag[] zzagVarArrValues = zzag.values();
        int length = zzagVarArrValues.length;
        for (int i10 = 0; i10 < length; i10++) {
            zzag zzagVar = zzagVarArrValues[i10];
            if (i10 != 0) {
                sb.append(", ");
            }
            sb.append(zzagVar.name());
            sb.append("=");
            Boolean bool = (Boolean) this.f24436a.get(zzagVar);
            if (bool == null) {
                sb.append("uninitialized");
            } else {
                sb.append(true != bool.booleanValue() ? "denied" : "granted");
            }
        }
        return sb.toString();
    }

    public zzah(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(zzag.class);
        this.f24436a = enumMap2;
        enumMap2.putAll(enumMap);
    }
}
