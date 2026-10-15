package a8;

import android.text.TextUtils;
import x7.g;
import x7.h;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static void a() {
        if (!v7.a.b()) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
    }

    public static void b(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void c(String str, int i10, String str2) {
        if (str.length() > i10) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void d(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void e(h hVar, x7.e eVar, g gVar) {
        if (hVar == h.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        if (eVar == x7.e.DEFINED_BY_JAVASCRIPT && hVar == h.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (gVar == g.DEFINED_BY_JAVASCRIPT && hVar == h.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
    }
}
