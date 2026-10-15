package b2;

/* JADX INFO: compiled from: DiskCacheStrategy.java */
/* JADX INFO: loaded from: classes.dex */
public enum b {
    ALL(true, true),
    NONE(false, false),
    SOURCE(true, false),
    RESULT(false, true);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f4569o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f4570p;

    b(boolean z10, boolean z11) {
        this.f4569o = z10;
        this.f4570p = z11;
    }

    public boolean c() {
        return this.f4570p;
    }

    public boolean e() {
        return this.f4569o;
    }
}
