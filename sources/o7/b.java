package o7;

/* JADX INFO: compiled from: Base256Encoder.java */
/* JADX INFO: loaded from: classes2.dex */
final class b implements g {
    b() {
    }

    private static char c(char c10, int i10) {
        int i11 = c10 + ((i10 * 149) % 255) + 1;
        return i11 <= 255 ? (char) i11 : (char) (i11 - 256);
    }

    @Override // o7.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!hVar.i()) {
                break;
            }
            sb.append(hVar.c());
            hVar.f33132f++;
            if (j.n(hVar.d(), hVar.f33132f, b()) != b()) {
                hVar.o(0);
                break;
            }
        }
        int length = sb.length() - 1;
        int iA = hVar.a() + length + 1;
        hVar.q(iA);
        boolean z10 = hVar.g().a() - iA > 0;
        if (hVar.i() || z10) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
                }
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb.length();
        for (int i10 = 0; i10 < length2; i10++) {
            hVar.r(c(sb.charAt(i10), hVar.a() + 1));
        }
    }

    public int b() {
        return 5;
    }
}
