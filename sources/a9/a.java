package a9;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: Extractor.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f56a = true;

    public List<C0004a> a(String str) {
        if (str != null && str.length() != 0) {
            if (str.indexOf(this.f56a ? 46 : 58) != -1) {
                ArrayList arrayList = new ArrayList();
                Matcher matcher = b.f80l.matcher(str);
                while (matcher.find()) {
                    if (matcher.group(4) != null || (this.f56a && !b.f82n.matcher(matcher.group(2)).matches())) {
                        String strGroup = matcher.group(3);
                        int iStart = matcher.start(3);
                        int iEnd = matcher.end(3);
                        Matcher matcher2 = b.f81m.matcher(strGroup);
                        if (matcher2.find()) {
                            strGroup = matcher2.group();
                            iEnd = strGroup.length() + iStart;
                        }
                        arrayList.add(new C0004a(iStart, iEnd, strGroup, C0004a.EnumC0005a.URL));
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    /* JADX INFO: renamed from: a9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Extractor.java */
    public static class C0004a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f57a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected int f58b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected final String f59c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected final String f60d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected final EnumC0005a f61e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected String f62f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected String f63g;

        /* JADX INFO: renamed from: a9.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Extractor.java */
        public enum EnumC0005a {
            URL,
            HASHTAG,
            MENTION,
            CASHTAG
        }

        public C0004a(int i10, int i11, String str, String str2, EnumC0005a enumC0005a) {
            this.f62f = null;
            this.f63g = null;
            this.f57a = i10;
            this.f58b = i11;
            this.f59c = str;
            this.f60d = str2;
            this.f61e = enumC0005a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0004a)) {
                return false;
            }
            C0004a c0004a = (C0004a) obj;
            return this.f61e.equals(c0004a.f61e) && this.f57a == c0004a.f57a && this.f58b == c0004a.f58b && this.f59c.equals(c0004a.f59c);
        }

        public int hashCode() {
            return this.f61e.hashCode() + this.f59c.hashCode() + this.f57a + this.f58b;
        }

        public String toString() {
            return this.f59c + "(" + this.f61e + ") [" + this.f57a + "," + this.f58b + "]";
        }

        public C0004a(int i10, int i11, String str, EnumC0005a enumC0005a) {
            this(i10, i11, str, null, enumC0005a);
        }
    }
}
