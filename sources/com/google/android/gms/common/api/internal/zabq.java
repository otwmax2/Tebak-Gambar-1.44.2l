package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zabq<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zau {
    final /* synthetic */ GoogleApiManager A;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NotOnlyInitialized
    private final Api.Client f7220p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ApiKey<O> f7221q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zaad f7222r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f7225u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zact f7226v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f7227w;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Queue<zai> f7219o = new LinkedList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Set<zal> f7223s = new HashSet();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Map<ListenerHolder.ListenerKey<?>, zaci> f7224t = new HashMap();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final List<y> f7228x = new ArrayList();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ConnectionResult f7229y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f7230z = 0;

    public zabq(GoogleApiManager googleApiManager, GoogleApi<O> googleApi) {
        this.A = googleApiManager;
        Api.Client clientV = googleApi.v(googleApiManager.D.getLooper(), this);
        this.f7220p = clientV;
        this.f7221q = googleApi.p();
        this.f7222r = new zaad();
        this.f7225u = googleApi.u();
        if (clientV.t()) {
            this.f7226v = googleApi.w(googleApiManager.f7023u, googleApiManager.D);
        } else {
            this.f7226v = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Feature b(Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] featureArrO = this.f7220p.o();
            if (featureArrO == null) {
                featureArrO = new Feature[0];
            }
            o.a aVar = new o.a(featureArrO.length);
            for (Feature feature : featureArrO) {
                aVar.put(feature.getName(), Long.valueOf(feature.V3()));
            }
            for (Feature feature2 : featureArr) {
                Long l10 = (Long) aVar.get(feature2.getName());
                if (l10 == null || l10.longValue() < feature2.V3()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    private final void c(ConnectionResult connectionResult) {
        Iterator<zal> it = this.f7223s.iterator();
        while (it.hasNext()) {
            it.next().b(this.f7221q, connectionResult, Objects.b(connectionResult, ConnectionResult.f6898s) ? this.f7220p.g() : null);
        }
        this.f7223s.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(Status status) {
        Preconditions.d(this.A.D);
        e(status, null, false);
    }

    private final void e(Status status, Exception exc, boolean z10) {
        Preconditions.d(this.A.D);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator<zai> it = this.f7219o.iterator();
        while (it.hasNext()) {
            zai next = it.next();
            if (!z10 || next.f7273a == 2) {
                if (status != null) {
                    next.a(status);
                } else {
                    next.b(exc);
                }
                it.remove();
            }
        }
    }

    private final void f() {
        ArrayList arrayList = new ArrayList(this.f7219o);
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zai zaiVar = (zai) arrayList.get(i10);
            if (!this.f7220p.a()) {
                return;
            }
            if (l(zaiVar)) {
                this.f7219o.remove(zaiVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        A();
        c(ConnectionResult.f6898s);
        k();
        Iterator<zaci> it = this.f7224t.values().iterator();
        while (it.hasNext()) {
            zaci next = it.next();
            if (b(next.f7243a.c()) != null) {
                it.remove();
            } else {
                try {
                    next.f7243a.d(this.f7220p, new TaskCompletionSource<>());
                } catch (DeadObjectException unused) {
                    P0(3);
                    this.f7220p.e("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException unused2) {
                    it.remove();
                }
            }
        }
        f();
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(int i10) {
        A();
        this.f7227w = true;
        this.f7222r.e(i10, this.f7220p.r());
        GoogleApiManager googleApiManager = this.A;
        googleApiManager.D.sendMessageDelayed(Message.obtain(googleApiManager.D, 9, this.f7221q), this.A.f7017o);
        GoogleApiManager googleApiManager2 = this.A;
        googleApiManager2.D.sendMessageDelayed(Message.obtain(googleApiManager2.D, 11, this.f7221q), this.A.f7018p);
        this.A.f7025w.c();
        Iterator<zaci> it = this.f7224t.values().iterator();
        while (it.hasNext()) {
            it.next().f7245c.run();
        }
    }

    private final void i() {
        this.A.D.removeMessages(12, this.f7221q);
        GoogleApiManager googleApiManager = this.A;
        googleApiManager.D.sendMessageDelayed(googleApiManager.D.obtainMessage(12, this.f7221q), this.A.f7019q);
    }

    private final void j(zai zaiVar) {
        zaiVar.d(this.f7222r, M());
        try {
            zaiVar.c(this);
        } catch (DeadObjectException unused) {
            P0(1);
            this.f7220p.e("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    private final void k() {
        if (this.f7227w) {
            this.A.D.removeMessages(11, this.f7221q);
            this.A.D.removeMessages(9, this.f7221q);
            this.f7227w = false;
        }
    }

    private final boolean l(zai zaiVar) {
        if (!(zaiVar instanceof zac)) {
            j(zaiVar);
            return true;
        }
        zac zacVar = (zac) zaiVar;
        Feature featureB = b(zacVar.g(this));
        if (featureB == null) {
            j(zaiVar);
            return true;
        }
        String name = this.f7220p.getClass().getName();
        String name2 = featureB.getName();
        long jV3 = featureB.V3();
        StringBuilder sb = new StringBuilder(name.length() + 77 + String.valueOf(name2).length());
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(name2);
        sb.append(", ");
        sb.append(jV3);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        if (!this.A.E || !zacVar.f(this)) {
            zacVar.b(new UnsupportedApiCallException(featureB));
            return true;
        }
        y yVar = new y(this.f7221q, featureB, null);
        int iIndexOf = this.f7228x.indexOf(yVar);
        if (iIndexOf >= 0) {
            y yVar2 = this.f7228x.get(iIndexOf);
            this.A.D.removeMessages(15, yVar2);
            GoogleApiManager googleApiManager = this.A;
            googleApiManager.D.sendMessageDelayed(Message.obtain(googleApiManager.D, 15, yVar2), this.A.f7017o);
            return false;
        }
        this.f7228x.add(yVar);
        GoogleApiManager googleApiManager2 = this.A;
        googleApiManager2.D.sendMessageDelayed(Message.obtain(googleApiManager2.D, 15, yVar), this.A.f7017o);
        GoogleApiManager googleApiManager3 = this.A;
        googleApiManager3.D.sendMessageDelayed(Message.obtain(googleApiManager3.D, 16, yVar), this.A.f7018p);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (m(connectionResult)) {
            return false;
        }
        this.A.h(connectionResult, this.f7225u);
        return false;
    }

    private final boolean m(ConnectionResult connectionResult) {
        synchronized (GoogleApiManager.H) {
            GoogleApiManager googleApiManager = this.A;
            if (googleApiManager.A == null || !googleApiManager.B.contains(this.f7221q)) {
                return false;
            }
            this.A.A.s(connectionResult, this.f7225u);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n(boolean z10) {
        Preconditions.d(this.A.D);
        if (!this.f7220p.a() || this.f7224t.size() != 0) {
            return false;
        }
        if (!this.f7222r.g()) {
            this.f7220p.e("Timing out service connection.");
            return true;
        }
        if (z10) {
            i();
        }
        return false;
    }

    static /* bridge */ /* synthetic */ void y(zabq zabqVar, y yVar) {
        if (zabqVar.f7228x.contains(yVar) && !zabqVar.f7227w) {
            if (zabqVar.f7220p.a()) {
                zabqVar.f();
            } else {
                zabqVar.B();
            }
        }
    }

    static /* bridge */ /* synthetic */ void z(zabq zabqVar, y yVar) {
        Feature[] featureArrG;
        if (zabqVar.f7228x.remove(yVar)) {
            zabqVar.A.D.removeMessages(15, yVar);
            zabqVar.A.D.removeMessages(16, yVar);
            Feature feature = yVar.f7153b;
            ArrayList arrayList = new ArrayList(zabqVar.f7219o.size());
            for (zai zaiVar : zabqVar.f7219o) {
                if ((zaiVar instanceof zac) && (featureArrG = ((zac) zaiVar).g(zabqVar)) != null && ArrayUtils.c(featureArrG, feature)) {
                    arrayList.add(zaiVar);
                }
            }
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                zai zaiVar2 = (zai) arrayList.get(i10);
                zabqVar.f7219o.remove(zaiVar2);
                zaiVar2.b(new UnsupportedApiCallException(feature));
            }
        }
    }

    public final void A() {
        Preconditions.d(this.A.D);
        this.f7229y = null;
    }

    public final void B() {
        Preconditions.d(this.A.D);
        if (this.f7220p.a() || this.f7220p.f()) {
            return;
        }
        try {
            GoogleApiManager googleApiManager = this.A;
            int iB = googleApiManager.f7025w.b(googleApiManager.f7023u, this.f7220p);
            if (iB == 0) {
                GoogleApiManager googleApiManager2 = this.A;
                Api.Client client = this.f7220p;
                a0 a0Var = new a0(googleApiManager2, client, this.f7221q);
                if (client.t()) {
                    ((zact) Preconditions.k(this.f7226v)).Ta(a0Var);
                }
                try {
                    this.f7220p.h(a0Var);
                    return;
                } catch (SecurityException e10) {
                    E(new ConnectionResult(10), e10);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(iB, null);
            String name = this.f7220p.getClass().getName();
            String string = connectionResult.toString();
            StringBuilder sb = new StringBuilder(name.length() + 35 + string.length());
            sb.append("The service for ");
            sb.append(name);
            sb.append(" is not available: ");
            sb.append(string);
            Log.w("GoogleApiManager", sb.toString());
            E(connectionResult, null);
        } catch (IllegalStateException e11) {
            E(new ConnectionResult(10), e11);
        }
    }

    public final void C(zai zaiVar) {
        Preconditions.d(this.A.D);
        if (this.f7220p.a()) {
            if (l(zaiVar)) {
                i();
                return;
            } else {
                this.f7219o.add(zaiVar);
                return;
            }
        }
        this.f7219o.add(zaiVar);
        ConnectionResult connectionResult = this.f7229y;
        if (connectionResult == null || !connectionResult.Y3()) {
            B();
        } else {
            E(this.f7229y, null);
        }
    }

    final void D() {
        this.f7230z++;
    }

    public final void E(ConnectionResult connectionResult, Exception exc) {
        Preconditions.d(this.A.D);
        zact zactVar = this.f7226v;
        if (zactVar != null) {
            zactVar.Ua();
        }
        A();
        this.A.f7025w.c();
        c(connectionResult);
        if ((this.f7220p instanceof com.google.android.gms.common.internal.service.zap) && connectionResult.V3() != 24) {
            this.A.f7020r = true;
            GoogleApiManager googleApiManager = this.A;
            googleApiManager.D.sendMessageDelayed(googleApiManager.D.obtainMessage(19), 300000L);
        }
        if (connectionResult.V3() == 4) {
            d(GoogleApiManager.G);
            return;
        }
        if (this.f7219o.isEmpty()) {
            this.f7229y = connectionResult;
            return;
        }
        if (exc != null) {
            Preconditions.d(this.A.D);
            e(null, exc, false);
            return;
        }
        if (!this.A.E) {
            d(GoogleApiManager.i(this.f7221q, connectionResult));
            return;
        }
        e(GoogleApiManager.i(this.f7221q, connectionResult), null, true);
        if (this.f7219o.isEmpty() || m(connectionResult) || this.A.h(connectionResult, this.f7225u)) {
            return;
        }
        if (connectionResult.V3() == 18) {
            this.f7227w = true;
        }
        if (!this.f7227w) {
            d(GoogleApiManager.i(this.f7221q, connectionResult));
        } else {
            GoogleApiManager googleApiManager2 = this.A;
            googleApiManager2.D.sendMessageDelayed(Message.obtain(googleApiManager2.D, 9, this.f7221q), this.A.f7017o);
        }
    }

    public final void F(ConnectionResult connectionResult) {
        Preconditions.d(this.A.D);
        Api.Client client = this.f7220p;
        String name = client.getClass().getName();
        String strValueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(name.length() + 25 + strValueOf.length());
        sb.append("onSignInFailed for ");
        sb.append(name);
        sb.append(" with ");
        sb.append(strValueOf);
        client.e(sb.toString());
        E(connectionResult, null);
    }

    public final void G(zal zalVar) {
        Preconditions.d(this.A.D);
        this.f7223s.add(zalVar);
    }

    public final void H() {
        Preconditions.d(this.A.D);
        if (this.f7227w) {
            B();
        }
    }

    public final void I() {
        Preconditions.d(this.A.D);
        d(GoogleApiManager.F);
        this.f7222r.f();
        for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.f7224t.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
            C(new zah(listenerKey, new TaskCompletionSource()));
        }
        c(new ConnectionResult(4));
        if (this.f7220p.a()) {
            this.f7220p.j(new x(this));
        }
    }

    public final void J() {
        Preconditions.d(this.A.D);
        if (this.f7227w) {
            k();
            GoogleApiManager googleApiManager = this.A;
            d(googleApiManager.f7024v.i(googleApiManager.f7023u) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.f7220p.e("Timing out connection while resuming.");
        }
    }

    final boolean L() {
        return this.f7220p.a();
    }

    public final boolean M() {
        return this.f7220p.t();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void P0(int i10) {
        if (Looper.myLooper() == this.A.D.getLooper()) {
            h(i10);
        } else {
            this.A.D.post(new v(this, i10));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zau
    public final void Q4(ConnectionResult connectionResult, Api<?> api, boolean z10) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        E(connectionResult, null);
    }

    public final boolean a() {
        return n(true);
    }

    public final int o() {
        return this.f7225u;
    }

    final int p() {
        return this.f7230z;
    }

    public final ConnectionResult q() {
        Preconditions.d(this.A.D);
        return this.f7229y;
    }

    public final Api.Client s() {
        return this.f7220p;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void t1(Bundle bundle) {
        if (Looper.myLooper() == this.A.D.getLooper()) {
            g();
        } else {
            this.A.D.post(new u(this));
        }
    }

    public final Map<ListenerHolder.ListenerKey<?>, zaci> u() {
        return this.f7224t;
    }
}
