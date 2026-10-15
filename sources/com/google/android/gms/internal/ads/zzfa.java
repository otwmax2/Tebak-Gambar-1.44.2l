package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfa implements zzfg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f17785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f17786b = new ArrayList(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f17787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzfl f17788d;

    protected zzfa(boolean z10) {
        this.f17785a = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public /* synthetic */ Map b() {
        return Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void f(zzgi zzgiVar) {
        Objects.requireNonNull(zzgiVar);
        if (this.f17786b.contains(zzgiVar)) {
            return;
        }
        this.f17786b.add(zzgiVar);
        this.f17787c++;
    }

    protected final void n() {
        zzfl zzflVar = this.f17788d;
        int i10 = zzew.f17494a;
        for (int i11 = 0; i11 < this.f17787c; i11++) {
            ((zzgi) this.f17786b.get(i11)).o(this, zzflVar, this.f17785a);
        }
        this.f17788d = null;
    }

    protected final void o(zzfl zzflVar) {
        for (int i10 = 0; i10 < this.f17787c; i10++) {
            ((zzgi) this.f17786b.get(i10)).q(this, zzflVar, this.f17785a);
        }
    }

    protected final void p(zzfl zzflVar) {
        this.f17788d = zzflVar;
        for (int i10 = 0; i10 < this.f17787c; i10++) {
            ((zzgi) this.f17786b.get(i10)).k(this, zzflVar, this.f17785a);
        }
    }

    protected final void w(int i10) {
        zzfl zzflVar = this.f17788d;
        int i11 = zzew.f17494a;
        for (int i12 = 0; i12 < this.f17787c; i12++) {
            ((zzgi) this.f17786b.get(i12)).h(this, zzflVar, this.f17785a, i10);
        }
    }
}
