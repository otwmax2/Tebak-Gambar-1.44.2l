package androidx.core.graphics;

import android.graphics.Insets;
import android.graphics.Rect;

/* JADX INFO: compiled from: Insets.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f2195e = new b(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2199d;

    /* JADX INFO: compiled from: Insets.java */
    static class a {
        static Insets a(int i10, int i11, int i12, int i13) {
            return Insets.of(i10, i11, i12, i13);
        }
    }

    private b(int i10, int i11, int i12, int i13) {
        this.f2196a = i10;
        this.f2197b = i11;
        this.f2198c = i12;
        this.f2199d = i13;
    }

    public static b a(b bVar, b bVar2) {
        return b(Math.max(bVar.f2196a, bVar2.f2196a), Math.max(bVar.f2197b, bVar2.f2197b), Math.max(bVar.f2198c, bVar2.f2198c), Math.max(bVar.f2199d, bVar2.f2199d));
    }

    public static b b(int i10, int i11, int i12, int i13) {
        return (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) ? f2195e : new b(i10, i11, i12, i13);
    }

    public static b c(Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static b d(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public Insets e() {
        return a.a(this.f2196a, this.f2197b, this.f2198c, this.f2199d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2199d == bVar.f2199d && this.f2196a == bVar.f2196a && this.f2198c == bVar.f2198c && this.f2197b == bVar.f2197b;
    }

    public int hashCode() {
        return (((((this.f2196a * 31) + this.f2197b) * 31) + this.f2198c) * 31) + this.f2199d;
    }

    public String toString() {
        return "Insets{left=" + this.f2196a + ", top=" + this.f2197b + ", right=" + this.f2198c + ", bottom=" + this.f2199d + '}';
    }
}
