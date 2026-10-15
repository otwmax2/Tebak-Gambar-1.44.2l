package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzca extends zzbm implements zzcc {
    zzca(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void beginAdUnitExposure(String str, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeLong(j10);
        t1(23, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzbo.e(parcelP0, bundle);
        t1(9, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void clearMeasurementEnabled(long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeLong(j10);
        t1(43, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void endAdUnitExposure(String str, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeLong(j10);
        t1(24, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void generateEventId(zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzcfVar);
        t1(22, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getAppInstanceId(zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzcfVar);
        t1(20, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getCachedAppInstanceId(zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzcfVar);
        t1(19, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getConditionalUserProperties(String str, String str2, zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzbo.f(parcelP0, zzcfVar);
        t1(10, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getCurrentScreenClass(zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzcfVar);
        t1(17, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getCurrentScreenName(zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzcfVar);
        t1(16, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getGmpAppId(zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzcfVar);
        t1(21, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getMaxUserProperties(String str, zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzbo.f(parcelP0, zzcfVar);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getTestFlag(zzcf zzcfVar, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzcfVar);
        parcelP0.writeInt(i10);
        t1(38, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getUserProperties(String str, String str2, boolean z10, zzcf zzcfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzbo.d(parcelP0, z10);
        zzbo.f(parcelP0, zzcfVar);
        t1(5, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void initialize(IObjectWrapper iObjectWrapper, zzcl zzclVar, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        zzbo.e(parcelP0, zzclVar);
        parcelP0.writeLong(j10);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzbo.e(parcelP0, bundle);
        zzbo.d(parcelP0, z10);
        zzbo.d(parcelP0, z11);
        parcelP0.writeLong(j10);
        t1(2, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void logHealthData(int i10, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(5);
        parcelP0.writeString(str);
        zzbo.f(parcelP0, iObjectWrapper);
        zzbo.f(parcelP0, iObjectWrapper2);
        zzbo.f(parcelP0, iObjectWrapper3);
        t1(33, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        zzbo.e(parcelP0, bundle);
        parcelP0.writeLong(j10);
        t1(27, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        parcelP0.writeLong(j10);
        t1(28, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        parcelP0.writeLong(j10);
        t1(29, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        parcelP0.writeLong(j10);
        t1(30, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzcf zzcfVar, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        zzbo.f(parcelP0, zzcfVar);
        parcelP0.writeLong(j10);
        t1(31, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        parcelP0.writeLong(j10);
        t1(25, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        parcelP0.writeLong(j10);
        t1(26, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void performAction(Bundle bundle, zzcf zzcfVar, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.e(parcelP0, bundle);
        zzbo.f(parcelP0, zzcfVar);
        parcelP0.writeLong(j10);
        t1(32, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void registerOnMeasurementEventListener(zzci zzciVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzciVar);
        t1(35, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void resetAnalyticsData(long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeLong(j10);
        t1(12, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setConditionalUserProperty(Bundle bundle, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.e(parcelP0, bundle);
        parcelP0.writeLong(j10);
        t1(8, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setConsent(Bundle bundle, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.e(parcelP0, bundle);
        parcelP0.writeLong(j10);
        t1(44, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setConsentThirdParty(Bundle bundle, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.e(parcelP0, bundle);
        parcelP0.writeLong(j10);
        t1(45, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, iObjectWrapper);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        parcelP0.writeLong(j10);
        t1(15, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setDataCollectionEnabled(boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.d(parcelP0, z10);
        t1(39, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.e(parcelP0, bundle);
        t1(42, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setEventInterceptor(zzci zzciVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzciVar);
        t1(34, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setMeasurementEnabled(boolean z10, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.d(parcelP0, z10);
        parcelP0.writeLong(j10);
        t1(11, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setSessionTimeoutDuration(long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeLong(j10);
        t1(14, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setUserId(String str, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeLong(j10);
        t1(7, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z10, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzbo.f(parcelP0, iObjectWrapper);
        zzbo.d(parcelP0, z10);
        parcelP0.writeLong(j10);
        t1(4, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void unregisterOnMeasurementEventListener(zzci zzciVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.f(parcelP0, zzciVar);
        t1(36, parcelP0);
    }
}
