package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzf extends h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final IBinder f7515g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ BaseGmsClient f7516h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i10, IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i10, bundle);
        this.f7516h = baseGmsClient;
        this.f7515g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.h
    protected final void f(ConnectionResult connectionResult) {
        if (this.f7516h.J != null) {
            this.f7516h.J.X0(connectionResult);
        }
        this.f7516h.Q(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.h
    protected final boolean g() {
        try {
            IBinder iBinder = this.f7515g;
            Preconditions.k(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f7516h.J().equals(interfaceDescriptor)) {
                Log.w("GmsClient", "service descriptor mismatch: " + this.f7516h.J() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface iInterfaceX = this.f7516h.x(this.f7515g);
            if (iInterfaceX == null || !(BaseGmsClient.l0(this.f7516h, 2, 4, iInterfaceX) || BaseGmsClient.l0(this.f7516h, 3, 4, iInterfaceX))) {
                return false;
            }
            this.f7516h.N = null;
            Bundle bundleC = this.f7516h.C();
            BaseGmsClient baseGmsClient = this.f7516h;
            if (baseGmsClient.I == null) {
                return true;
            }
            baseGmsClient.I.t1(bundleC);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
