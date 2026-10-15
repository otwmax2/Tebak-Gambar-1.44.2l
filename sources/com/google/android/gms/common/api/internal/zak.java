package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zak extends zap {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final SparseArray<k0> f7274t;

    private final k0 u(int i10) {
        if (this.f7274t.size() <= i10) {
            return null;
        }
        SparseArray<k0> sparseArray = this.f7274t;
        return sparseArray.get(sparseArray.keyAt(i10));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i10 = 0; i10 < this.f7274t.size(); i10++) {
            k0 k0VarU = u(i10);
            if (k0VarU != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(k0VarU.f7116o);
                printWriter.println(CertificateUtil.DELIMITER);
                k0VarU.f7117p.f(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void j() {
        super.j();
        boolean z10 = this.f7280p;
        String strValueOf = String.valueOf(this.f7274t);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 14);
        sb.append("onStart ");
        sb.append(z10);
        sb.append(" ");
        sb.append(strValueOf);
        Log.d("AutoManageHelper", sb.toString());
        if (this.f7281q.get() == null) {
            for (int i10 = 0; i10 < this.f7274t.size(); i10++) {
                k0 k0VarU = u(i10);
                if (k0VarU != null) {
                    k0VarU.f7117p.d();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void k() {
        super.k();
        for (int i10 = 0; i10 < this.f7274t.size(); i10++) {
            k0 k0VarU = u(i10);
            if (k0VarU != null) {
                k0VarU.f7117p.e();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void m(ConnectionResult connectionResult, int i10) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i10 < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        k0 k0Var = this.f7274t.get(i10);
        if (k0Var != null) {
            t(i10);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = k0Var.f7118q;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.X0(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void n() {
        for (int i10 = 0; i10 < this.f7274t.size(); i10++) {
            k0 k0VarU = u(i10);
            if (k0VarU != null) {
                k0VarU.f7117p.d();
            }
        }
    }

    public final void t(int i10) {
        k0 k0Var = this.f7274t.get(i10);
        this.f7274t.remove(i10);
        if (k0Var != null) {
            k0Var.f7117p.m(k0Var);
            k0Var.f7117p.e();
        }
    }
}
