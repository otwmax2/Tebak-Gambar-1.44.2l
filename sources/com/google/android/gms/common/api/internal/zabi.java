package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zabi implements zaca, zau {
    int A;
    final zabe B;
    final zabz C;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Lock f7205o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Condition f7206p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Context f7207q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final GoogleApiAvailabilityLight f7208r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final s f7209s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final Map<Api.AnyClientKey<?>, Api.Client> f7210t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final ClientSettings f7212v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final Map<Api<?>, Boolean> f7213w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> f7214x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NotOnlyInitialized
    private volatile zabf f7215y;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final Map<Api.AnyClientKey<?>, ConnectionResult> f7211u = new HashMap();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ConnectionResult f7216z = null;

    public zabi(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, ArrayList<zat> arrayList, zabz zabzVar) {
        this.f7207q = context;
        this.f7205o = lock;
        this.f7208r = googleApiAvailabilityLight;
        this.f7210t = map;
        this.f7212v = clientSettings;
        this.f7213w = map2;
        this.f7214x = abstractClientBuilder;
        this.B = zabeVar;
        this.C = zabzVar;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.get(i10).a(this);
        }
        this.f7209s = new s(this, looper);
        this.f7206p = lock.newCondition();
        this.f7215y = new zaax(this);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void P0(int i10) {
        this.f7205o.lock();
        try {
            this.f7215y.d(i10);
        } finally {
            this.f7205o.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zau
    public final void Q4(ConnectionResult connectionResult, Api<?> api, boolean z10) {
        this.f7205o.lock();
        try {
            this.f7215y.c(connectionResult, api, z10);
        } finally {
            this.f7205o.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void a() {
        this.f7215y.b();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T b(T t10) {
        t10.o();
        this.f7215y.f(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T c(T t10) {
        t10.o();
        return (T) this.f7215y.h(t10);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void d() {
        if (this.f7215y instanceof zaaj) {
            ((zaaj) this.f7215y).j();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void e() {
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void f() {
        if (this.f7215y.g()) {
            this.f7211u.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean g(SignInConnectionListener signInConnectionListener) {
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String strConcat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.f7215y);
        for (Api<?> api : this.f7213w.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.d()).println(CertificateUtil.DELIMITER);
            ((Api.Client) Preconditions.k(this.f7210t.get(api.b()))).k(strConcat, fileDescriptor, printWriter, strArr);
        }
    }

    final void k() {
        this.f7205o.lock();
        try {
            this.B.s();
            this.f7215y = new zaaj(this);
            this.f7215y.e();
            this.f7206p.signalAll();
        } finally {
            this.f7205o.unlock();
        }
    }

    final void l() {
        this.f7205o.lock();
        try {
            this.f7215y = new zaaw(this, this.f7212v, this.f7213w, this.f7208r, this.f7214x, this.f7205o, this.f7207q);
            this.f7215y.e();
            this.f7206p.signalAll();
        } finally {
            this.f7205o.unlock();
        }
    }

    final void m(ConnectionResult connectionResult) {
        this.f7205o.lock();
        try {
            this.f7216z = connectionResult;
            this.f7215y = new zaax(this);
            this.f7215y.e();
            this.f7206p.signalAll();
        } finally {
            this.f7205o.unlock();
        }
    }

    final void n(r rVar) {
        this.f7209s.sendMessage(this.f7209s.obtainMessage(1, rVar));
    }

    final void o(RuntimeException runtimeException) {
        this.f7209s.sendMessage(this.f7209s.obtainMessage(2, runtimeException));
    }

    public final boolean p() {
        return this.f7215y instanceof zaaj;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void t1(Bundle bundle) {
        this.f7205o.lock();
        try {
            this.f7215y.a(bundle);
        } finally {
            this.f7205o.unlock();
        }
    }
}
