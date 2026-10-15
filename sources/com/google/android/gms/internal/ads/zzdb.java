package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfqk f14308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f14309b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ByteBuffer[] f14310c = new ByteBuffer[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzdc f14311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzdc f14312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f14313f;

    public zzdb(zzfqk zzfqkVar) {
        this.f14308a = zzfqkVar;
        zzdc zzdcVar = zzdc.f14338e;
        this.f14311d = zzdcVar;
        this.f14312e = zzdcVar;
        this.f14313f = false;
    }

    private final int i() {
        return this.f14310c.length - 1;
    }

    private final void j(ByteBuffer byteBuffer) {
        boolean z10;
        do {
            int i10 = 0;
            z10 = false;
            while (i10 <= i()) {
                if (!this.f14310c[i10].hasRemaining()) {
                    zzde zzdeVar = (zzde) this.f14309b.get(i10);
                    if (!zzdeVar.f()) {
                        ByteBuffer byteBuffer2 = i10 > 0 ? this.f14310c[i10 - 1] : byteBuffer.hasRemaining() ? byteBuffer : zzde.f14420a;
                        long jRemaining = byteBuffer2.remaining();
                        zzdeVar.g(byteBuffer2);
                        this.f14310c[i10] = zzdeVar.zzb();
                        boolean z11 = true;
                        if (jRemaining - ((long) byteBuffer2.remaining()) <= 0 && !this.f14310c[i10].hasRemaining()) {
                            z11 = false;
                        }
                        z10 |= z11;
                    } else if (!this.f14310c[i10].hasRemaining() && i10 < i()) {
                        ((zzde) this.f14309b.get(i10 + 1)).d();
                    }
                }
                i10++;
            }
        } while (z10);
    }

    public final zzdc a(zzdc zzdcVar) throws zzdd {
        if (zzdcVar.equals(zzdc.f14338e)) {
            throw new zzdd(zzdcVar);
        }
        for (int i10 = 0; i10 < this.f14308a.size(); i10++) {
            zzde zzdeVar = (zzde) this.f14308a.get(i10);
            zzdc zzdcVarB = zzdeVar.b(zzdcVar);
            if (zzdeVar.e()) {
                zzdl.f(!zzdcVarB.equals(zzdc.f14338e));
                zzdcVar = zzdcVarB;
            }
        }
        this.f14312e = zzdcVar;
        return zzdcVar;
    }

    public final ByteBuffer b() {
        if (!h()) {
            return zzde.f14420a;
        }
        ByteBuffer byteBuffer = this.f14310c[i()];
        if (!byteBuffer.hasRemaining()) {
            j(zzde.f14420a);
        }
        return byteBuffer;
    }

    public final void c() {
        this.f14309b.clear();
        this.f14311d = this.f14312e;
        this.f14313f = false;
        for (int i10 = 0; i10 < this.f14308a.size(); i10++) {
            zzde zzdeVar = (zzde) this.f14308a.get(i10);
            zzdeVar.a();
            if (zzdeVar.e()) {
                this.f14309b.add(zzdeVar);
            }
        }
        this.f14310c = new ByteBuffer[this.f14309b.size()];
        for (int i11 = 0; i11 <= i(); i11++) {
            this.f14310c[i11] = ((zzde) this.f14309b.get(i11)).zzb();
        }
    }

    public final void d() {
        if (!h() || this.f14313f) {
            return;
        }
        this.f14313f = true;
        ((zzde) this.f14309b.get(0)).d();
    }

    public final void e(ByteBuffer byteBuffer) {
        if (!h() || this.f14313f) {
            return;
        }
        j(byteBuffer);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdb)) {
            return false;
        }
        zzdb zzdbVar = (zzdb) obj;
        if (this.f14308a.size() != zzdbVar.f14308a.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f14308a.size(); i10++) {
            if (this.f14308a.get(i10) != zzdbVar.f14308a.get(i10)) {
                return false;
            }
        }
        return true;
    }

    public final void f() {
        for (int i10 = 0; i10 < this.f14308a.size(); i10++) {
            zzde zzdeVar = (zzde) this.f14308a.get(i10);
            zzdeVar.a();
            zzdeVar.c();
        }
        this.f14310c = new ByteBuffer[0];
        zzdc zzdcVar = zzdc.f14338e;
        this.f14311d = zzdcVar;
        this.f14312e = zzdcVar;
        this.f14313f = false;
    }

    public final boolean g() {
        return this.f14313f && ((zzde) this.f14309b.get(i())).f() && !this.f14310c[i()].hasRemaining();
    }

    public final boolean h() {
        return !this.f14309b.isEmpty();
    }

    public final int hashCode() {
        return this.f14308a.hashCode();
    }
}
