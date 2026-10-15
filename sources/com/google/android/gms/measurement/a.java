package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgi;
import com.google.android.gms.measurement.internal.zzin;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgi f23967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzin f23968b;

    public a(zzgi zzgiVar) {
        super(null);
        Preconditions.k(zzgiVar);
        this.f23967a = zzgiVar;
        this.f23968b = zzgiVar.G();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final List a(String str, String str2) {
        return this.f23968b.b0(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final Map b(String str, String str2, boolean z10) {
        return this.f23968b.c0(str, str2, z10);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void b0(String str) {
        this.f23967a.u().g(str, this.f23967a.x().b());
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void c(Bundle bundle) {
        this.f23968b.C(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void d(String str, String str2, Bundle bundle) {
        this.f23968b.n(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void e(String str, String str2, Bundle bundle) {
        this.f23967a.G().j(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String f() {
        return this.f23968b.X();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String g() {
        return this.f23968b.Y();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String h() {
        return this.f23968b.Z();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String i() {
        return this.f23968b.X();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void i1(String str) {
        this.f23967a.u().h(str, this.f23967a.x().b());
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final int o(String str) {
        this.f23968b.R(str);
        return 25;
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final long zzb() {
        return this.f23967a.L().r0();
    }
}
