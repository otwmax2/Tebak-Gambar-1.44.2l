package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class b0<T> implements OnCompleteListener<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GoogleApiManager f7084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ApiKey<?> f7086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f7087d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f7088e;

    @VisibleForTesting
    b0(GoogleApiManager googleApiManager, int i10, ApiKey<?> apiKey, long j10, long j11, String str, String str2) {
        this.f7084a = googleApiManager;
        this.f7085b = i10;
        this.f7086c = apiKey;
        this.f7087d = j10;
        this.f7088e = j11;
    }

    static <T> b0<T> b(GoogleApiManager googleApiManager, int i10, ApiKey<?> apiKey) {
        boolean zY3;
        if (!googleApiManager.g()) {
            return null;
        }
        RootTelemetryConfiguration rootTelemetryConfigurationA = RootTelemetryConfigManager.b().a();
        if (rootTelemetryConfigurationA == null) {
            zY3 = true;
        } else {
            if (!rootTelemetryConfigurationA.X3()) {
                return null;
            }
            zY3 = rootTelemetryConfigurationA.Y3();
            zabq zabqVarX = googleApiManager.x(apiKey);
            if (zabqVarX != null) {
                if (!(zabqVarX.s() instanceof BaseGmsClient)) {
                    return null;
                }
                BaseGmsClient baseGmsClient = (BaseGmsClient) zabqVarX.s();
                if (baseGmsClient.O() && !baseGmsClient.f()) {
                    ConnectionTelemetryConfiguration connectionTelemetryConfigurationC = c(zabqVarX, baseGmsClient, i10);
                    if (connectionTelemetryConfigurationC == null) {
                        return null;
                    }
                    zabqVarX.D();
                    zY3 = connectionTelemetryConfigurationC.Z3();
                }
            }
        }
        return new b0<>(googleApiManager, i10, apiKey, zY3 ? System.currentTimeMillis() : 0L, zY3 ? SystemClock.elapsedRealtime() : 0L, null, null);
    }

    private static ConnectionTelemetryConfiguration c(zabq<?> zabqVar, BaseGmsClient<?> baseGmsClient, int i10) {
        int[] iArrW3;
        int[] iArrX3;
        ConnectionTelemetryConfiguration connectionTelemetryConfigurationM = baseGmsClient.M();
        if (connectionTelemetryConfigurationM == null || !connectionTelemetryConfigurationM.Y3() || ((iArrW3 = connectionTelemetryConfigurationM.W3()) != null ? !ArrayUtils.b(iArrW3, i10) : !((iArrX3 = connectionTelemetryConfigurationM.X3()) == null || !ArrayUtils.b(iArrX3, i10))) || zabqVar.p() >= connectionTelemetryConfigurationM.V3()) {
            return null;
        }
        return connectionTelemetryConfigurationM;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void a(Task<T> task) {
        zabq zabqVarX;
        int iZ3;
        int i10;
        int i11;
        int i12;
        int iV3;
        long j10;
        long jCurrentTimeMillis;
        int iElapsedRealtime;
        if (this.f7084a.g()) {
            RootTelemetryConfiguration rootTelemetryConfigurationA = RootTelemetryConfigManager.b().a();
            if ((rootTelemetryConfigurationA == null || rootTelemetryConfigurationA.X3()) && (zabqVarX = this.f7084a.x(this.f7086c)) != null && (zabqVarX.s() instanceof BaseGmsClient)) {
                BaseGmsClient baseGmsClient = (BaseGmsClient) zabqVarX.s();
                boolean zY3 = this.f7087d > 0;
                int iE = baseGmsClient.E();
                if (rootTelemetryConfigurationA != null) {
                    zY3 &= rootTelemetryConfigurationA.Y3();
                    int iV32 = rootTelemetryConfigurationA.V3();
                    int iW3 = rootTelemetryConfigurationA.W3();
                    iZ3 = rootTelemetryConfigurationA.Z3();
                    if (baseGmsClient.O() && !baseGmsClient.f()) {
                        ConnectionTelemetryConfiguration connectionTelemetryConfigurationC = c(zabqVarX, baseGmsClient, this.f7085b);
                        if (connectionTelemetryConfigurationC == null) {
                            return;
                        }
                        boolean z10 = connectionTelemetryConfigurationC.Z3() && this.f7087d > 0;
                        iW3 = connectionTelemetryConfigurationC.V3();
                        zY3 = z10;
                    }
                    i10 = iV32;
                    i11 = iW3;
                } else {
                    iZ3 = 0;
                    i10 = 5000;
                    i11 = 100;
                }
                GoogleApiManager googleApiManager = this.f7084a;
                if (task.t()) {
                    i12 = 0;
                    iV3 = 0;
                } else {
                    if (task.r()) {
                        i12 = 100;
                    } else {
                        Exception excO = task.o();
                        if (excO instanceof ApiException) {
                            Status statusA = ((ApiException) excO).a();
                            int iX3 = statusA.X3();
                            ConnectionResult connectionResultV3 = statusA.V3();
                            iV3 = connectionResultV3 == null ? -1 : connectionResultV3.V3();
                            i12 = iX3;
                        } else {
                            i12 = 101;
                        }
                    }
                    iV3 = -1;
                }
                if (zY3) {
                    long j11 = this.f7087d;
                    jCurrentTimeMillis = System.currentTimeMillis();
                    j10 = j11;
                    iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f7088e);
                } else {
                    j10 = 0;
                    jCurrentTimeMillis = 0;
                    iElapsedRealtime = -1;
                }
                googleApiManager.H(new MethodInvocation(this.f7085b, i12, iV3, j10, jCurrentTimeMillis, null, null, iE, iElapsedRealtime), iZ3, i10, i11);
            }
        }
    }
}
