package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import com.vungle.mediation.BuildConfig;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zabe extends GoogleApiClient implements zabz {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lock f7185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.common.internal.zak f7186c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zaca f7187d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f7188e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f7189f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Looper f7190g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    final Queue<BaseImplementation.ApiMethodImpl<?, ?>> f7191h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile boolean f7192i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final GoogleApiAvailability f7193j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    zabx f7194k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final Map<Api.AnyClientKey<?>, Api.Client> f7195l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Set<Scope> f7196m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final ClientSettings f7197n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Map<Api<?>, Boolean> f7198o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> f7199p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ListenerHolders f7200q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ArrayList<zat> f7201r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Integer f7202s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Set<zada> f7203t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final zadc f7204u;

    public static int o(Iterable<Api.Client> iterable, boolean z10) {
        boolean zT = false;
        boolean zB = false;
        for (Api.Client client : iterable) {
            zT |= client.t();
            zB |= client.b();
        }
        if (zT) {
            return (zB && z10) ? 2 : 1;
        }
        return 3;
    }

    static String q(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    static /* bridge */ /* synthetic */ void r(zabe zabeVar) {
        zabeVar.f7185b.lock();
        try {
            if (zabeVar.f7192i) {
                zabeVar.u();
            }
        } finally {
            zabeVar.f7185b.unlock();
        }
    }

    private final void t(int i10) {
        Integer num = this.f7202s;
        if (num == null) {
            this.f7202s = Integer.valueOf(i10);
        } else if (num.intValue() != i10) {
            String strQ = q(i10);
            String strQ2 = q(this.f7202s.intValue());
            StringBuilder sb = new StringBuilder(strQ.length() + 51 + strQ2.length());
            sb.append("Cannot use sign-in mode: ");
            sb.append(strQ);
            sb.append(". Mode was already set to ");
            sb.append(strQ2);
            throw new IllegalStateException(sb.toString());
        }
        if (this.f7187d != null) {
            return;
        }
        boolean zT = false;
        boolean zB = false;
        for (Api.Client client : this.f7195l.values()) {
            zT |= client.t();
            zB |= client.b();
        }
        int iIntValue = this.f7202s.intValue();
        if (iIntValue == 1) {
            if (!zT) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            }
            if (zB) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
        } else if (iIntValue == 2 && zT) {
            this.f7187d = a.o(this.f7189f, this, this.f7185b, this.f7190g, this.f7193j, this.f7195l, this.f7197n, this.f7198o, this.f7199p, this.f7201r);
            return;
        }
        this.f7187d = new zabi(this.f7189f, this, this.f7185b, this.f7190g, this.f7193j, this.f7195l, this.f7197n, this.f7198o, this.f7199p, this.f7201r, this);
    }

    @GuardedBy("mLock")
    private final void u() {
        this.f7186c.b();
        ((zaca) Preconditions.k(this.f7187d)).a();
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy("mLock")
    public final void a(Bundle bundle) {
        while (!this.f7191h.isEmpty()) {
            h(this.f7191h.remove());
        }
        this.f7186c.d(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy("mLock")
    public final void b(int i10, boolean z10) {
        if (i10 == 1) {
            if (!z10 && !this.f7192i) {
                this.f7192i = true;
                if (this.f7194k == null && !ClientLibraryUtils.a()) {
                    try {
                        this.f7194k = this.f7193j.u(this.f7189f.getApplicationContext(), new q(this));
                    } catch (SecurityException unused) {
                    }
                }
                throw null;
            }
            i10 = 1;
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f7204u.f7265a.toArray(new BasePendingResult[0])) {
            basePendingResult.g(zadc.f7264c);
        }
        this.f7186c.e(i10);
        this.f7186c.a();
        if (i10 == 2) {
            u();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy("mLock")
    public final void c(ConnectionResult connectionResult) {
        if (!this.f7193j.k(this.f7189f, connectionResult.V3())) {
            s();
        }
        if (this.f7192i) {
            return;
        }
        this.f7186c.c(connectionResult);
        this.f7186c.a();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void d() {
        this.f7185b.lock();
        try {
            int i10 = 2;
            boolean z10 = false;
            if (this.f7188e >= 0) {
                Preconditions.o(this.f7202s != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else {
                Integer num = this.f7202s;
                if (num == null) {
                    this.f7202s = Integer.valueOf(o(this.f7195l.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
            }
            int iIntValue = ((Integer) Preconditions.k(this.f7202s)).intValue();
            this.f7185b.lock();
            if (iIntValue != 3 && iIntValue != 1) {
                if (iIntValue != 2) {
                    i10 = iIntValue;
                }
                StringBuilder sb = new StringBuilder(33);
                sb.append("Illegal sign-in mode: ");
                sb.append(i10);
                Preconditions.b(z10, sb.toString());
                t(i10);
                u();
                this.f7185b.unlock();
            }
            i10 = iIntValue;
            z10 = true;
            StringBuilder sb2 = new StringBuilder(33);
            sb2.append("Illegal sign-in mode: ");
            sb2.append(i10);
            Preconditions.b(z10, sb2.toString());
            t(i10);
            u();
            this.f7185b.unlock();
        } catch (Throwable th) {
            throw th;
        } finally {
            this.f7185b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void e() {
        Lock lock;
        this.f7185b.lock();
        try {
            this.f7204u.b();
            zaca zacaVar = this.f7187d;
            if (zacaVar != null) {
                zacaVar.f();
            }
            this.f7200q.a();
            for (BaseImplementation.ApiMethodImpl<?, ?> apiMethodImpl : this.f7191h) {
                apiMethodImpl.r(null);
                apiMethodImpl.e();
            }
            this.f7191h.clear();
            if (this.f7187d == null) {
                lock = this.f7185b;
            } else {
                s();
                this.f7186c.a();
                lock = this.f7185b;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.f7185b.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void f(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f7189f);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f7192i);
        printWriter.append(" mWorkQueue.size()=").print(this.f7191h.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f7204u.f7265a.size());
        zaca zacaVar = this.f7187d;
        if (zacaVar != null) {
            zacaVar.h(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T g(T t10) {
        Lock lock;
        Api<?> apiT = t10.t();
        boolean zContainsKey = this.f7195l.containsKey(t10.u());
        String strD = apiT != null ? apiT.d() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(strD).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(strD);
        sb.append(" required for this call.");
        Preconditions.b(zContainsKey, sb.toString());
        this.f7185b.lock();
        try {
            zaca zacaVar = this.f7187d;
            if (zacaVar == null) {
                this.f7191h.add(t10);
                lock = this.f7185b;
            } else {
                t10 = (T) zacaVar.b(t10);
                lock = this.f7185b;
            }
            lock.unlock();
            return t10;
        } catch (Throwable th) {
            this.f7185b.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T h(T t10) {
        Lock lock;
        Api<?> apiT = t10.t();
        boolean zContainsKey = this.f7195l.containsKey(t10.u());
        String strD = apiT != null ? apiT.d() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(strD).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(strD);
        sb.append(" required for this call.");
        Preconditions.b(zContainsKey, sb.toString());
        this.f7185b.lock();
        try {
            zaca zacaVar = this.f7187d;
            if (zacaVar == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (this.f7192i) {
                this.f7191h.add(t10);
                while (!this.f7191h.isEmpty()) {
                    BaseImplementation.ApiMethodImpl<?, ?> apiMethodImplRemove = this.f7191h.remove();
                    this.f7204u.a(apiMethodImplRemove);
                    apiMethodImplRemove.a(Status.f6975w);
                }
                lock = this.f7185b;
            } else {
                t10 = (T) zacaVar.c(t10);
                lock = this.f7185b;
            }
            lock.unlock();
            return t10;
        } catch (Throwable th) {
            this.f7185b.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper j() {
        return this.f7190g;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean k(SignInConnectionListener signInConnectionListener) {
        zaca zacaVar = this.f7187d;
        return zacaVar != null && zacaVar.g(signInConnectionListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void l() {
        zaca zacaVar = this.f7187d;
        if (zacaVar != null) {
            zacaVar.e();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void m(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f7186c.f(onConnectionFailedListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005d, code lost:
    
        throw r3;
     */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n(com.google.android.gms.common.api.internal.zada r3) {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.f7185b
            r0.lock()
            java.util.Set<com.google.android.gms.common.api.internal.zada> r0 = r2.f7203t     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = "GoogleApiClientImpl"
            if (r0 != 0) goto L16
            java.lang.Exception r3 = new java.lang.Exception     // Catch: java.lang.Throwable -> L57
            r3.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.String r0 = "Attempted to remove pending transform when no transforms are registered."
            android.util.Log.wtf(r1, r0, r3)     // Catch: java.lang.Throwable -> L57
            goto L4a
        L16:
            boolean r3 = r0.remove(r3)     // Catch: java.lang.Throwable -> L57
            if (r3 != 0) goto L27
            java.lang.Exception r3 = new java.lang.Exception     // Catch: java.lang.Throwable -> L57
            r3.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.String r0 = "Failed to remove pending transform - this may lead to memory leaks!"
            android.util.Log.wtf(r1, r0, r3)     // Catch: java.lang.Throwable -> L57
            goto L4a
        L27:
            java.util.concurrent.locks.Lock r3 = r2.f7185b     // Catch: java.lang.Throwable -> L57
            r3.lock()     // Catch: java.lang.Throwable -> L57
            java.util.Set<com.google.android.gms.common.api.internal.zada> r3 = r2.f7203t     // Catch: java.lang.Throwable -> L50
            if (r3 != 0) goto L36
            java.util.concurrent.locks.Lock r3 = r2.f7185b     // Catch: java.lang.Throwable -> L57
            r3.unlock()     // Catch: java.lang.Throwable -> L57
            goto L43
        L36:
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L50
            r3 = r3 ^ 1
            java.util.concurrent.locks.Lock r0 = r2.f7185b     // Catch: java.lang.Throwable -> L57
            r0.unlock()     // Catch: java.lang.Throwable -> L57
            if (r3 != 0) goto L4a
        L43:
            com.google.android.gms.common.api.internal.zaca r3 = r2.f7187d     // Catch: java.lang.Throwable -> L57
            if (r3 == 0) goto L4a
            r3.d()     // Catch: java.lang.Throwable -> L57
        L4a:
            java.util.concurrent.locks.Lock r3 = r2.f7185b
            r3.unlock()
            return
        L50:
            r3 = move-exception
            java.util.concurrent.locks.Lock r0 = r2.f7185b     // Catch: java.lang.Throwable -> L57
            r0.unlock()     // Catch: java.lang.Throwable -> L57
            throw r3     // Catch: java.lang.Throwable -> L57
        L57:
            r3 = move-exception
            java.util.concurrent.locks.Lock r0 = r2.f7185b
            r0.unlock()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zabe.n(com.google.android.gms.common.api.internal.zada):void");
    }

    final String p() {
        StringWriter stringWriter = new StringWriter();
        f(BuildConfig.FLAVOR, null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @GuardedBy("mLock")
    final boolean s() {
        if (!this.f7192i) {
            return false;
        }
        this.f7192i = false;
        throw null;
    }
}
