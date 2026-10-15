package androidx.datastore.preferences.protobuf;

/* JADX INFO: compiled from: TextFormatEscaper.java */
/* JADX INFO: loaded from: classes.dex */
final class l1 {

    /* JADX INFO: compiled from: TextFormatEscaper.java */
    static class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h f2807a;

        a(h hVar) {
            this.f2807a = hVar;
        }

        @Override // androidx.datastore.preferences.protobuf.l1.b
        public byte a(int i10) {
            return this.f2807a.g(i10);
        }

        @Override // androidx.datastore.preferences.protobuf.l1.b
        public int size() {
            return this.f2807a.size();
        }
    }

    /* JADX INFO: compiled from: TextFormatEscaper.java */
    private interface b {
        byte a(int i10);

        int size();
    }

    static String a(h hVar) {
        return b(new a(hVar));
    }

    static String b(b bVar) {
        StringBuilder sb = new StringBuilder(bVar.size());
        for (int i10 = 0; i10 < bVar.size(); i10++) {
            byte bA = bVar.a(i10);
            if (bA == 34) {
                sb.append("\\\"");
            } else if (bA == 39) {
                sb.append("\\'");
            } else if (bA != 92) {
                switch (bA) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bA < 32 || bA > 126) {
                            sb.append('\\');
                            sb.append((char) (((bA >>> 6) & 3) + 48));
                            sb.append((char) (((bA >>> 3) & 7) + 48));
                            sb.append((char) ((bA & 7) + 48));
                        } else {
                            sb.append((char) bA);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    static String c(String str) {
        return a(h.m(str));
    }
}
