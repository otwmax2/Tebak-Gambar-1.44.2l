package androidx.core.text;

import android.text.SpannableStringBuilder;
import com.vungle.mediation.BuildConfig;
import java.util.Locale;

/* JADX INFO: compiled from: BidiFormatter.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final d f2336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f2337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f2338f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final a f2339g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final a f2340h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f2341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f2343c;

    /* JADX INFO: renamed from: androidx.core.text.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BidiFormatter.java */
    public static final class C0034a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d f2346c;

        public C0034a() {
            c(a.e(Locale.getDefault()));
        }

        private static a b(boolean z10) {
            return z10 ? a.f2340h : a.f2339g;
        }

        private void c(boolean z10) {
            this.f2344a = z10;
            this.f2346c = a.f2336d;
            this.f2345b = 2;
        }

        public a a() {
            return (this.f2345b == 2 && this.f2346c == a.f2336d) ? b(this.f2344a) : new a(this.f2344a, this.f2345b, this.f2346c);
        }
    }

    /* JADX INFO: compiled from: BidiFormatter.java */
    private static class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte[] f2347f = new byte[1792];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CharSequence f2348a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f2349b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2350c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f2351d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private char f2352e;

        static {
            for (int i10 = 0; i10 < 1792; i10++) {
                f2347f[i10] = Character.getDirectionality(i10);
            }
        }

        b(CharSequence charSequence, boolean z10) {
            this.f2348a = charSequence;
            this.f2349b = z10;
            this.f2350c = charSequence.length();
        }

        private static byte c(char c10) {
            return c10 < 1792 ? f2347f[c10] : Character.getDirectionality(c10);
        }

        private byte f() {
            char cCharAt;
            int i10 = this.f2351d;
            do {
                int i11 = this.f2351d;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f2348a;
                int i12 = i11 - 1;
                this.f2351d = i12;
                cCharAt = charSequence.charAt(i12);
                this.f2352e = cCharAt;
                if (cCharAt == '&') {
                    return (byte) 12;
                }
            } while (cCharAt != ';');
            this.f2351d = i10;
            this.f2352e = ';';
            return (byte) 13;
        }

        private byte g() {
            char cCharAt;
            do {
                int i10 = this.f2351d;
                if (i10 >= this.f2350c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f2348a;
                this.f2351d = i10 + 1;
                cCharAt = charSequence.charAt(i10);
                this.f2352e = cCharAt;
            } while (cCharAt != ';');
            return (byte) 12;
        }

        private byte h() {
            char cCharAt;
            int i10 = this.f2351d;
            while (true) {
                int i11 = this.f2351d;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f2348a;
                int i12 = i11 - 1;
                this.f2351d = i12;
                char cCharAt2 = charSequence.charAt(i12);
                this.f2352e = cCharAt2;
                if (cCharAt2 == '<') {
                    return (byte) 12;
                }
                if (cCharAt2 == '>') {
                    break;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i13 = this.f2351d;
                        if (i13 > 0) {
                            CharSequence charSequence2 = this.f2348a;
                            int i14 = i13 - 1;
                            this.f2351d = i14;
                            cCharAt = charSequence2.charAt(i14);
                            this.f2352e = cCharAt;
                        }
                    } while (cCharAt != cCharAt2);
                }
            }
            this.f2351d = i10;
            this.f2352e = '>';
            return (byte) 13;
        }

        private byte i() {
            char cCharAt;
            int i10 = this.f2351d;
            while (true) {
                int i11 = this.f2351d;
                if (i11 >= this.f2350c) {
                    this.f2351d = i10;
                    this.f2352e = '<';
                    return (byte) 13;
                }
                CharSequence charSequence = this.f2348a;
                this.f2351d = i11 + 1;
                char cCharAt2 = charSequence.charAt(i11);
                this.f2352e = cCharAt2;
                if (cCharAt2 == '>') {
                    return (byte) 12;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i12 = this.f2351d;
                        if (i12 < this.f2350c) {
                            CharSequence charSequence2 = this.f2348a;
                            this.f2351d = i12 + 1;
                            cCharAt = charSequence2.charAt(i12);
                            this.f2352e = cCharAt;
                        }
                    } while (cCharAt != cCharAt2);
                }
            }
        }

        byte a() {
            char cCharAt = this.f2348a.charAt(this.f2351d - 1);
            this.f2352e = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.f2348a, this.f2351d);
                this.f2351d -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f2351d--;
            byte bC = c(this.f2352e);
            if (!this.f2349b) {
                return bC;
            }
            char c10 = this.f2352e;
            return c10 == '>' ? h() : c10 == ';' ? f() : bC;
        }

        byte b() {
            char cCharAt = this.f2348a.charAt(this.f2351d);
            this.f2352e = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.f2348a, this.f2351d);
                this.f2351d += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.f2351d++;
            byte bC = c(this.f2352e);
            if (!this.f2349b) {
                return bC;
            }
            char c10 = this.f2352e;
            return c10 == '<' ? i() : c10 == '&' ? g() : bC;
        }

        int d() {
            this.f2351d = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (this.f2351d < this.f2350c && i10 == 0) {
                byte b10 = b();
                if (b10 != 0) {
                    if (b10 == 1 || b10 == 2) {
                        if (i12 == 0) {
                            return 1;
                        }
                    } else if (b10 != 9) {
                        switch (b10) {
                            case 14:
                            case 15:
                                i12++;
                                i11 = -1;
                                continue;
                            case 16:
                            case 17:
                                i12++;
                                i11 = 1;
                                continue;
                            case 18:
                                i12--;
                                i11 = 0;
                                continue;
                        }
                    }
                } else if (i12 == 0) {
                    return -1;
                }
                i10 = i12;
            }
            if (i10 == 0) {
                return 0;
            }
            if (i11 != 0) {
                return i11;
            }
            while (this.f2351d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i10 == i12) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i10 == i12) {
                            return 1;
                        }
                        break;
                    case 18:
                        i12++;
                        continue;
                }
                i12--;
            }
            return 0;
        }

        int e() {
            this.f2351d = this.f2350c;
            int i10 = 0;
            int i11 = 0;
            while (this.f2351d > 0) {
                byte bA = a();
                if (bA == 0) {
                    if (i10 == 0) {
                        return -1;
                    }
                    if (i11 == 0) {
                        i11 = i10;
                    }
                } else if (bA == 1 || bA == 2) {
                    if (i10 == 0) {
                        return 1;
                    }
                    if (i11 == 0) {
                        i11 = i10;
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i11 == i10) {
                                return -1;
                            }
                            i10--;
                            break;
                        case 16:
                        case 17:
                            if (i11 == i10) {
                                return 1;
                            }
                            i10--;
                            break;
                        case 18:
                            i10++;
                            break;
                        default:
                            if (i11 == 0) {
                                i11 = i10;
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    static {
        d dVar = e.f2370c;
        f2336d = dVar;
        f2337e = Character.toString((char) 8206);
        f2338f = Character.toString((char) 8207);
        f2339g = new a(false, 2, dVar);
        f2340h = new a(true, 2, dVar);
    }

    a(boolean z10, int i10, d dVar) {
        this.f2341a = z10;
        this.f2342b = i10;
        this.f2343c = dVar;
    }

    private static int a(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    private static int b(CharSequence charSequence) {
        return new b(charSequence, false).e();
    }

    public static a c() {
        return new C0034a().a();
    }

    static boolean e(Locale locale) {
        return f.b(locale) == 1;
    }

    private String f(CharSequence charSequence, d dVar) {
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        return (this.f2341a || !(zA || b(charSequence) == 1)) ? this.f2341a ? (!zA || b(charSequence) == -1) ? f2338f : BuildConfig.FLAVOR : BuildConfig.FLAVOR : f2337e;
    }

    private String g(CharSequence charSequence, d dVar) {
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        return (this.f2341a || !(zA || a(charSequence) == 1)) ? this.f2341a ? (!zA || a(charSequence) == -1) ? f2338f : BuildConfig.FLAVOR : BuildConfig.FLAVOR : f2337e;
    }

    public boolean d() {
        return (this.f2342b & 2) != 0;
    }

    public CharSequence h(CharSequence charSequence) {
        return i(charSequence, this.f2343c, true);
    }

    public CharSequence i(CharSequence charSequence, d dVar, boolean z10) {
        if (charSequence == null) {
            return null;
        }
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (d() && z10) {
            spannableStringBuilder.append((CharSequence) g(charSequence, zA ? e.f2369b : e.f2368a));
        }
        if (zA != this.f2341a) {
            spannableStringBuilder.append(zA ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z10) {
            spannableStringBuilder.append((CharSequence) f(charSequence, zA ? e.f2369b : e.f2368a));
        }
        return spannableStringBuilder;
    }

    public String j(String str) {
        return k(str, this.f2343c, true);
    }

    public String k(String str, d dVar, boolean z10) {
        if (str == null) {
            return null;
        }
        return i(str, dVar, z10).toString();
    }
}
