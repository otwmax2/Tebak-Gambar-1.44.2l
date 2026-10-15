package androidx.datastore.preferences.protobuf;

/* JADX INFO: compiled from: RawMessageInfo.java */
/* JADX INFO: loaded from: classes.dex */
final class e1 implements p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r0 f2694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f2696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2697d;

    e1(r0 r0Var, String str, Object[] objArr) {
        this.f2694a = r0Var;
        this.f2695b = str;
        this.f2696c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f2697d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 < 55296) {
                this.f2697d = i10 | (cCharAt2 << i11);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.p0
    public boolean a() {
        return (this.f2697d & 2) == 2;
    }

    @Override // androidx.datastore.preferences.protobuf.p0
    public r0 b() {
        return this.f2694a;
    }

    @Override // androidx.datastore.preferences.protobuf.p0
    public b1 c() {
        return (this.f2697d & 1) == 1 ? b1.PROTO2 : b1.PROTO3;
    }

    Object[] d() {
        return this.f2696c;
    }

    String e() {
        return this.f2695b;
    }
}
