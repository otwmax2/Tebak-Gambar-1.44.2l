package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class BaseGmsClient<T extends IInterface> {
    private final Object A;
    private final Object B;

    @GuardedBy("mServiceBrokerLock")
    private IGmsServiceBroker C;

    @VisibleForTesting
    protected ConnectionProgressReportCallbacks D;

    @GuardedBy("mLock")
    private IInterface E;
    private final ArrayList F;

    @GuardedBy("mLock")
    private zze G;

    @GuardedBy("mLock")
    private int H;
    private final BaseConnectionCallbacks I;
    private final BaseOnConnectionFailedListener J;
    private final int K;
    private final String L;
    private volatile String M;
    private ConnectionResult N;
    private boolean O;
    private volatile zzj P;

    @VisibleForTesting
    protected AtomicInteger Q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f7346o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f7347p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f7348q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f7349r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f7350s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private volatile String f7351t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @VisibleForTesting
    zzu f7352u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Context f7353v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Looper f7354w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final GmsClientSupervisor f7355x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final GoogleApiAvailabilityLight f7356y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final Handler f7357z;
    private static final Feature[] S = new Feature[0];

    @KeepForSdk
    public static final String[] R = {"service_esmobile", "service_googleme"};

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    @KeepForSdk
    public interface BaseConnectionCallbacks {
        @KeepForSdk
        void P0(int i10);

        @KeepForSdk
        void t1(Bundle bundle);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    @KeepForSdk
    public interface BaseOnConnectionFailedListener {
        @KeepForSdk
        void X0(ConnectionResult connectionResult);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    @KeepForSdk
    public interface ConnectionProgressReportCallbacks {
        @KeepForSdk
        void a(ConnectionResult connectionResult);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    protected class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        @KeepForSdk
        public LegacyClientCallbackAdapter() {
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public final void a(ConnectionResult connectionResult) {
            if (connectionResult.Z3()) {
                BaseGmsClient baseGmsClient = BaseGmsClient.this;
                baseGmsClient.d(null, baseGmsClient.H());
            } else if (BaseGmsClient.this.J != null) {
                BaseGmsClient.this.J.X0(connectionResult);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    @KeepForSdk
    public interface SignOutCallbacks {
        @KeepForSdk
        void r1();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @KeepForSdk
    protected BaseGmsClient(Context context, Looper looper, int i10, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        GmsClientSupervisor gmsClientSupervisorB = GmsClientSupervisor.b(context);
        GoogleApiAvailabilityLight googleApiAvailabilityLightH = GoogleApiAvailabilityLight.h();
        Preconditions.k(baseConnectionCallbacks);
        Preconditions.k(baseOnConnectionFailedListener);
        this(context, looper, gmsClientSupervisorB, googleApiAvailabilityLightH, i10, baseConnectionCallbacks, baseOnConnectionFailedListener, str);
    }

    static /* bridge */ /* synthetic */ void h0(BaseGmsClient baseGmsClient, zzj zzjVar) {
        baseGmsClient.P = zzjVar;
        if (baseGmsClient.X()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.f7521r;
            RootTelemetryConfigManager.b().c(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.a4());
        }
    }

    static /* bridge */ /* synthetic */ void i0(BaseGmsClient baseGmsClient, int i10) {
        int i11;
        int i12;
        synchronized (baseGmsClient.A) {
            i11 = baseGmsClient.H;
        }
        if (i11 == 3) {
            baseGmsClient.O = true;
            i12 = 5;
        } else {
            i12 = 4;
        }
        Handler handler = baseGmsClient.f7357z;
        handler.sendMessage(handler.obtainMessage(i12, baseGmsClient.Q.get(), 16));
    }

    static /* bridge */ /* synthetic */ boolean l0(BaseGmsClient baseGmsClient, int i10, int i11, IInterface iInterface) {
        synchronized (baseGmsClient.A) {
            if (baseGmsClient.H != i10) {
                return false;
            }
            baseGmsClient.n0(i11, iInterface);
            return true;
        }
    }

    static /* bridge */ /* synthetic */ boolean m0(BaseGmsClient baseGmsClient) {
        if (baseGmsClient.O || TextUtils.isEmpty(baseGmsClient.J()) || TextUtils.isEmpty(baseGmsClient.G())) {
            return false;
        }
        try {
            Class.forName(baseGmsClient.J());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(int i10, IInterface iInterface) {
        zzu zzuVar;
        Preconditions.a((i10 == 4) == (iInterface != null));
        synchronized (this.A) {
            this.H = i10;
            this.E = iInterface;
            if (i10 == 1) {
                zze zzeVar = this.G;
                if (zzeVar != null) {
                    GmsClientSupervisor gmsClientSupervisor = this.f7355x;
                    String strC = this.f7352u.c();
                    Preconditions.k(strC);
                    gmsClientSupervisor.e(strC, this.f7352u.b(), this.f7352u.a(), zzeVar, c0(), this.f7352u.d());
                    this.G = null;
                }
            } else if (i10 == 2 || i10 == 3) {
                zze zzeVar2 = this.G;
                if (zzeVar2 != null && (zzuVar = this.f7352u) != null) {
                    Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + zzuVar.c() + " on " + zzuVar.b());
                    GmsClientSupervisor gmsClientSupervisor2 = this.f7355x;
                    String strC2 = this.f7352u.c();
                    Preconditions.k(strC2);
                    gmsClientSupervisor2.e(strC2, this.f7352u.b(), this.f7352u.a(), zzeVar2, c0(), this.f7352u.d());
                    this.Q.incrementAndGet();
                }
                zze zzeVar3 = new zze(this, this.Q.get());
                this.G = zzeVar3;
                zzu zzuVar2 = (this.H != 3 || G() == null) ? new zzu(L(), K(), false, GmsClientSupervisor.a(), N()) : new zzu(D().getPackageName(), G(), true, GmsClientSupervisor.a(), false);
                this.f7352u = zzuVar2;
                if (zzuVar2.d() && n() < 17895000) {
                    throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.f7352u.c())));
                }
                GmsClientSupervisor gmsClientSupervisor3 = this.f7355x;
                String strC3 = this.f7352u.c();
                Preconditions.k(strC3);
                if (!gmsClientSupervisor3.f(new zzn(strC3, this.f7352u.b(), this.f7352u.a(), this.f7352u.d()), zzeVar3, c0(), B())) {
                    Log.w("GmsClient", "unable to connect to service: " + this.f7352u.c() + " on " + this.f7352u.b());
                    j0(16, null, this.Q.get());
                }
            } else if (i10 == 4) {
                Preconditions.k(iInterface);
                P(iInterface);
            }
        }
    }

    @KeepForSdk
    public Feature[] A() {
        return S;
    }

    @KeepForSdk
    protected Executor B() {
        return null;
    }

    @KeepForSdk
    public Bundle C() {
        return null;
    }

    @KeepForSdk
    public final Context D() {
        return this.f7353v;
    }

    @KeepForSdk
    public int E() {
        return this.K;
    }

    @KeepForSdk
    protected Bundle F() {
        return new Bundle();
    }

    @KeepForSdk
    protected String G() {
        return null;
    }

    @KeepForSdk
    protected Set<Scope> H() {
        return Collections.emptySet();
    }

    @KeepForSdk
    public final T I() throws DeadObjectException {
        T t10;
        synchronized (this.A) {
            if (this.H == 5) {
                throw new DeadObjectException();
            }
            w();
            t10 = (T) this.E;
            Preconditions.l(t10, "Client is connected but service is null");
        }
        return t10;
    }

    @KeepForSdk
    protected abstract String J();

    @KeepForSdk
    protected abstract String K();

    @KeepForSdk
    protected String L() {
        return "com.google.android.gms";
    }

    @KeepForSdk
    public ConnectionTelemetryConfiguration M() {
        zzj zzjVar = this.P;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.f7521r;
    }

    @KeepForSdk
    protected boolean N() {
        return n() >= 211700000;
    }

    @KeepForSdk
    public boolean O() {
        return this.P != null;
    }

    @KeepForSdk
    protected void P(T t10) {
        this.f7348q = System.currentTimeMillis();
    }

    @KeepForSdk
    protected void Q(ConnectionResult connectionResult) {
        this.f7349r = connectionResult.V3();
        this.f7350s = System.currentTimeMillis();
    }

    @KeepForSdk
    protected void R(int i10) {
        this.f7346o = i10;
        this.f7347p = System.currentTimeMillis();
    }

    @KeepForSdk
    protected void S(int i10, IBinder iBinder, Bundle bundle, int i11) {
        Handler handler = this.f7357z;
        handler.sendMessage(handler.obtainMessage(1, i11, -1, new zzf(this, i10, iBinder, bundle)));
    }

    @KeepForSdk
    public boolean T() {
        return false;
    }

    @KeepForSdk
    public void U(String str) {
        this.M = str;
    }

    @KeepForSdk
    public void V(int i10) {
        Handler handler = this.f7357z;
        handler.sendMessage(handler.obtainMessage(6, this.Q.get(), i10));
    }

    @VisibleForTesting
    @KeepForSdk
    protected void W(ConnectionProgressReportCallbacks connectionProgressReportCallbacks, int i10, PendingIntent pendingIntent) {
        Preconditions.l(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.D = connectionProgressReportCallbacks;
        Handler handler = this.f7357z;
        handler.sendMessage(handler.obtainMessage(3, this.Q.get(), i10, pendingIntent));
    }

    @KeepForSdk
    public boolean X() {
        return false;
    }

    @KeepForSdk
    public boolean a() {
        boolean z10;
        synchronized (this.A) {
            z10 = this.H == 4;
        }
        return z10;
    }

    @KeepForSdk
    public boolean b() {
        return false;
    }

    protected final String c0() {
        String str = this.L;
        return str == null ? this.f7353v.getClass().getName() : str;
    }

    @KeepForSdk
    public void d(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        Bundle bundleF = F();
        int i10 = this.K;
        String str = this.M;
        int i11 = GoogleApiAvailabilityLight.f6916a;
        Scope[] scopeArr = GetServiceRequest.C;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.D;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i10, i11, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.f7388r = this.f7353v.getPackageName();
        getServiceRequest.f7391u = bundleF;
        if (set != null) {
            getServiceRequest.f7390t = (Scope[]) set.toArray(new Scope[0]);
        }
        if (t()) {
            Account accountZ = z();
            if (accountZ == null) {
                accountZ = new Account("<<default account>>", "com.google");
            }
            getServiceRequest.f7392v = accountZ;
            if (iAccountAccessor != null) {
                getServiceRequest.f7389s = iAccountAccessor.asBinder();
            }
        } else if (T()) {
            getServiceRequest.f7392v = z();
        }
        getServiceRequest.f7393w = S;
        getServiceRequest.f7394x = A();
        if (X()) {
            getServiceRequest.A = true;
        }
        try {
            synchronized (this.B) {
                IGmsServiceBroker iGmsServiceBroker = this.C;
                if (iGmsServiceBroker != null) {
                    iGmsServiceBroker.t3(new zzd(this, this.Q.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e10) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e10);
            V(3);
        } catch (RemoteException e11) {
            e = e11;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            S(8, null, null, this.Q.get());
        } catch (SecurityException e12) {
            throw e12;
        } catch (RuntimeException e13) {
            e = e13;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            S(8, null, null, this.Q.get());
        }
    }

    @KeepForSdk
    public void e(String str) {
        this.f7351t = str;
        i();
    }

    @KeepForSdk
    public boolean f() {
        boolean z10;
        synchronized (this.A) {
            int i10 = this.H;
            z10 = true;
            if (i10 != 2 && i10 != 3) {
                z10 = false;
            }
        }
        return z10;
    }

    @KeepForSdk
    public String g() {
        zzu zzuVar;
        if (!a() || (zzuVar = this.f7352u) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return zzuVar.b();
    }

    @KeepForSdk
    public void h(ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        Preconditions.l(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.D = connectionProgressReportCallbacks;
        n0(2, null);
    }

    @KeepForSdk
    public void i() {
        this.Q.incrementAndGet();
        synchronized (this.F) {
            int size = this.F.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((zzc) this.F.get(i10)).d();
            }
            this.F.clear();
        }
        synchronized (this.B) {
            this.C = null;
        }
        n0(1, null);
    }

    @KeepForSdk
    public void j(SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.r1();
    }

    protected final void j0(int i10, Bundle bundle, int i11) {
        Handler handler = this.f7357z;
        handler.sendMessage(handler.obtainMessage(7, i11, -1, new zzg(this, i10, null)));
    }

    @KeepForSdk
    public void k(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i10;
        IInterface iInterface;
        IGmsServiceBroker iGmsServiceBroker;
        synchronized (this.A) {
            i10 = this.H;
            iInterface = this.E;
        }
        synchronized (this.B) {
            iGmsServiceBroker = this.C;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i10 == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i10 == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i10 == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i10 == 4) {
            printWriter.print("CONNECTED");
        } else if (i10 != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) J()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (iGmsServiceBroker == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f7348q > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j10 = this.f7348q;
            printWriterAppend.println(j10 + " " + simpleDateFormat.format(new Date(j10)));
        }
        if (this.f7347p > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i11 = this.f7346o;
            if (i11 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i11 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i11 != 3) {
                printWriter.append((CharSequence) String.valueOf(i11));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter printWriterAppend2 = printWriter.append(" lastSuspendedTime=");
            long j11 = this.f7347p;
            printWriterAppend2.println(j11 + " " + simpleDateFormat.format(new Date(j11)));
        }
        if (this.f7350s > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.a(this.f7349r));
            PrintWriter printWriterAppend3 = printWriter.append(" lastFailedTime=");
            long j12 = this.f7350s;
            printWriterAppend3.println(j12 + " " + simpleDateFormat.format(new Date(j12)));
        }
    }

    @KeepForSdk
    public boolean l() {
        return true;
    }

    @KeepForSdk
    public int n() {
        return GoogleApiAvailabilityLight.f6916a;
    }

    @KeepForSdk
    public final Feature[] o() {
        zzj zzjVar = this.P;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.f7519p;
    }

    @KeepForSdk
    public String r() {
        return this.f7351t;
    }

    @KeepForSdk
    public Intent s() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @KeepForSdk
    public boolean t() {
        return false;
    }

    @KeepForSdk
    public void v() {
        int iJ = this.f7356y.j(this.f7353v, n());
        if (iJ == 0) {
            h(new LegacyClientCallbackAdapter());
        } else {
            n0(1, null);
            W(new LegacyClientCallbackAdapter(), iJ, null);
        }
    }

    @KeepForSdk
    protected final void w() {
        if (!a()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    @KeepForSdk
    protected abstract T x(IBinder iBinder);

    @KeepForSdk
    protected boolean y() {
        return false;
    }

    @KeepForSdk
    public Account z() {
        return null;
    }

    @VisibleForTesting
    @KeepForSdk
    protected BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i10, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        this.f7351t = null;
        this.A = new Object();
        this.B = new Object();
        this.F = new ArrayList();
        this.H = 1;
        this.N = null;
        this.O = false;
        this.P = null;
        this.Q = new AtomicInteger(0);
        Preconditions.l(context, "Context must not be null");
        this.f7353v = context;
        Preconditions.l(looper, "Looper must not be null");
        this.f7354w = looper;
        Preconditions.l(gmsClientSupervisor, "Supervisor must not be null");
        this.f7355x = gmsClientSupervisor;
        Preconditions.l(googleApiAvailabilityLight, "API availability must not be null");
        this.f7356y = googleApiAvailabilityLight;
        this.f7357z = new j(this, looper);
        this.K = i10;
        this.I = baseConnectionCallbacks;
        this.J = baseOnConnectionFailedListener;
        this.L = str;
    }
}
