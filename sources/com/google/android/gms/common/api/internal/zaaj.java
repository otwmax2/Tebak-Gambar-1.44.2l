package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaaj implements zabf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zabi f7161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7162b = false;

    public zaaj(zabi zabiVar) {
        this.f7161a = zabiVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void a(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void b() {
        if (this.f7162b) {
            this.f7162b = false;
            this.f7161a.n(new f(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void c(ConnectionResult connectionResult, Api<?> api, boolean z10) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void d(int i10) {
        this.f7161a.m(null);
        this.f7161a.C.b(i10, this.f7162b);
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void e() {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T f(T t10) {
        h(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final boolean g() {
        if (this.f7162b) {
            return false;
        }
        Set<zada> set = this.f7161a.B.f7203t;
        if (set == null || set.isEmpty()) {
            this.f7161a.m(null);
            return true;
        }
        this.f7162b = true;
        Iterator<zada> it = set.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T h(T t10) {
        try {
            this.f7161a.B.f7204u.a(t10);
            zabe zabeVar = this.f7161a.B;
            Api.Client client = zabeVar.f7195l.get(t10.u());
            Preconditions.l(client, "Appropriate Api was not requested.");
            if (client.a() || !this.f7161a.f7211u.containsKey(t10.u())) {
                t10.w(client);
            } else {
                t10.a(new Status(17));
            }
        } catch (DeadObjectException unused) {
            this.f7161a.n(new e(this, this));
        }
        return t10;
    }

    final void j() {
        if (this.f7162b) {
            this.f7162b = false;
            this.f7161a.B.f7204u.b();
            g();
        }
    }
}
