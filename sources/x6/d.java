package x6;

/* JADX INFO: compiled from: SessionEvent.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum d implements f6.f {
    COLLECTION_UNKNOWN(0),
    COLLECTION_SDK_NOT_INSTALLED(1),
    COLLECTION_ENABLED(2),
    COLLECTION_DISABLED(3),
    COLLECTION_DISABLED_REMOTE(4),
    COLLECTION_SAMPLED(5);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f36367o;

    d(int i10) {
        this.f36367o = i10;
    }

    @Override // f6.f
    public int h() {
        return this.f36367o;
    }
}
