package m1;

/* JADX INFO: compiled from: NetworkState.java */
/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f32113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f32114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f32115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32116d;

    public b(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f32113a = z10;
        this.f32114b = z11;
        this.f32115c = z12;
        this.f32116d = z13;
    }

    public boolean a() {
        return this.f32113a;
    }

    public boolean b() {
        return this.f32115c;
    }

    public boolean c() {
        return this.f32116d;
    }

    public boolean d() {
        return this.f32114b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f32113a == bVar.f32113a && this.f32114b == bVar.f32114b && this.f32115c == bVar.f32115c && this.f32116d == bVar.f32116d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public int hashCode() {
        ?? r02 = this.f32113a;
        int i10 = r02;
        if (this.f32114b) {
            i10 = r02 + 16;
        }
        int i11 = i10;
        if (this.f32115c) {
            i11 = i10 + 256;
        }
        return this.f32116d ? i11 + 4096 : i11;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f32113a), Boolean.valueOf(this.f32114b), Boolean.valueOf(this.f32115c), Boolean.valueOf(this.f32116d));
    }
}
