package ba;

import com.tebakgambar.model.LoginConfig;
import com.vungle.mediation.BuildConfig;
import i9.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Indent.kt */
/* JADX INFO: loaded from: classes2.dex */
public class i extends h {

    /* JADX INFO: compiled from: Indent.kt */
    static final class a extends t9.n implements s9.l<String, String> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final a f4734o = new a();

        a() {
            super(1);
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String invoke(String str) {
            t9.m.e(str, LoginConfig.VIA_LINE);
            return str;
        }
    }

    /* JADX INFO: compiled from: Indent.kt */
    static final class b extends t9.n implements s9.l<String, String> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ String f4735o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str) {
            super(1);
            this.f4735o = str;
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String invoke(String str) {
            t9.m.e(str, LoginConfig.VIA_LINE);
            return this.f4735o + str;
        }
    }

    private static final s9.l<String, String> b(String str) {
        return str.length() == 0 ? a.f4734o : new b(str);
    }

    private static final int c(String str) {
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            if (!ba.b.c(str.charAt(i10))) {
                break;
            }
            i10++;
        }
        return i10 == -1 ? str.length() : i10;
    }

    public static final String d(String str, String str2) {
        String strInvoke;
        t9.m.e(str, "<this>");
        t9.m.e(str2, "newIndent");
        List<String> listO = q.O(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listO) {
            if (!p.n((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(i9.m.l(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(c((String) it.next())));
        }
        Integer num = (Integer) t.E(arrayList2);
        int i10 = 0;
        int iIntValue = num != null ? num.intValue() : 0;
        int length = str.length() + (str2.length() * listO.size());
        s9.l<String, String> lVarB = b(str2);
        int iF = i9.l.f(listO);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listO) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                i9.l.k();
            }
            String str3 = (String) obj2;
            if ((i10 == 0 || i10 == iF) && p.n(str3)) {
                str3 = null;
            } else {
                String strQ0 = s.q0(str3, iIntValue);
                if (strQ0 != null && (strInvoke = lVarB.invoke(strQ0)) != null) {
                    str3 = strInvoke;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            i10 = i11;
        }
        String string = ((StringBuilder) t.z(arrayList3, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
        t9.m.d(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }

    public static String e(String str) {
        t9.m.e(str, "<this>");
        return d(str, BuildConfig.FLAVOR);
    }
}
