package x6;

/* JADX INFO: compiled from: ApplicationInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum t implements f6.f {
    LOG_ENVIRONMENT_UNKNOWN(0),
    LOG_ENVIRONMENT_AUTOPUSH(1),
    LOG_ENVIRONMENT_STAGING(2),
    LOG_ENVIRONMENT_PROD(3);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f36453o;

    t(int i10) {
        this.f36453o = i10;
    }

    @Override // f6.f
    public int h() {
        return this.f36453o;
    }
}
