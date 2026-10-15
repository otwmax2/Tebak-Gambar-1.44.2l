package ba;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f implements Serializable {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final a f4729p = new a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Pattern f4730o;

    /* JADX INFO: compiled from: Regex.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Regex.kt */
    private static final class b implements Serializable {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final a f4731q = new a(null);
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final String f4732o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final int f4733p;

        /* JADX INFO: compiled from: Regex.kt */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(t9.g gVar) {
                this();
            }
        }

        public b(String str, int i10) {
            t9.m.e(str, "pattern");
            this.f4732o = str;
            this.f4733p = i10;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.f4732o, this.f4733p);
            t9.m.d(patternCompile, "compile(pattern, flags)");
            return new f(patternCompile);
        }
    }

    public f(Pattern pattern) {
        t9.m.e(pattern, "nativePattern");
        this.f4730o = pattern;
    }

    private final Object writeReplace() {
        String strPattern = this.f4730o.pattern();
        t9.m.d(strPattern, "nativePattern.pattern()");
        return new b(strPattern, this.f4730o.flags());
    }

    public final boolean a(CharSequence charSequence) {
        t9.m.e(charSequence, "input");
        return this.f4730o.matcher(charSequence).matches();
    }

    public final String b(CharSequence charSequence, String str) {
        t9.m.e(charSequence, "input");
        t9.m.e(str, "replacement");
        String strReplaceAll = this.f4730o.matcher(charSequence).replaceAll(str);
        t9.m.d(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return strReplaceAll;
    }

    public final List<String> c(CharSequence charSequence, int i10) {
        t9.m.e(charSequence, "input");
        q.W(i10);
        Matcher matcher = this.f4730o.matcher(charSequence);
        if (i10 == 1 || !matcher.find()) {
            return i9.k.b(charSequence.toString());
        }
        ArrayList arrayList = new ArrayList(i10 > 0 ? y9.l.c(i10, 10) : 10);
        int iEnd = 0;
        int i11 = i10 - 1;
        do {
            arrayList.add(charSequence.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i11 >= 0 && arrayList.size() == i11) {
                break;
            }
        } while (matcher.find());
        arrayList.add(charSequence.subSequence(iEnd, charSequence.length()).toString());
        return arrayList;
    }

    public String toString() {
        String string = this.f4730o.toString();
        t9.m.d(string, "nativePattern.toString()");
        return string;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public f(String str) {
        t9.m.e(str, "pattern");
        Pattern patternCompile = Pattern.compile(str);
        t9.m.d(patternCompile, "compile(pattern)");
        this(patternCompile);
    }
}
