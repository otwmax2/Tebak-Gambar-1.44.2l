package u7;

/* JADX INFO: compiled from: QRCode.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private t7.b f35626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private t7.a f35627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t7.c f35628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f35629d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f35630e;

    public static boolean b(int i10) {
        return i10 >= 0 && i10 < 8;
    }

    public b a() {
        return this.f35630e;
    }

    public void c(t7.a aVar) {
        this.f35627b = aVar;
    }

    public void d(int i10) {
        this.f35629d = i10;
    }

    public void e(b bVar) {
        this.f35630e = bVar;
    }

    public void f(t7.b bVar) {
        this.f35626a = bVar;
    }

    public void g(t7.c cVar) {
        this.f35628c = cVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f35626a);
        sb.append("\n ecLevel: ");
        sb.append(this.f35627b);
        sb.append("\n version: ");
        sb.append(this.f35628c);
        sb.append("\n maskPattern: ");
        sb.append(this.f35629d);
        if (this.f35630e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f35630e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
