package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.internal.base.zaq;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
public class GoogleApiManager implements Handler.Callback {
    public static final Status F = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status G = new Status(4, "The user must be signed in to make this API call.");
    private static final Object H = new Object();

    @GuardedBy("lock")
    private static GoogleApiManager I;

    @NotOnlyInitialized
    private final Handler D;
    private volatile boolean E;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private TelemetryData f7021s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TelemetryLoggingClient f7022t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Context f7023u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final GoogleApiAvailability f7024v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final com.google.android.gms.common.internal.zal f7025w;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f7017o = 5000;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f7018p = 120000;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f7019q = 10000;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f7020r = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final AtomicInteger f7026x = new AtomicInteger(1);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final AtomicInteger f7027y = new AtomicInteger(0);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Map<ApiKey<?>, zabq<?>> f7028z = new ConcurrentHashMap(5, 0.75f, 1);

    @GuardedBy("lock")
    private zaae A = null;

    @GuardedBy("lock")
    private final Set<ApiKey<?>> B = new o.b();
    private final Set<ApiKey<?>> C = new o.b();

    @KeepForSdk
    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.E = true;
        this.f7023u = context;
        zaq zaqVar = new zaq(looper, this);
        this.D = zaqVar;
        this.f7024v = googleApiAvailability;
        this.f7025w = new com.google.android.gms.common.internal.zal(googleApiAvailability);
        if (DeviceProperties.a(context)) {
            this.E = false;
        }
        zaqVar.sendMessage(zaqVar.obtainMessage(6));
    }

    @KeepForSdk
    public static void a() {
        synchronized (H) {
            GoogleApiManager googleApiManager = I;
            if (googleApiManager != null) {
                googleApiManager.f7027y.incrementAndGet();
                Handler handler = googleApiManager.D;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status i(ApiKey<?> apiKey, ConnectionResult connectionResult) {
        String strB = apiKey.b();
        String strValueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(strB).length() + 63 + strValueOf.length());
        sb.append("API: ");
        sb.append(strB);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(strValueOf);
        return new Status(connectionResult, sb.toString());
    }

    private final zabq<?> j(GoogleApi<?> googleApi) {
        Object objP = googleApi.p();
        zabq<?> zabqVar = this.f7028z.get(objP);
        if (zabqVar == null) {
            zabqVar = new zabq<>(this, googleApi);
            this.f7028z.put((ApiKey<?>) objP, zabqVar);
        }
        if (zabqVar.M()) {
            this.C.add((ApiKey<?>) objP);
        }
        zabqVar.B();
        return zabqVar;
    }

    private final TelemetryLoggingClient k() {
        if (this.f7022t == null) {
            this.f7022t = TelemetryLogging.a(this.f7023u);
        }
        return this.f7022t;
    }

    private final void l() {
        TelemetryData telemetryData = this.f7021s;
        if (telemetryData != null) {
            if (telemetryData.V3() > 0 || g()) {
                k().c(telemetryData);
            }
            this.f7021s = null;
        }
    }

    private final <T> void m(TaskCompletionSource<T> taskCompletionSource, int i10, GoogleApi googleApi) {
        b0 b0VarB;
        if (i10 == 0 || (b0VarB = b0.b(this, i10, googleApi.p())) == null) {
            return;
        }
        Task<T> taskA = taskCompletionSource.a();
        final Handler handler = this.D;
        handler.getClass();
        taskA.d(new Executor() { // from class: com.google.android.gms.common.api.internal.zabk
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, b0VarB);
    }

    public static GoogleApiManager y(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (H) {
            if (I == null) {
                I = new GoogleApiManager(context.getApplicationContext(), GmsClientSupervisor.c().getLooper(), GoogleApiAvailability.p());
            }
            googleApiManager = I;
        }
        return googleApiManager;
    }

    public final <O extends Api.ApiOptions> Task<Boolean> A(GoogleApi<O> googleApi, ListenerHolder.ListenerKey listenerKey, int i10) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m(taskCompletionSource, i10, googleApi);
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = this.D;
        handler.sendMessage(handler.obtainMessage(13, new zach(zahVar, this.f7027y.get(), googleApi)));
        return taskCompletionSource.a();
    }

    public final <O extends Api.ApiOptions> void F(GoogleApi<O> googleApi, int i10, BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zae zaeVar = new zae(i10, apiMethodImpl);
        Handler handler = this.D;
        handler.sendMessage(handler.obtainMessage(4, new zach(zaeVar, this.f7027y.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions, ResultT> void G(GoogleApi<O> googleApi, int i10, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        m(taskCompletionSource, taskApiCall.d(), googleApi);
        zag zagVar = new zag(i10, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.D;
        handler.sendMessage(handler.obtainMessage(4, new zach(zagVar, this.f7027y.get(), googleApi)));
    }

    final void H(MethodInvocation methodInvocation, int i10, long j10, int i11) {
        Handler handler = this.D;
        handler.sendMessage(handler.obtainMessage(18, new c0(methodInvocation, i10, j10, i11)));
    }

    public final void I(ConnectionResult connectionResult, int i10) {
        if (h(connectionResult, i10)) {
            return;
        }
        Handler handler = this.D;
        handler.sendMessage(handler.obtainMessage(5, i10, 0, connectionResult));
    }

    public final void b() {
        Handler handler = this.D;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void c(GoogleApi<?> googleApi) {
        Handler handler = this.D;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    public final void d(zaae zaaeVar) {
        synchronized (H) {
            if (this.A != zaaeVar) {
                this.A = zaaeVar;
                this.B.clear();
            }
            this.B.addAll(zaaeVar.t());
        }
    }

    final void e(zaae zaaeVar) {
        synchronized (H) {
            if (this.A == zaaeVar) {
                this.A = null;
                this.B.clear();
            }
        }
    }

    final boolean g() {
        if (this.f7020r) {
            return false;
        }
        RootTelemetryConfiguration rootTelemetryConfigurationA = RootTelemetryConfigManager.b().a();
        if (rootTelemetryConfigurationA != null && !rootTelemetryConfigurationA.X3()) {
            return false;
        }
        int iA = this.f7025w.a(this.f7023u, 203400000);
        return iA == -1 || iA == 0;
    }

    final boolean h(ConnectionResult connectionResult, int i10) {
        return this.f7024v.z(this.f7023u, connectionResult, i10);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        zabq<?> zabqVar = null;
        switch (i10) {
            case 1:
                this.f7019q = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.D.removeMessages(12);
                for (ApiKey<?> apiKey : this.f7028z.keySet()) {
                    Handler handler = this.D;
                    handler.sendMessageDelayed(handler.obtainMessage(12, apiKey), this.f7019q);
                }
                return true;
            case 2:
                zal zalVar = (zal) message.obj;
                Iterator<ApiKey<?>> it = zalVar.a().iterator();
                while (true) {
                    if (it.hasNext()) {
                        ApiKey<?> next = it.next();
                        zabq<?> zabqVar2 = this.f7028z.get(next);
                        if (zabqVar2 == null) {
                            zalVar.b(next, new ConnectionResult(13), null);
                        } else if (zabqVar2.L()) {
                            zalVar.b(next, ConnectionResult.f6898s, zabqVar2.s().g());
                        } else {
                            ConnectionResult connectionResultQ = zabqVar2.q();
                            if (connectionResultQ != null) {
                                zalVar.b(next, connectionResultQ, null);
                            } else {
                                zabqVar2.G(zalVar);
                                zabqVar2.B();
                            }
                        }
                    }
                }
                return true;
            case 3:
                for (zabq<?> zabqVar3 : this.f7028z.values()) {
                    zabqVar3.A();
                    zabqVar3.B();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zach zachVar = (zach) message.obj;
                zabq<?> zabqVarJ = this.f7028z.get(zachVar.f7242c.p());
                if (zabqVarJ == null) {
                    zabqVarJ = j(zachVar.f7242c);
                }
                if (!zabqVarJ.M() || this.f7027y.get() == zachVar.f7241b) {
                    zabqVarJ.C(zachVar.f7240a);
                } else {
                    zachVar.f7240a.a(F);
                    zabqVarJ.I();
                }
                return true;
            case 5:
                int i11 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<zabq<?>> it2 = this.f7028z.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zabq<?> next2 = it2.next();
                        if (next2.o() == i11) {
                            zabqVar = next2;
                        }
                    }
                }
                if (zabqVar == null) {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i11);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                } else if (connectionResult.V3() == 13) {
                    String strG = this.f7024v.g(connectionResult.V3());
                    String strW3 = connectionResult.W3();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strG).length() + 69 + String.valueOf(strW3).length());
                    sb2.append("Error resolution was canceled by the user, original error message: ");
                    sb2.append(strG);
                    sb2.append(": ");
                    sb2.append(strW3);
                    zabqVar.d(new Status(17, sb2.toString()));
                } else {
                    zabqVar.d(i(((zabq) zabqVar).f7221q, connectionResult));
                }
                return true;
            case 6:
                if (this.f7023u.getApplicationContext() instanceof Application) {
                    BackgroundDetector.c((Application) this.f7023u.getApplicationContext());
                    BackgroundDetector.b().a(new t(this));
                    if (!BackgroundDetector.b().e(true)) {
                        this.f7019q = 300000L;
                    }
                }
                return true;
            case 7:
                j((GoogleApi) message.obj);
                return true;
            case 9:
                if (this.f7028z.containsKey(message.obj)) {
                    this.f7028z.get(message.obj).H();
                }
                return true;
            case 10:
                Iterator<ApiKey<?>> it3 = this.C.iterator();
                while (it3.hasNext()) {
                    zabq<?> zabqVarRemove = this.f7028z.remove(it3.next());
                    if (zabqVarRemove != null) {
                        zabqVarRemove.I();
                    }
                }
                this.C.clear();
                return true;
            case 11:
                if (this.f7028z.containsKey(message.obj)) {
                    this.f7028z.get(message.obj).J();
                }
                return true;
            case 12:
                if (this.f7028z.containsKey(message.obj)) {
                    this.f7028z.get(message.obj).a();
                }
                return true;
            case 14:
                d dVar = (d) message.obj;
                ApiKey<?> apiKeyA = dVar.a();
                if (this.f7028z.containsKey(apiKeyA)) {
                    dVar.b().c(Boolean.valueOf(this.f7028z.get(apiKeyA).n(false)));
                } else {
                    dVar.b().c(Boolean.FALSE);
                }
                return true;
            case 15:
                y yVar = (y) message.obj;
                if (this.f7028z.containsKey(yVar.f7152a)) {
                    zabq.y(this.f7028z.get(yVar.f7152a), yVar);
                }
                return true;
            case 16:
                y yVar2 = (y) message.obj;
                if (this.f7028z.containsKey(yVar2.f7152a)) {
                    zabq.z(this.f7028z.get(yVar2.f7152a), yVar2);
                }
                return true;
            case 17:
                l();
                return true;
            case 18:
                c0 c0Var = (c0) message.obj;
                if (c0Var.f7093c == 0) {
                    k().c(new TelemetryData(c0Var.f7092b, Arrays.asList(c0Var.f7091a)));
                } else {
                    TelemetryData telemetryData = this.f7021s;
                    if (telemetryData != null) {
                        List<MethodInvocation> listW3 = telemetryData.W3();
                        if (telemetryData.V3() != c0Var.f7092b || (listW3 != null && listW3.size() >= c0Var.f7094d)) {
                            this.D.removeMessages(17);
                            l();
                        } else {
                            this.f7021s.X3(c0Var.f7091a);
                        }
                    }
                    if (this.f7021s == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(c0Var.f7091a);
                        this.f7021s = new TelemetryData(c0Var.f7092b, arrayList);
                        Handler handler2 = this.D;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), c0Var.f7093c);
                    }
                }
                return true;
            case 19:
                this.f7020r = false;
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i10);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }

    public final int n() {
        return this.f7026x.getAndIncrement();
    }

    final zabq x(ApiKey<?> apiKey) {
        return this.f7028z.get(apiKey);
    }
}
