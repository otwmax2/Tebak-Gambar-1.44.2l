package y8;

/* JADX INFO: compiled from: Size.java */
/* JADX INFO: loaded from: classes2.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f37066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f37067b;

    public v(int i10, int i11) {
        this.f37066a = i10;
        this.f37067b = i11;
    }

    public int a() {
        return this.f37067b;
    }

    public int b() {
        return this.f37066a;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f37066a == vVar.f37066a && this.f37067b == vVar.f37067b;
    }

    public int hashCode() {
        int i10 = this.f37067b;
        int i11 = this.f37066a;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public String toString() {
        return this.f37066a + "x" + this.f37067b;
    }
}
