package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbmv extends zzcfy {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AppMeasurementSdk f10981o;

    zzbmv(AppMeasurementSdk appMeasurementSdk) {
        this.f10981o = appMeasurementSdk;
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void L7(String str, String str2, Bundle bundle) throws RemoteException {
        this.f10981o.n(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void N1(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException {
        this.f10981o.u(str, str2, iObjectWrapper != null ? ObjectWrapper.t1(iObjectWrapper) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void U9(String str, String str2, Bundle bundle) throws RemoteException {
        this.f10981o.b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final Bundle X(Bundle bundle) throws RemoteException {
        return this.f10981o.p(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final long a() throws RemoteException {
        return this.f10981o.d();
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final String b() throws RemoteException {
        return this.f10981o.e();
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final String c() throws RemoteException {
        return this.f10981o.f();
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final String e() throws RemoteException {
        return this.f10981o.h();
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final List e7(String str, String str2) throws RemoteException {
        return this.f10981o.g(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final String f() throws RemoteException {
        return this.f10981o.i();
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final String g() throws RemoteException {
        return this.f10981o.j();
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void g7(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        this.f10981o.t(iObjectWrapper != null ? (Activity) ObjectWrapper.t1(iObjectWrapper) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void h1(Bundle bundle) throws RemoteException {
        this.f10981o.s(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void i0(Bundle bundle) throws RemoteException {
        this.f10981o.r(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void m0(String str) throws RemoteException {
        this.f10981o.a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void n0(Bundle bundle) throws RemoteException {
        this.f10981o.o(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final Map n9(String str, String str2, boolean z10) throws RemoteException {
        return this.f10981o.m(str, str2, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final void s0(String str) throws RemoteException {
        this.f10981o.c(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfz
    public final int u(String str) throws RemoteException {
        return this.f10981o.l(str);
    }
}
