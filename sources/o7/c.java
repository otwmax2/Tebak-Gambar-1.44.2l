package o7;

/* JADX INFO: compiled from: C40Encoder.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements g {
    c() {
    }

    private int b(h hVar, StringBuilder sb, StringBuilder sb2, int i10) {
        int length = sb.length();
        sb.delete(length - i10, length);
        hVar.f33132f--;
        int iC = c(hVar.c(), sb2);
        hVar.k();
        return iC;
    }

    private static String d(CharSequence charSequence, int i10) {
        int iCharAt = (charSequence.charAt(i10) * 1600) + (charSequence.charAt(i10 + 1) * '(') + charSequence.charAt(i10 + 2) + 1;
        return new String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)});
    }

    static void g(h hVar, StringBuilder sb) {
        hVar.s(d(sb, 0));
        sb.delete(0, 3);
    }

    @Override // o7.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hVar.i()) {
                break;
            }
            char c10 = hVar.c();
            hVar.f33132f++;
            int iC = c(c10, sb);
            int iA = hVar.a() + ((sb.length() / 3) << 1);
            hVar.q(iA);
            int iA2 = hVar.g().a() - iA;
            if (!hVar.i()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (iA2 < 2 || iA2 > 2)) {
                    iC = b(hVar, sb, sb2, iC);
                }
                while (sb.length() % 3 == 1 && ((iC <= 3 && iA2 != 1) || iC > 3)) {
                    iC = b(hVar, sb, sb2, iC);
                }
            } else if (sb.length() % 3 == 0 && j.n(hVar.d(), hVar.f33132f, e()) != e()) {
                hVar.o(0);
                break;
            }
        }
        f(hVar, sb);
    }

    int c(char c10, StringBuilder sb) {
        if (c10 == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c10 >= '0' && c10 <= '9') {
            sb.append((char) ((c10 - '0') + 4));
            return 1;
        }
        if (c10 >= 'A' && c10 <= 'Z') {
            sb.append((char) ((c10 - 'A') + 14));
            return 1;
        }
        if (c10 < ' ') {
            sb.append((char) 0);
            sb.append(c10);
            return 2;
        }
        if (c10 >= '!' && c10 <= '/') {
            sb.append((char) 1);
            sb.append((char) (c10 - '!'));
            return 2;
        }
        if (c10 >= ':' && c10 <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c10 - ':') + 15));
            return 2;
        }
        if (c10 >= '[' && c10 <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c10 - '[') + 22));
            return 2;
        }
        if (c10 < '`' || c10 > 127) {
            sb.append("\u0001\u001e");
            return c((char) (c10 - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) (c10 - '`'));
        return 2;
    }

    public int e() {
        return 1;
    }

    void f(h hVar, StringBuilder sb) {
        int length = (sb.length() / 3) << 1;
        int length2 = sb.length() % 3;
        int iA = hVar.a() + length;
        hVar.q(iA);
        int iA2 = hVar.g().a() - iA;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                g(hVar, sb);
            }
            if (hVar.i()) {
                hVar.r((char) 254);
            }
        } else if (iA2 == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                g(hVar, sb);
            }
            if (hVar.i()) {
                hVar.r((char) 254);
            }
            hVar.f33132f--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb.length() >= 3) {
                g(hVar, sb);
            }
            if (iA2 > 0 || hVar.i()) {
                hVar.r((char) 254);
            }
        }
        hVar.o(0);
    }
}
