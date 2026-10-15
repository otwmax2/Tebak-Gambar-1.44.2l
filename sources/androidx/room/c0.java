package androidx.room;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: QueryInterceptorProgram.java */
/* JADX INFO: loaded from: classes.dex */
final class c0 implements b1.i {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<Object> f4033o = new ArrayList();

    c0() {
    }

    private void c(int i10, Object obj) {
        int i11 = i10 - 1;
        if (i11 >= this.f4033o.size()) {
            for (int size = this.f4033o.size(); size <= i11; size++) {
                this.f4033o.add(null);
            }
        }
        this.f4033o.set(i11, obj);
    }

    @Override // b1.i
    public void D1(int i10, byte[] bArr) {
        c(i10, bArr);
    }

    @Override // b1.i
    public void L0(int i10, double d10) {
        c(i10, Double.valueOf(d10));
    }

    List<Object> b() {
        return this.f4033o;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // b1.i
    public void k0(int i10, String str) {
        c(i10, str);
    }

    @Override // b1.i
    public void s1(int i10, long j10) {
        c(i10, Long.valueOf(j10));
    }

    @Override // b1.i
    public void z2(int i10) {
        c(i10, null);
    }
}
