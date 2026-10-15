package r5;

import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_RolloutAssignment.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f34254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f34255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f34256f;

    b(String str, String str2, String str3, String str4, long j10) {
        Objects.requireNonNull(str, "Null rolloutId");
        this.f34252b = str;
        Objects.requireNonNull(str2, "Null parameterKey");
        this.f34253c = str2;
        Objects.requireNonNull(str3, "Null parameterValue");
        this.f34254d = str3;
        Objects.requireNonNull(str4, "Null variantId");
        this.f34255e = str4;
        this.f34256f = j10;
    }

    @Override // r5.i
    public String c() {
        return this.f34253c;
    }

    @Override // r5.i
    public String d() {
        return this.f34254d;
    }

    @Override // r5.i
    public String e() {
        return this.f34252b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f34252b.equals(iVar.e()) && this.f34253c.equals(iVar.c()) && this.f34254d.equals(iVar.d()) && this.f34255e.equals(iVar.g()) && this.f34256f == iVar.f();
    }

    @Override // r5.i
    public long f() {
        return this.f34256f;
    }

    @Override // r5.i
    public String g() {
        return this.f34255e;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f34252b.hashCode() ^ 1000003) * 1000003) ^ this.f34253c.hashCode()) * 1000003) ^ this.f34254d.hashCode()) * 1000003) ^ this.f34255e.hashCode()) * 1000003;
        long j10 = this.f34256f;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.f34252b + ", parameterKey=" + this.f34253c + ", parameterValue=" + this.f34254d + ", variantId=" + this.f34255e + ", templateVersion=" + this.f34256f + "}";
    }
}
