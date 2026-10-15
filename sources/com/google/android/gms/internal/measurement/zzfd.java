package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfd extends zzjy implements zzlk {
    private zzfd() {
        super(zzfe.zza);
    }

    public final int r() {
        return ((zzfe) this.f23657p).v();
    }

    public final zzfc s(int i10) {
        return ((zzfe) this.f23657p).x(i10);
    }

    public final zzfd t() {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        ((zzfe) this.f23657p).zzk = zzkc.o();
        return this;
    }

    public final zzfd u(int i10, zzfb zzfbVar) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzfe.H((zzfe) this.f23657p, i10, (zzfc) zzfbVar.o());
        return this;
    }

    public final String v() {
        return ((zzfe) this.f23657p).C();
    }

    public final List w() {
        return Collections.unmodifiableList(((zzfe) this.f23657p).D());
    }

    public final List x() {
        return Collections.unmodifiableList(((zzfe) this.f23657p).E());
    }

    /* synthetic */ zzfd(zzey zzeyVar) {
        super(zzfe.zza);
    }
}
