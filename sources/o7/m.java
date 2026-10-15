package o7;

/* JADX INFO: compiled from: TextEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
final class m extends c {
    m() {
    }

    @Override // o7.c
    int c(char c10, StringBuilder sb) {
        if (c10 == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c10 >= '0' && c10 <= '9') {
            sb.append((char) ((c10 - '0') + 4));
            return 1;
        }
        if (c10 >= 'a' && c10 <= 'z') {
            sb.append((char) ((c10 - 'a') + 14));
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
        if (c10 == '`') {
            sb.append((char) 2);
            sb.append((char) (c10 - '`'));
            return 2;
        }
        if (c10 >= 'A' && c10 <= 'Z') {
            sb.append((char) 2);
            sb.append((char) ((c10 - 'A') + 1));
            return 2;
        }
        if (c10 < '{' || c10 > 127) {
            sb.append("\u0001\u001e");
            return c((char) (c10 - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) ((c10 - '{') + 27));
        return 2;
    }

    @Override // o7.c
    public int e() {
        return 2;
    }
}
