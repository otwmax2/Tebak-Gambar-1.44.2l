package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.SignInOptions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaaw implements zabf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zabi f7163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lock f7164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f7165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final GoogleApiAvailabilityLight f7166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConnectionResult f7167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7168f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7170h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.google.android.gms.signin.zae f7173k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f7174l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f7175m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f7176n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private IAccountAccessor f7177o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f7178p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f7179q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ClientSettings f7180r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Map<Api<?>, Boolean> f7181s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> f7182t;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7169g = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Bundle f7171i = new Bundle();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Set<Api.AnyClientKey> f7172j = new HashSet();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final ArrayList<Future<?>> f7183u = new ArrayList<>();

    public zaaw(zabi zabiVar, ClientSettings clientSettings, Map<Api<?>, Boolean> map, GoogleApiAvailabilityLight googleApiAvailabilityLight, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, Lock lock, Context context) {
        this.f7163a = zabiVar;
        this.f7180r = clientSettings;
        this.f7181s = map;
        this.f7166d = googleApiAvailabilityLight;
        this.f7182t = abstractClientBuilder;
        this.f7164b = lock;
        this.f7165c = context;
    }

    static /* bridge */ /* synthetic */ void B(zaaw zaawVar, com.google.android.gms.signin.internal.zak zakVar) {
        if (zaawVar.o(0)) {
            ConnectionResult connectionResultV3 = zakVar.V3();
            if (!connectionResultV3.Z3()) {
                if (!zaawVar.q(connectionResultV3)) {
                    zaawVar.l(connectionResultV3);
                    return;
                } else {
                    zaawVar.i();
                    zaawVar.n();
                    return;
                }
            }
            zav zavVar = (zav) Preconditions.k(zakVar.W3());
            ConnectionResult connectionResultV32 = zavVar.V3();
            if (!connectionResultV32.Z3()) {
                String strValueOf = String.valueOf(connectionResultV32);
                Log.wtf("GACConnecting", "Sign-in succeeded with resolve account failure: ".concat(strValueOf), new Exception());
                zaawVar.l(connectionResultV32);
                return;
            }
            zaawVar.f7176n = true;
            zaawVar.f7177o = (IAccountAccessor) Preconditions.k(zavVar.W3());
            zaawVar.f7178p = zavVar.X3();
            zaawVar.f7179q = zavVar.Y3();
            zaawVar.n();
        }
    }

    private final void J() {
        ArrayList<Future<?>> arrayList = this.f7183u;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.get(i10).cancel(true);
        }
        this.f7183u.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void i() {
        this.f7175m = false;
        this.f7163a.B.f7196m = Collections.emptySet();
        for (Api.AnyClientKey<?> anyClientKey : this.f7172j) {
            if (!this.f7163a.f7211u.containsKey(anyClientKey)) {
                this.f7163a.f7211u.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    @GuardedBy("mLock")
    private final void j(boolean z10) {
        com.google.android.gms.signin.zae zaeVar = this.f7173k;
        if (zaeVar != null) {
            if (zaeVar.a() && z10) {
                zaeVar.q();
            }
            zaeVar.i();
            this.f7177o = null;
        }
    }

    @GuardedBy("mLock")
    private final void k() {
        this.f7163a.k();
        zabj.a().execute(new g(this));
        com.google.android.gms.signin.zae zaeVar = this.f7173k;
        if (zaeVar != null) {
            if (this.f7178p) {
                zaeVar.p((IAccountAccessor) Preconditions.k(this.f7177o), this.f7179q);
            }
            j(false);
        }
        Iterator<Api.AnyClientKey<?>> it = this.f7163a.f7211u.keySet().iterator();
        while (it.hasNext()) {
            ((Api.Client) Preconditions.k(this.f7163a.f7210t.get(it.next()))).i();
        }
        this.f7163a.C.a(this.f7171i.isEmpty() ? null : this.f7171i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void l(ConnectionResult connectionResult) {
        J();
        j(!connectionResult.Y3());
        this.f7163a.m(connectionResult);
        this.f7163a.C.c(connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void m(ConnectionResult connectionResult, Api<?> api, boolean z10) {
        int iA = api.c().a();
        if ((!z10 || connectionResult.Y3() || this.f7166d.c(connectionResult.V3()) != null) && (this.f7167e == null || iA < this.f7168f)) {
            this.f7167e = connectionResult;
            this.f7168f = iA;
        }
        this.f7163a.f7211u.put(api.b(), connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void n() {
        if (this.f7170h != 0) {
            return;
        }
        if (!this.f7175m || this.f7176n) {
            ArrayList arrayList = new ArrayList();
            this.f7169g = 1;
            this.f7170h = this.f7163a.f7210t.size();
            for (Api.AnyClientKey<?> anyClientKey : this.f7163a.f7210t.keySet()) {
                if (!this.f7163a.f7211u.containsKey(anyClientKey)) {
                    arrayList.add(this.f7163a.f7210t.get(anyClientKey));
                } else if (p()) {
                    k();
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.f7183u.add(zabj.a().submit(new l(this, arrayList)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final boolean o(int i10) {
        if (this.f7169g == i10) {
            return true;
        }
        Log.w("GACConnecting", this.f7163a.B.p());
        Log.w("GACConnecting", "Unexpected callback in ".concat(toString()));
        int i11 = this.f7170h;
        StringBuilder sb = new StringBuilder(33);
        sb.append("mRemainingConnections=");
        sb.append(i11);
        Log.w("GACConnecting", sb.toString());
        String strR = r(this.f7169g);
        String strR2 = r(i10);
        StringBuilder sb2 = new StringBuilder(strR.length() + 70 + strR2.length());
        sb2.append("GoogleApiClient connecting is in step ");
        sb2.append(strR);
        sb2.append(" but received callback for step ");
        sb2.append(strR2);
        Log.e("GACConnecting", sb2.toString(), new Exception());
        l(new ConnectionResult(8, null));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final boolean p() {
        int i10 = this.f7170h - 1;
        this.f7170h = i10;
        if (i10 > 0) {
            return false;
        }
        if (i10 < 0) {
            Log.w("GACConnecting", this.f7163a.B.p());
            Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            l(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.f7167e;
        if (connectionResult == null) {
            return true;
        }
        this.f7163a.A = this.f7168f;
        l(connectionResult);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final boolean q(ConnectionResult connectionResult) {
        return this.f7174l && !connectionResult.Y3();
    }

    private static final String r(int i10) {
        return i10 != 0 ? "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    static /* bridge */ /* synthetic */ Set y(zaaw zaawVar) {
        ClientSettings clientSettings = zaawVar.f7180r;
        if (clientSettings == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(clientSettings.h());
        Map<Api<?>, com.google.android.gms.common.internal.zab> mapM = zaawVar.f7180r.m();
        for (Api<?> api : mapM.keySet()) {
            if (!zaawVar.f7163a.f7211u.containsKey(api.b())) {
                hashSet.addAll(mapM.get(api).f7475a);
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void a(Bundle bundle) {
        if (o(1)) {
            if (bundle != null) {
                this.f7171i.putAll(bundle);
            }
            if (p()) {
                k();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void b() {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void c(ConnectionResult connectionResult, Api<?> api, boolean z10) {
        if (o(1)) {
            m(connectionResult, api, z10);
            if (p()) {
                k();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void d(int i10) {
        l(new ConnectionResult(8, null));
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.gms.common.api.Api$Client, com.google.android.gms.signin.zae] */
    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void e() {
        this.f7163a.f7211u.clear();
        this.f7175m = false;
        zaas zaasVar = null;
        this.f7167e = null;
        this.f7169g = 0;
        this.f7174l = true;
        this.f7176n = false;
        this.f7178p = false;
        HashMap map = new HashMap();
        boolean z10 = false;
        for (Api<?> api : this.f7181s.keySet()) {
            Api.Client client = (Api.Client) Preconditions.k(this.f7163a.f7210t.get(api.b()));
            z10 |= api.c().a() == 1;
            boolean zBooleanValue = this.f7181s.get(api).booleanValue();
            if (client.t()) {
                this.f7175m = true;
                if (zBooleanValue) {
                    this.f7172j.add(api.b());
                } else {
                    this.f7174l = false;
                }
            }
            map.put(client, new h(this, api, zBooleanValue));
        }
        if (z10) {
            this.f7175m = false;
        }
        if (this.f7175m) {
            Preconditions.k(this.f7180r);
            Preconditions.k(this.f7182t);
            this.f7180r.n(Integer.valueOf(System.identityHashCode(this.f7163a.B)));
            o oVar = new o(this, zaasVar);
            Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder = this.f7182t;
            Context context = this.f7165c;
            Looper looperJ = this.f7163a.B.j();
            ClientSettings clientSettings = this.f7180r;
            this.f7173k = abstractClientBuilder.b(context, looperJ, clientSettings, clientSettings.j(), oVar, oVar);
        }
        this.f7170h = this.f7163a.f7210t.size();
        this.f7183u.add(zabj.a().submit(new k(this, map)));
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T f(T t10) {
        this.f7163a.B.f7191h.add(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final boolean g() {
        J();
        j(true);
        this.f7163a.m(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T h(T t10) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
