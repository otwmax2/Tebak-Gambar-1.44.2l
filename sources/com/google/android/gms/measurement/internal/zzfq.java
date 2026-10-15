package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzgi f24675a;

    zzfq(zzli zzliVar) {
        this.f24675a = zzliVar.a0();
    }

    @VisibleForTesting
    final boolean a() {
        try {
            PackageManagerWrapper packageManagerWrapperA = Wrappers.a(this.f24675a.N0());
            if (packageManagerWrapperA != null) {
                return packageManagerWrapperA.f("com.android.vending", 128).versionCode >= 80837300;
            }
            this.f24675a.U().q().a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e10) {
            this.f24675a.U().q().b("Failed to retrieve Play Store version for Install Referrer", e10);
            return false;
        }
    }
}
