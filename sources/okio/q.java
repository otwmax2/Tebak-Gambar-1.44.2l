package okio;

import com.facebook.internal.Utility;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Segment.java */
/* JADX INFO: loaded from: classes.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final byte[] f33395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f33396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f33397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f33398d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f33399e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    q f33400f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    q f33401g;

    q() {
        this.f33395a = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
        this.f33399e = true;
        this.f33398d = false;
    }

    public final void a() {
        q qVar = this.f33401g;
        if (qVar == this) {
            throw new IllegalStateException();
        }
        if (qVar.f33399e) {
            int i10 = this.f33397c - this.f33396b;
            if (i10 > (8192 - qVar.f33397c) + (qVar.f33398d ? 0 : qVar.f33396b)) {
                return;
            }
            f(qVar, i10);
            b();
            r.a(this);
        }
    }

    @Nullable
    public final q b() {
        q qVar = this.f33400f;
        q qVar2 = qVar != this ? qVar : null;
        q qVar3 = this.f33401g;
        qVar3.f33400f = qVar;
        this.f33400f.f33401g = qVar3;
        this.f33400f = null;
        this.f33401g = null;
        return qVar2;
    }

    public final q c(q qVar) {
        qVar.f33401g = this;
        qVar.f33400f = this.f33400f;
        this.f33400f.f33401g = qVar;
        this.f33400f = qVar;
        return qVar;
    }

    final q d() {
        this.f33398d = true;
        return new q(this.f33395a, this.f33396b, this.f33397c, true, false);
    }

    public final q e(int i10) {
        q qVarB;
        if (i10 <= 0 || i10 > this.f33397c - this.f33396b) {
            throw new IllegalArgumentException();
        }
        if (i10 >= 1024) {
            qVarB = d();
        } else {
            qVarB = r.b();
            System.arraycopy(this.f33395a, this.f33396b, qVarB.f33395a, 0, i10);
        }
        qVarB.f33397c = qVarB.f33396b + i10;
        this.f33396b += i10;
        this.f33401g.c(qVarB);
        return qVarB;
    }

    public final void f(q qVar, int i10) {
        if (!qVar.f33399e) {
            throw new IllegalArgumentException();
        }
        int i11 = qVar.f33397c;
        if (i11 + i10 > 8192) {
            if (qVar.f33398d) {
                throw new IllegalArgumentException();
            }
            int i12 = qVar.f33396b;
            if ((i11 + i10) - i12 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = qVar.f33395a;
            System.arraycopy(bArr, i12, bArr, 0, i11 - i12);
            qVar.f33397c -= qVar.f33396b;
            qVar.f33396b = 0;
        }
        System.arraycopy(this.f33395a, this.f33396b, qVar.f33395a, qVar.f33397c, i10);
        qVar.f33397c += i10;
        this.f33396b += i10;
    }

    q(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        this.f33395a = bArr;
        this.f33396b = i10;
        this.f33397c = i11;
        this.f33398d = z10;
        this.f33399e = z11;
    }
}
