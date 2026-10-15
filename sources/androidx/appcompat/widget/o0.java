package androidx.appcompat.widget;

/* JADX INFO: compiled from: RtlSpacingHelper.java */
/* JADX INFO: loaded from: classes.dex */
class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1127a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1128b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1129c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1130d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1131e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1132f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1133g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1134h = false;

    o0() {
    }

    public int a() {
        return this.f1133g ? this.f1127a : this.f1128b;
    }

    public int b() {
        return this.f1127a;
    }

    public int c() {
        return this.f1128b;
    }

    public int d() {
        return this.f1133g ? this.f1128b : this.f1127a;
    }

    public void e(int i10, int i11) {
        this.f1134h = false;
        if (i10 != Integer.MIN_VALUE) {
            this.f1131e = i10;
            this.f1127a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1132f = i11;
            this.f1128b = i11;
        }
    }

    public void f(boolean z10) {
        if (z10 == this.f1133g) {
            return;
        }
        this.f1133g = z10;
        if (!this.f1134h) {
            this.f1127a = this.f1131e;
            this.f1128b = this.f1132f;
            return;
        }
        if (z10) {
            int i10 = this.f1130d;
            if (i10 == Integer.MIN_VALUE) {
                i10 = this.f1131e;
            }
            this.f1127a = i10;
            int i11 = this.f1129c;
            if (i11 == Integer.MIN_VALUE) {
                i11 = this.f1132f;
            }
            this.f1128b = i11;
            return;
        }
        int i12 = this.f1129c;
        if (i12 == Integer.MIN_VALUE) {
            i12 = this.f1131e;
        }
        this.f1127a = i12;
        int i13 = this.f1130d;
        if (i13 == Integer.MIN_VALUE) {
            i13 = this.f1132f;
        }
        this.f1128b = i13;
    }

    public void g(int i10, int i11) {
        this.f1129c = i10;
        this.f1130d = i11;
        this.f1134h = true;
        if (this.f1133g) {
            if (i11 != Integer.MIN_VALUE) {
                this.f1127a = i11;
            }
            if (i10 != Integer.MIN_VALUE) {
                this.f1128b = i10;
                return;
            }
            return;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.f1127a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1128b = i11;
        }
    }
}
