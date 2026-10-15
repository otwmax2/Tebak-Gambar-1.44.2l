package com.google.android.gms.internal.auth;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f21547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgp<?, ?> f21548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgp<?, ?> f21549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgp<?, ?> f21550d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f21547a = cls;
        f21548b = j(false);
        f21549c = j(true);
        f21550d = new zzgr();
    }

    public static zzgp<?, ?> a() {
        return f21548b;
    }

    public static zzgp<?, ?> b() {
        return f21549c;
    }

    public static zzgp<?, ?> c() {
        return f21550d;
    }

    static <UT, UB> UB d(int i10, List<Integer> list, zzet zzetVar, UB ub, zzgp<UT, UB> zzgpVar) {
        if (zzetVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = list.get(i12).intValue();
                if (zzetVar.zza()) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    ub = (UB) e(i10, iIntValue, ub, zzgpVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
                return ub;
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!zzetVar.zza()) {
                    ub = (UB) e(i10, iIntValue2, ub, zzgpVar);
                    it.remove();
                }
            }
        }
        return ub;
    }

    static <UT, UB> UB e(int i10, int i11, UB ub, zzgp<UT, UB> zzgpVar) {
        if (ub == null) {
            ub = zzgpVar.c();
        }
        zzgpVar.d(ub, i10, i11);
        return ub;
    }

    static <T, UT, UB> void f(zzgp<UT, UB> zzgpVar, T t10, T t11) {
        zzgpVar.f(t10, zzgpVar.b(zzgpVar.a(t10), zzgpVar.a(t11)));
    }

    public static void g(Class<?> cls) {
        Class<?> cls2;
        if (!zzeq.class.isAssignableFrom(cls) && (cls2 = f21547a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean h(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static <T> void i(zzfl zzflVar, T t10, T t11, long j10) {
        zzgz.p(t10, j10, zzfl.a(zzgz.f(t10, j10), zzgz.f(t11, j10)));
    }

    private static zzgp<?, ?> j(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzgp) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }
}
