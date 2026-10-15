package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zaq;
import com.google.android.gms.signin.SignInOptions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class a implements zaca {
    private final Lock A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f7064o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zabe f7065p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Looper f7066q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zabi f7067r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zabi f7068s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Map<Api.AnyClientKey<?>, zabi> f7069t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Api.Client f7071v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Bundle f7072w;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Set<SignInConnectionListener> f7070u = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ConnectionResult f7073x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ConnectionResult f7074y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f7075z = false;

    @GuardedBy("mLock")
    private int B = 0;

    private a(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zat> arrayList, ArrayList<zat> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.f7064o = context;
        this.f7065p = zabeVar;
        this.A = lock;
        this.f7066q = looper;
        this.f7071v = client;
        this.f7067r = new zabi(context, zabeVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new r0(this, null));
        this.f7068s = new zabi(context, zabeVar, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new s0(this, null));
        o.a aVar = new o.a();
        Iterator<Api.AnyClientKey<?>> it = map2.keySet().iterator();
        while (it.hasNext()) {
            aVar.put(it.next(), this.f7067r);
        }
        Iterator<Api.AnyClientKey<?>> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            aVar.put(it2.next(), this.f7068s);
        }
        this.f7069t = Collections.unmodifiableMap(aVar);
    }

    private final PendingIntent B() {
        if (this.f7071v == null) {
            return null;
        }
        return com.google.android.gms.internal.base.zal.a(this.f7064o, System.identityHashCode(this.f7065p), this.f7071v.s(), com.google.android.gms.internal.base.zal.f21666a | 134217728);
    }

    @GuardedBy("mLock")
    private final void i(ConnectionResult connectionResult) {
        int i10 = this.B;
        if (i10 == 1) {
            j();
        } else if (i10 != 2) {
            Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
        } else {
            this.f7065p.c(connectionResult);
            j();
        }
        this.B = 0;
    }

    @GuardedBy("mLock")
    private final void j() {
        Iterator<SignInConnectionListener> it = this.f7070u.iterator();
        while (it.hasNext()) {
            it.next().onComplete();
        }
        this.f7070u.clear();
    }

    @GuardedBy("mLock")
    private final boolean k() {
        ConnectionResult connectionResult = this.f7074y;
        return connectionResult != null && connectionResult.V3() == 4;
    }

    private final boolean l(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        zabi zabiVar = this.f7069t.get(apiMethodImpl.u());
        Preconditions.l(zabiVar, "GoogleApiClient is not configured to use the API required for this call.");
        return zabiVar.equals(this.f7068s);
    }

    private static boolean m(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.Z3();
    }

    public static a o(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, ArrayList<zat> arrayList) {
        o.a aVar = new o.a();
        o.a aVar2 = new o.a();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (true == value.b()) {
                client = value;
            }
            if (value.t()) {
                aVar.put(entry.getKey(), value);
            } else {
                aVar2.put(entry.getKey(), value);
            }
        }
        Preconditions.o(!aVar.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        o.a aVar3 = new o.a();
        o.a aVar4 = new o.a();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> anyClientKeyB = api.b();
            if (aVar.containsKey(anyClientKeyB)) {
                aVar3.put(api, map2.get(api));
            } else {
                if (!aVar2.containsKey(anyClientKeyB)) {
                    throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
                }
                aVar4.put(api, map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zat zatVar = arrayList.get(i10);
            if (aVar3.containsKey(zatVar.f7284o)) {
                arrayList2.add(zatVar);
            } else {
                if (!aVar4.containsKey(zatVar.f7284o)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
                }
                arrayList3.add(zatVar);
            }
        }
        return new a(context, zabeVar, lock, looper, googleApiAvailabilityLight, aVar, aVar2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, aVar3, aVar4);
    }

    static /* bridge */ /* synthetic */ void v(a aVar, int i10, boolean z10) {
        aVar.f7065p.b(i10, z10);
        aVar.f7074y = null;
        aVar.f7073x = null;
    }

    static /* bridge */ /* synthetic */ void w(a aVar, Bundle bundle) {
        Bundle bundle2 = aVar.f7072w;
        if (bundle2 == null) {
            aVar.f7072w = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    static /* bridge */ /* synthetic */ void x(a aVar) {
        ConnectionResult connectionResult;
        if (!m(aVar.f7073x)) {
            if (aVar.f7073x != null && m(aVar.f7074y)) {
                aVar.f7068s.f();
                aVar.i((ConnectionResult) Preconditions.k(aVar.f7073x));
                return;
            }
            ConnectionResult connectionResult2 = aVar.f7073x;
            if (connectionResult2 == null || (connectionResult = aVar.f7074y) == null) {
                return;
            }
            if (aVar.f7068s.A < aVar.f7067r.A) {
                connectionResult2 = connectionResult;
            }
            aVar.i(connectionResult2);
            return;
        }
        if (m(aVar.f7074y) || aVar.k()) {
            int i10 = aVar.B;
            if (i10 == 1) {
                aVar.j();
            } else if (i10 != 2) {
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
            } else {
                ((zabe) Preconditions.k(aVar.f7065p)).a(aVar.f7072w);
                aVar.j();
            }
            aVar.B = 0;
            return;
        }
        ConnectionResult connectionResult3 = aVar.f7074y;
        if (connectionResult3 != null) {
            if (aVar.B == 1) {
                aVar.j();
            } else {
                aVar.i(connectionResult3);
                aVar.f7067r.f();
            }
        }
    }

    public final boolean A() {
        this.A.lock();
        try {
            return this.B == 2;
        } finally {
            this.A.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void a() {
        this.B = 2;
        this.f7075z = false;
        this.f7074y = null;
        this.f7073x = null;
        this.f7067r.a();
        this.f7068s.a();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T b(T t10) {
        if (!l(t10)) {
            this.f7067r.b(t10);
            return t10;
        }
        if (k()) {
            t10.a(new Status(4, (String) null, B()));
            return t10;
        }
        this.f7068s.b(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T c(T t10) {
        if (!l(t10)) {
            return (T) this.f7067r.c(t10);
        }
        if (!k()) {
            return (T) this.f7068s.c(t10);
        }
        t10.a(new Status(4, (String) null, B()));
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void d() {
        this.f7067r.d();
        this.f7068s.d();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void e() {
        this.A.lock();
        try {
            boolean zA = A();
            this.f7068s.f();
            this.f7074y = new ConnectionResult(4);
            if (zA) {
                new zaq(this.f7066q).post(new q0(this));
            } else {
                j();
            }
        } finally {
            this.A.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void f() {
        this.f7074y = null;
        this.f7073x = null;
        this.B = 0;
        this.f7067r.f();
        this.f7068s.f();
        j();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean g(SignInConnectionListener signInConnectionListener) {
        this.A.lock();
        try {
            if ((!A() && !z()) || this.f7068s.p()) {
                this.A.unlock();
                return false;
            }
            this.f7070u.add(signInConnectionListener);
            if (this.B == 0) {
                this.B = 1;
            }
            this.f7074y = null;
            this.f7068s.a();
            return true;
        } finally {
            this.A.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(CertificateUtil.DELIMITER);
        this.f7068s.h(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(CertificateUtil.DELIMITER);
        this.f7067r.h(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean z() {
        /*
            r3 = this;
            java.util.concurrent.locks.Lock r0 = r3.A
            r0.lock()
            com.google.android.gms.common.api.internal.zabi r0 = r3.f7067r     // Catch: java.lang.Throwable -> L28
            boolean r0 = r0.p()     // Catch: java.lang.Throwable -> L28
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L22
            com.google.android.gms.common.api.internal.zabi r0 = r3.f7068s     // Catch: java.lang.Throwable -> L28
            boolean r0 = r0.p()     // Catch: java.lang.Throwable -> L28
            if (r0 != 0) goto L21
            boolean r0 = r3.k()     // Catch: java.lang.Throwable -> L28
            if (r0 != 0) goto L21
            int r0 = r3.B     // Catch: java.lang.Throwable -> L28
            if (r0 != r2) goto L22
        L21:
            r1 = 1
        L22:
            java.util.concurrent.locks.Lock r0 = r3.A
            r0.unlock()
            return r1
        L28:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r3.A
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.a.z():boolean");
    }
}
