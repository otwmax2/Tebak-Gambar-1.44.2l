package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
@DynamiteApi
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzcb {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    zzgi f23971o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map f23972p = new o.a();

    private final void X0(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str) {
        zzb();
        this.f23971o.L().H(zzcfVar, str);
    }

    @EnsuresNonNull({"scion"})
    private final void zzb() {
        if (this.f23971o == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void beginAdUnitExposure(String str, long j10) throws RemoteException {
        zzb();
        this.f23971o.u().g(str, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zzb();
        this.f23971o.G().j(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void clearMeasurementEnabled(long j10) throws RemoteException {
        zzb();
        this.f23971o.G().I(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void endAdUnitExposure(String str, long j10) throws RemoteException {
        zzb();
        this.f23971o.u().h(str, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void generateEventId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        long jR0 = this.f23971o.L().r0();
        zzb();
        this.f23971o.L().G(zzcfVar, jR0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.f23971o.B().v(new x0(this, zzcfVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        X0(zzcfVar, this.f23971o.G().X());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.f23971o.B().v(new u3(this, zzcfVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        X0(zzcfVar, this.f23971o.G().Y());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        X0(zzcfVar, this.f23971o.G().Z());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        String strC;
        zzb();
        zzin zzinVarG = this.f23971o.G();
        if (zzinVarG.f24394a.M() != null) {
            strC = zzinVarG.f24394a.M();
        } else {
            try {
                strC = zzit.c(zzinVarG.f24394a.N0(), "google_app_id", zzinVarG.f24394a.P());
            } catch (IllegalStateException e10) {
                zzinVarG.f24394a.U().m().b("getGoogleAppId failed with exception", e10);
                strC = null;
            }
        }
        X0(zzcfVar, strC);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.f23971o.G().R(str);
        zzb();
        this.f23971o.L().F(zzcfVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getTestFlag(com.google.android.gms.internal.measurement.zzcf zzcfVar, int i10) throws RemoteException {
        zzb();
        if (i10 == 0) {
            this.f23971o.L().H(zzcfVar, this.f23971o.G().a0());
            return;
        }
        if (i10 == 1) {
            this.f23971o.L().G(zzcfVar, this.f23971o.G().W().longValue());
            return;
        }
        if (i10 != 2) {
            if (i10 == 3) {
                this.f23971o.L().F(zzcfVar, this.f23971o.G().V().intValue());
                return;
            } else {
                if (i10 != 4) {
                    return;
                }
                this.f23971o.L().A(zzcfVar, this.f23971o.G().S().booleanValue());
                return;
            }
        }
        zzlp zzlpVarL = this.f23971o.L();
        double dDoubleValue = this.f23971o.G().T().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", dDoubleValue);
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            zzlpVarL.f24394a.U().r().b("Error returning double value to wrapper", e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getUserProperties(String str, String str2, boolean z10, com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.f23971o.B().v(new f2(this, zzcfVar, str, str2, z10));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void initForTests(Map map) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzcl zzclVar, long j10) throws RemoteException {
        zzgi zzgiVar = this.f23971o;
        if (zzgiVar == null) {
            this.f23971o = zzgi.F((Context) Preconditions.k((Context) ObjectWrapper.t1(iObjectWrapper)), zzclVar, Long.valueOf(j10));
        } else {
            zzgiVar.U().r().a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.f23971o.B().v(new d4(this, zzcfVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException {
        zzb();
        this.f23971o.G().o(str, str2, bundle, z10, z11, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzcf zzcfVar, long j10) throws RemoteException {
        zzb();
        Preconditions.g(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.f23971o.B().v(new l1(this, zzcfVar, new zzav(str2, new zzat(bundle), "app", j10), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logHealthData(int i10, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        zzb();
        this.f23971o.U().D(i10, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.t1(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.t1(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.t1(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j10) throws RemoteException {
        zzb();
        x1 x1Var = this.f23971o.G().f24766c;
        if (x1Var != null) {
            this.f23971o.G().k();
            x1Var.onActivityCreated((Activity) ObjectWrapper.t1(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zzb();
        x1 x1Var = this.f23971o.G().f24766c;
        if (x1Var != null) {
            this.f23971o.G().k();
            x1Var.onActivityDestroyed((Activity) ObjectWrapper.t1(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zzb();
        x1 x1Var = this.f23971o.G().f24766c;
        if (x1Var != null) {
            this.f23971o.G().k();
            x1Var.onActivityPaused((Activity) ObjectWrapper.t1(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zzb();
        x1 x1Var = this.f23971o.G().f24766c;
        if (x1Var != null) {
            this.f23971o.G().k();
            x1Var.onActivityResumed((Activity) ObjectWrapper.t1(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzcf zzcfVar, long j10) throws RemoteException {
        zzb();
        x1 x1Var = this.f23971o.G().f24766c;
        Bundle bundle = new Bundle();
        if (x1Var != null) {
            this.f23971o.G().k();
            x1Var.onActivitySaveInstanceState((Activity) ObjectWrapper.t1(iObjectWrapper), bundle);
        }
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            this.f23971o.U().r().b("Error returning bundle value to wrapper", e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zzb();
        if (this.f23971o.G().f24766c != null) {
            this.f23971o.G().k();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zzb();
        if (this.f23971o.G().f24766c != null) {
            this.f23971o.G().k();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzcf zzcfVar, long j10) throws RemoteException {
        zzb();
        zzcfVar.X(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzci zzciVar) throws RemoteException {
        zzhj f4Var;
        zzb();
        synchronized (this.f23972p) {
            f4Var = (zzhj) this.f23972p.get(Integer.valueOf(zzciVar.d()));
            if (f4Var == null) {
                f4Var = new f4(this, zzciVar);
                this.f23972p.put(Integer.valueOf(zzciVar.d()), f4Var);
            }
        }
        this.f23971o.G().u(f4Var);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void resetAnalyticsData(long j10) throws RemoteException {
        zzb();
        this.f23971o.G().v(j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConditionalUserProperty(Bundle bundle, long j10) throws RemoteException {
        zzb();
        if (bundle == null) {
            this.f23971o.U().m().a("Conditional user property must not be null");
        } else {
            this.f23971o.G().D(bundle, j10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConsent(Bundle bundle, long j10) throws RemoteException {
        zzb();
        this.f23971o.G().G(bundle, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConsentThirdParty(Bundle bundle, long j10) throws RemoteException {
        zzb();
        this.f23971o.G().E(bundle, -20, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j10) throws RemoteException {
        zzb();
        this.f23971o.I().C((Activity) ObjectWrapper.t1(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setDataCollectionEnabled(boolean z10) throws RemoteException {
        zzb();
        zzin zzinVarG = this.f23971o.G();
        zzinVarG.d();
        zzinVarG.f24394a.B().v(new v1(zzinVarG, z10));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setDefaultEventParameters(Bundle bundle) {
        zzb();
        final zzin zzinVarG = this.f23971o.G();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        zzinVarG.f24394a.B().v(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhn
            @Override // java.lang.Runnable
            public final void run() {
                zzinVarG.m(bundle2);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzci zzciVar) throws RemoteException {
        zzb();
        e4 e4Var = new e4(this, zzciVar);
        if (this.f23971o.B().z()) {
            this.f23971o.G().H(e4Var);
        } else {
            this.f23971o.B().v(new e3(this, e4Var));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzck zzckVar) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setMeasurementEnabled(boolean z10, long j10) throws RemoteException {
        zzb();
        this.f23971o.G().I(Boolean.valueOf(z10));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setMinimumSessionDuration(long j10) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setSessionTimeoutDuration(long j10) throws RemoteException {
        zzb();
        zzin zzinVarG = this.f23971o.G();
        zzinVarG.f24394a.B().v(new d1(zzinVarG, j10));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setUserId(final String str, long j10) throws RemoteException {
        zzb();
        final zzin zzinVarG = this.f23971o.G();
        if (str != null && TextUtils.isEmpty(str)) {
            zzinVarG.f24394a.U().r().a("User ID must be non-empty or null");
        } else {
            zzinVarG.f24394a.B().v(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhp
                @Override // java.lang.Runnable
                public final void run() {
                    zzin zzinVar = zzinVarG;
                    if (zzinVar.f24394a.y().r(str)) {
                        zzinVar.f24394a.y().q();
                    }
                }
            });
            zzinVarG.L(null, "_id", str, true, j10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z10, long j10) throws RemoteException {
        zzb();
        this.f23971o.G().L(str, str2, ObjectWrapper.t1(iObjectWrapper), z10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzci zzciVar) throws RemoteException {
        zzhj f4Var;
        zzb();
        synchronized (this.f23972p) {
            f4Var = (zzhj) this.f23972p.remove(Integer.valueOf(zzciVar.d()));
        }
        if (f4Var == null) {
            f4Var = new f4(this, zzciVar);
        }
        this.f23971o.G().N(f4Var);
    }
}
