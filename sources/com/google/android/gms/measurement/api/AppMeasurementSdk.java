package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzhi;
import com.google.android.gms.measurement.internal.zzhj;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@ShowFirstParty
@KeepForSdk
public class AppMeasurementSdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzee f23969a;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
    @KeepForSdk
    public static final class ConditionalUserProperty {
        private ConditionalUserProperty() {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
    @ShowFirstParty
    @KeepForSdk
    public interface EventInterceptor extends zzhi {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
    @ShowFirstParty
    @KeepForSdk
    public interface OnEventListener extends zzhj {
    }

    public AppMeasurementSdk(zzee zzeeVar) {
        this.f23969a = zzeeVar;
    }

    @KeepForSdk
    public static AppMeasurementSdk k(Context context, String str, String str2, String str3, Bundle bundle) {
        return zzee.v(context, str, str2, str3, bundle).s();
    }

    @KeepForSdk
    public void a(String str) {
        this.f23969a.H(str);
    }

    @KeepForSdk
    public void b(String str, String str2, Bundle bundle) {
        this.f23969a.I(str, str2, bundle);
    }

    @KeepForSdk
    public void c(String str) {
        this.f23969a.J(str);
    }

    @KeepForSdk
    public long d() {
        return this.f23969a.q();
    }

    @KeepForSdk
    public String e() {
        return this.f23969a.x();
    }

    @KeepForSdk
    public String f() {
        return this.f23969a.y();
    }

    @KeepForSdk
    public List<Bundle> g(String str, String str2) {
        return this.f23969a.C(str, str2);
    }

    @KeepForSdk
    public String h() {
        return this.f23969a.z();
    }

    @KeepForSdk
    public String i() {
        return this.f23969a.A();
    }

    @KeepForSdk
    public String j() {
        return this.f23969a.B();
    }

    @KeepForSdk
    public int l(String str) {
        return this.f23969a.p(str);
    }

    @KeepForSdk
    public Map<String, Object> m(String str, String str2, boolean z10) {
        return this.f23969a.D(str, str2, z10);
    }

    @KeepForSdk
    public void n(String str, String str2, Bundle bundle) {
        this.f23969a.L(str, str2, bundle);
    }

    @KeepForSdk
    public void o(Bundle bundle) {
        this.f23969a.r(bundle, false);
    }

    @KeepForSdk
    public Bundle p(Bundle bundle) {
        return this.f23969a.r(bundle, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void q(OnEventListener onEventListener) {
        this.f23969a.b(onEventListener);
    }

    @KeepForSdk
    public void r(Bundle bundle) {
        this.f23969a.c(bundle);
    }

    @KeepForSdk
    public void s(Bundle bundle) {
        this.f23969a.d(bundle);
    }

    @KeepForSdk
    public void t(Activity activity, String str, String str2) {
        this.f23969a.e(activity, str, str2);
    }

    @KeepForSdk
    public void u(String str, String str2, Object obj) {
        this.f23969a.h(str, str2, obj, true);
    }

    public final void v(boolean z10) {
        this.f23969a.f(z10);
    }
}
