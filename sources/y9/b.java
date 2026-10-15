package y9;

import java.util.NoSuchElementException;
import t9.m;

/* JADX INFO: compiled from: ProgressionIterators.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends i9.i {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f37127o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f37128p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f37129q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f37130r;

    public b(char c10, char c11, int i10) {
        this.f37127o = i10;
        this.f37128p = c11;
        boolean z10 = true;
        if (i10 <= 0 ? m.f(c10, c11) < 0 : m.f(c10, c11) > 0) {
            z10 = false;
        }
        this.f37129q = z10;
        this.f37130r = z10 ? c10 : c11;
    }

    @Override // i9.i
    public char a() {
        int i10 = this.f37130r;
        if (i10 != this.f37128p) {
            this.f37130r = this.f37127o + i10;
        } else {
            if (!this.f37129q) {
                throw new NoSuchElementException();
            }
            this.f37129q = false;
        }
        return (char) i10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37129q;
    }
}
