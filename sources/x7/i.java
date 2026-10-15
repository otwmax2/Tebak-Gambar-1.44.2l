package x7;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f36543b;

    private i(String str, String str2) {
        this.f36542a = str;
        this.f36543b = str2;
    }

    public static i a(String str, String str2) {
        a8.e.d(str, "Name is null or empty");
        a8.e.d(str2, "Version is null or empty");
        return new i(str, str2);
    }

    public String b() {
        return this.f36542a;
    }

    public String c() {
        return this.f36543b;
    }
}
