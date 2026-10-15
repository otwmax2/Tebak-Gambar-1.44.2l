package q5;

/* JADX INFO: compiled from: DeliveryMechanism.java */
/* JADX INFO: loaded from: classes2.dex */
public enum y {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f34050o;

    y(int i10) {
        this.f34050o = i10;
    }

    public static y c(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public int e() {
        return this.f34050o;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f34050o);
    }
}
