package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzet {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final AtomicReference f24626b = new AtomicReference();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final AtomicReference f24627c = new AtomicReference();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final AtomicReference f24628d = new AtomicReference();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzes f24629a;

    public zzet(zzes zzesVar) {
        this.f24629a = zzesVar;
    }

    private static final String g(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        Preconditions.k(strArr);
        Preconditions.k(strArr2);
        Preconditions.k(atomicReference);
        Preconditions.a(strArr.length == strArr2.length);
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (zzlp.Z(str, strArr[i10])) {
                synchronized (atomicReference) {
                    String[] strArr3 = (String[]) atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    str2 = strArr3[i10];
                    if (str2 == null) {
                        str2 = strArr2[i10] + "(" + strArr[i10] + ")";
                        strArr3[i10] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    protected final String a(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String strB = obj instanceof Bundle ? b((Bundle) obj) : String.valueOf(obj);
            if (strB != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(strB);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    protected final String b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.f24629a.zza()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(e(str));
            sb.append("=");
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? a(new Object[]{obj}) : obj instanceof Object[] ? a((Object[]) obj) : obj instanceof ArrayList ? a(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    protected final String c(zzav zzavVar) {
        if (!this.f24629a.zza()) {
            return zzavVar.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("origin=");
        sb.append(zzavVar.f24456q);
        sb.append(",name=");
        sb.append(d(zzavVar.f24454o));
        sb.append(",params=");
        zzat zzatVar = zzavVar.f24455p;
        sb.append(zzatVar == null ? null : !this.f24629a.zza() ? zzatVar.toString() : b(zzatVar.X3()));
        return sb.toString();
    }

    protected final String d(String str) {
        if (str == null) {
            return null;
        }
        return !this.f24629a.zza() ? str : g(str, zzhf.f24740c, zzhf.f24738a, f24626b);
    }

    protected final String e(String str) {
        if (str == null) {
            return null;
        }
        return !this.f24629a.zza() ? str : g(str, zzhg.f24743b, zzhg.f24742a, f24627c);
    }

    protected final String f(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f24629a.zza()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return g(str, zzhh.f24747b, zzhh.f24746a, f24628d);
        }
        return "experiment_id(" + str + ")";
    }
}
