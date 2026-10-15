package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzio;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class a implements zzio {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzee f26235a;

    a(zzee zzeeVar) {
        this.f26235a = zzeeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final List a(String str, String str2) {
        return this.f26235a.C(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final Map b(String str, String str2, boolean z10) {
        return this.f26235a.D(str, str2, z10);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void b0(String str) {
        this.f26235a.H(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void c(Bundle bundle) {
        this.f26235a.c(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void d(String str, String str2, Bundle bundle) {
        this.f26235a.L(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void e(String str, String str2, Bundle bundle) {
        this.f26235a.I(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String f() {
        return this.f26235a.y();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String g() {
        return this.f26235a.z();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String h() {
        return this.f26235a.A();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final String i() {
        return this.f26235a.B();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void i1(String str) {
        this.f26235a.J(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final int o(String str) {
        return this.f26235a.p(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final long zzb() {
        return this.f26235a.q();
    }
}
