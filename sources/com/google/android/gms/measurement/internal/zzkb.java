package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzkb extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzka f24806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzeo f24807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Boolean f24808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g f24809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final o3 f24810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f24811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final g f24812i;

    protected zzkb(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24811h = new ArrayList();
        this.f24810g = new o3(zzgiVar.x());
        this.f24806c = new zzka(this);
        this.f24809f = new p2(this, zzgiVar);
        this.f24812i = new r2(this, zzgiVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        c();
        this.f24394a.U().q().b("Processing queued up service tasks", Integer.valueOf(this.f24811h.size()));
        Iterator it = this.f24811h.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e10) {
                this.f24394a.U().m().b("Task exception while flushing queue", e10);
            }
        }
        this.f24811h.clear();
        this.f24812i.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C() {
        c();
        this.f24810g.b();
        g gVar = this.f24809f;
        this.f24394a.v();
        gVar.d(((Long) zzel.K.a(null)).longValue());
    }

    private final void D(Runnable runnable) throws IllegalStateException {
        c();
        if (v()) {
            runnable.run();
            return;
        }
        int size = this.f24811h.size();
        this.f24394a.v();
        if (size >= 1000) {
            this.f24394a.U().m().a("Discarding data. Max runnable queue size reached");
            return;
        }
        this.f24811h.add(runnable);
        this.f24812i.d(60000L);
        N();
    }

    private final boolean E() {
        this.f24394a.t();
        return true;
    }

    static /* bridge */ /* synthetic */ void K(zzkb zzkbVar, ComponentName componentName) {
        zzkbVar.c();
        if (zzkbVar.f24807d != null) {
            zzkbVar.f24807d = null;
            zzkbVar.f24394a.U().q().b("Disconnected from device MeasurementService", componentName);
            zzkbVar.c();
            zzkbVar.N();
        }
    }

    private final zzp z(boolean z10) {
        Pair pairA;
        this.f24394a.t();
        zzep zzepVarY = this.f24394a.y();
        String str = null;
        if (z10) {
            zzey zzeyVarU = this.f24394a.U();
            if (zzeyVarU.f24394a.D().f24359d != null && (pairA = zzeyVarU.f24394a.D().f24359d.a()) != null && pairA != x.f24357x) {
                str = String.valueOf(pairA.second) + CertificateUtil.DELIMITER + ((String) pairA.first);
            }
        }
        return zzepVarY.l(str);
    }

    final Boolean H() {
        return this.f24808e;
    }

    protected final void M() {
        c();
        d();
        zzp zzpVarZ = z(true);
        this.f24394a.z().m();
        D(new m2(this, zzpVarZ));
    }

    final void N() {
        c();
        d();
        if (v()) {
            return;
        }
        if (y()) {
            this.f24806c.c();
            return;
        }
        if (this.f24394a.v().E()) {
            return;
        }
        this.f24394a.t();
        List<ResolveInfo> listQueryIntentServices = this.f24394a.N0().getPackageManager().queryIntentServices(new Intent().setClassName(this.f24394a.N0(), "com.google.android.gms.measurement.AppMeasurementService"), NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            this.f24394a.U().m().a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        Context contextN0 = this.f24394a.N0();
        this.f24394a.t();
        intent.setComponent(new ComponentName(contextN0, "com.google.android.gms.measurement.AppMeasurementService"));
        this.f24806c.b(intent);
    }

    public final void O() {
        c();
        d();
        this.f24806c.d();
        try {
            ConnectionTracker.b().c(this.f24394a.N0(), this.f24806c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f24807d = null;
    }

    public final void P(com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        c();
        d();
        D(new l2(this, z(false), zzcfVar));
    }

    public final void Q(AtomicReference atomicReference) {
        c();
        d();
        D(new k2(this, atomicReference, z(false)));
    }

    protected final void R(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str, String str2) {
        c();
        d();
        D(new x2(this, str, str2, z(false), zzcfVar));
    }

    protected final void S(AtomicReference atomicReference, String str, String str2, String str3) {
        c();
        d();
        D(new w2(this, atomicReference, null, str2, str3, z(false)));
    }

    protected final void T(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str, String str2, boolean z10) {
        c();
        d();
        D(new h2(this, str, str2, z(false), z10, zzcfVar));
    }

    protected final void V(AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        c();
        d();
        D(new y2(this, atomicReference, null, str2, str3, z(false), z10));
    }

    @Override // com.google.android.gms.measurement.internal.r
    protected final boolean i() {
        return false;
    }

    protected final void j(zzav zzavVar, String str) {
        Preconditions.k(zzavVar);
        c();
        d();
        E();
        D(new u2(this, true, z(true), this.f24394a.z().q(zzavVar), zzavVar, str));
    }

    public final void k(com.google.android.gms.internal.measurement.zzcf zzcfVar, zzav zzavVar, String str) {
        c();
        d();
        if (this.f24394a.L().p0(12451000) == 0) {
            D(new q2(this, zzavVar, str, zzcfVar));
        } else {
            this.f24394a.U().r().a("Not bundling data. Service unavailable or out of date");
            this.f24394a.L().E(zzcfVar, new byte[0]);
        }
    }

    protected final void l() {
        c();
        d();
        zzp zzpVarZ = z(false);
        E();
        this.f24394a.z().l();
        D(new j2(this, zzpVarZ));
    }

    @VisibleForTesting
    final void m(zzeo zzeoVar, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) {
        int size;
        c();
        d();
        E();
        this.f24394a.v();
        int i10 = 0;
        int i11 = 100;
        while (i10 < 1001 && i11 == 100) {
            ArrayList arrayList = new ArrayList();
            List listK = this.f24394a.z().k(100);
            if (listK != null) {
                arrayList.addAll(listK);
                size = listK.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size2 = arrayList.size();
            for (int i12 = 0; i12 < size2; i12++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i12);
                if (abstractSafeParcelable2 instanceof zzav) {
                    try {
                        zzeoVar.T7((zzav) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e10) {
                        this.f24394a.U().m().b("Failed to send event to the service", e10);
                    }
                } else if (abstractSafeParcelable2 instanceof zzll) {
                    try {
                        zzeoVar.K5((zzll) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e11) {
                        this.f24394a.U().m().b("Failed to send user property to the service", e11);
                    }
                } else if (abstractSafeParcelable2 instanceof zzab) {
                    try {
                        zzeoVar.i2((zzab) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e12) {
                        this.f24394a.U().m().b("Failed to send conditional user property to the service", e12);
                    }
                } else {
                    this.f24394a.U().m().a("Discarding data. Unrecognized parcel type.");
                }
            }
            i10++;
            i11 = size;
        }
    }

    protected final void n(zzab zzabVar) {
        Preconditions.k(zzabVar);
        c();
        d();
        this.f24394a.t();
        D(new v2(this, true, z(true), this.f24394a.z().p(zzabVar), new zzab(zzabVar), zzabVar));
    }

    protected final void o(boolean z10) {
        c();
        d();
        if (z10) {
            E();
            this.f24394a.z().l();
        }
        if (w()) {
            D(new t2(this, z(false)));
        }
    }

    protected final void p(zziu zziuVar) {
        c();
        d();
        D(new n2(this, zziuVar));
    }

    public final void q(Bundle bundle) {
        c();
        d();
        D(new o2(this, z(false), bundle));
    }

    protected final void r() {
        c();
        d();
        D(new s2(this, z(true)));
    }

    @VisibleForTesting
    protected final void s(zzeo zzeoVar) {
        c();
        Preconditions.k(zzeoVar);
        this.f24807d = zzeoVar;
        C();
        A();
    }

    protected final void u(zzll zzllVar) {
        c();
        d();
        E();
        D(new i2(this, z(true), this.f24394a.z().r(zzllVar), zzllVar));
    }

    public final boolean v() {
        c();
        d();
        return this.f24807d != null;
    }

    final boolean w() {
        c();
        d();
        return !y() || this.f24394a.L().o0() >= ((Integer) zzel.f24578k0.a(null)).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean y() {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkb.y():boolean");
    }
}
