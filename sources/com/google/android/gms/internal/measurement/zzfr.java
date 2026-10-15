package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfr extends zzjy implements zzlk {
    private zzfr() {
        super(zzfs.zza);
    }

    public final zzfr A(int i10, zzfv zzfvVar) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.D((zzfs) this.f23657p, i10, (zzfw) zzfvVar.o());
        return this;
    }

    public final zzfr B(int i10, zzfw zzfwVar) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.D((zzfs) this.f23657p, i10, zzfwVar);
        return this;
    }

    public final zzfr C(long j10) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.K((zzfs) this.f23657p, j10);
        return this;
    }

    public final zzfr D(long j10) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.J((zzfs) this.f23657p, j10);
        return this;
    }

    public final zzfw E(int i10) {
        return ((zzfs) this.f23657p).A(i10);
    }

    public final String F() {
        return ((zzfs) this.f23657p).B();
    }

    public final List G() {
        return Collections.unmodifiableList(((zzfs) this.f23657p).C());
    }

    public final boolean H() {
        return ((zzfs) this.f23657p).O();
    }

    public final int r() {
        return ((zzfs) this.f23657p).v();
    }

    public final long s() {
        return ((zzfs) this.f23657p).w();
    }

    public final long t() {
        return ((zzfs) this.f23657p).x();
    }

    public final zzfr u(Iterable iterable) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.F((zzfs) this.f23657p, iterable);
        return this;
    }

    public final zzfr v(zzfv zzfvVar) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.E((zzfs) this.f23657p, (zzfw) zzfvVar.o());
        return this;
    }

    public final zzfr w(zzfw zzfwVar) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.E((zzfs) this.f23657p, zzfwVar);
        return this;
    }

    public final zzfr x() {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        ((zzfs) this.f23657p).zzf = zzkc.o();
        return this;
    }

    public final zzfr y(int i10) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.H((zzfs) this.f23657p, i10);
        return this;
    }

    public final zzfr z(String str) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfs.I((zzfs) this.f23657p, str);
        return this;
    }

    /* synthetic */ zzfr(zzfj zzfjVar) {
        super(zzfs.zza);
    }
}
