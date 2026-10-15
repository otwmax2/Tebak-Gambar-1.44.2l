package o7;

/* JADX INFO: compiled from: X12Encoder.java */
/* JADX INFO: loaded from: classes2.dex */
final class n extends c {
    n() {
    }

    @Override // o7.c, o7.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hVar.i()) {
                break;
            }
            char c10 = hVar.c();
            hVar.f33132f++;
            c(c10, sb);
            if (sb.length() % 3 == 0) {
                c.g(hVar, sb);
                if (j.n(hVar.d(), hVar.f33132f, e()) != e()) {
                    hVar.o(0);
                    break;
                }
            }
        }
        f(hVar, sb);
    }

    @Override // o7.c
    int c(char c10, StringBuilder sb) {
        if (c10 == '\r') {
            sb.append((char) 0);
        } else if (c10 == ' ') {
            sb.append((char) 3);
        } else if (c10 == '*') {
            sb.append((char) 1);
        } else if (c10 == '>') {
            sb.append((char) 2);
        } else if (c10 >= '0' && c10 <= '9') {
            sb.append((char) ((c10 - '0') + 4));
        } else if (c10 < 'A' || c10 > 'Z') {
            j.e(c10);
        } else {
            sb.append((char) ((c10 - 'A') + 14));
        }
        return 1;
    }

    @Override // o7.c
    public int e() {
        return 3;
    }

    @Override // o7.c
    void f(h hVar, StringBuilder sb) {
        hVar.p();
        int iA = hVar.g().a() - hVar.a();
        hVar.f33132f -= sb.length();
        if (hVar.f() > 1 || iA > 1 || hVar.f() != iA) {
            hVar.r((char) 254);
        }
        if (hVar.e() < 0) {
            hVar.o(0);
        }
    }
}
