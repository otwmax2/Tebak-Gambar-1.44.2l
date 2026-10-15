package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzio;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzio f23970a;

    public b(zzio zzioVar) {
        super(null);
        Preconditions.k(zzioVar);
        this.f23970a = zzioVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final List a(String str, String str2) {
        return this.f23970a.a(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final Map b(String str, String str2, boolean z10) {
        return this.f23970a.b(str, str2, z10);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void b0(String str) {
        this.f23970a.b0(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void c(Bundle bundle) {
        this.f23970a.c(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void d(String str, String str2, Bundle bundle) {
        this.f23970a.d(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void e(String str, String str2, Bundle bundle) {
        this.f23970a.e(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String f() {
        return this.f23970a.f();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String g() {
        return this.f23970a.g();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String h() {
        return this.f23970a.h();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String i() {
        return this.f23970a.i();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void i1(String str) {
        this.f23970a.i1(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final int o(String str) {
        return this.f23970a.o(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final long zzb() {
        return this.f23970a.zzb();
    }
}
