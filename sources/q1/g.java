package q1;

/* JADX INFO: compiled from: SystemIdInfo.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33756b;

    public g(String str, int i10) {
        this.f33755a = str;
        this.f33756b = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f33756b != gVar.f33756b) {
            return false;
        }
        return this.f33755a.equals(gVar.f33755a);
    }

    public int hashCode() {
        return (this.f33755a.hashCode() * 31) + this.f33756b;
    }
}
