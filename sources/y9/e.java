package y9;

import i9.y;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ProgressionIterators.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e extends y {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f37137o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f37138p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f37139q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f37140r;

    public e(int i10, int i11, int i12) {
        this.f37137o = i12;
        this.f37138p = i11;
        boolean z10 = true;
        if (i12 <= 0 ? i10 < i11 : i10 > i11) {
            z10 = false;
        }
        this.f37139q = z10;
        this.f37140r = z10 ? i10 : i11;
    }

    @Override // i9.y
    public int a() {
        int i10 = this.f37140r;
        if (i10 != this.f37138p) {
            this.f37140r = this.f37137o + i10;
        } else {
            if (!this.f37139q) {
                throw new NoSuchElementException();
            }
            this.f37139q = false;
        }
        return i10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37139q;
    }
}
