package y9;

import i9.z;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ProgressionIterators.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class h extends z {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f37147o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f37148p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f37149q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f37150r;

    public h(long j10, long j11, long j12) {
        this.f37147o = j12;
        this.f37148p = j11;
        boolean z10 = true;
        if (j12 <= 0 ? j10 < j11 : j10 > j11) {
            z10 = false;
        }
        this.f37149q = z10;
        this.f37150r = z10 ? j10 : j11;
    }

    @Override // i9.z
    public long a() {
        long j10 = this.f37150r;
        if (j10 != this.f37148p) {
            this.f37150r = this.f37147o + j10;
        } else {
            if (!this.f37149q) {
                throw new NoSuchElementException();
            }
            this.f37149q = false;
        }
        return j10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37149q;
    }
}
