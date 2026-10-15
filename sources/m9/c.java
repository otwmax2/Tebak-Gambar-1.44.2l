package m9;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c implements k9.d<Object> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final c f32221o = new c();

    private c() {
    }

    @Override // k9.d
    public void g(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // k9.d
    public k9.g getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
