package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcx extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ String f23390s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ String f23391t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ Context f23392u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ Bundle f23393v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final /* synthetic */ zzee f23394w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcx(zzee zzeeVar, String str, String str2, Context context, Bundle bundle) {
        super(zzeeVar, true);
        this.f23394w = zzeeVar;
        this.f23390s = str;
        this.f23391t = str2;
        this.f23392u = context;
        this.f23393v = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void a() {
        String str;
        String str2;
        String str3;
        try {
            zzee zzeeVar = this.f23394w;
            if (zzee.o(this.f23390s, this.f23391t)) {
                String str4 = this.f23391t;
                str2 = this.f23390s;
                str3 = str4;
                str = this.f23394w.f23476a;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            Preconditions.k(this.f23392u);
            zzee zzeeVar2 = this.f23394w;
            zzeeVar2.f23484i = zzeeVar2.u(this.f23392u, true);
            if (this.f23394w.f23484i == null) {
                Log.w(this.f23394w.f23476a, "Failed to connect to measurement client.");
                return;
            }
            int iA = DynamiteModule.a(this.f23392u, ModuleDescriptor.MODULE_ID);
            ((zzcc) Preconditions.k(this.f23394w.f23484i)).initialize(ObjectWrapper.Q4(this.f23392u), new zzcl(61000L, Math.max(iA, r0), DynamiteModule.c(this.f23392u, ModuleDescriptor.MODULE_ID) < iA, str, str2, str3, this.f23393v, com.google.android.gms.measurement.internal.zzga.a(this.f23392u)), this.f23451o);
        } catch (Exception e10) {
            this.f23394w.l(e10, true, false);
        }
    }
}
