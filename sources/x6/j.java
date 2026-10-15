package x6;

/* JADX INFO: compiled from: SessionEvent.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum j implements f6.f {
    EVENT_TYPE_UNKNOWN(0),
    SESSION_START(1);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f36429o;

    j(int i10) {
        this.f36429o = i10;
    }

    @Override // f6.f
    public int h() {
        return this.f36429o;
    }
}
