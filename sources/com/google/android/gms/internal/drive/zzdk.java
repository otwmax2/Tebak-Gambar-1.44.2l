package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.drive.events.ListenerToken;
import com.google.android.gms.drive.events.OpenFileCallback;

/* JADX INFO: loaded from: classes2.dex */
final class zzdk extends zzl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ListenerToken f21915o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ListenerHolder<OpenFileCallback> f21916p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzch f21917q;

    zzdk(zzch zzchVar, ListenerToken listenerToken, ListenerHolder<OpenFileCallback> listenerHolder) {
        this.f21917q = zzchVar;
        this.f21915o = listenerToken;
        this.f21916p = listenerHolder;
    }

    private final void t1(zzdg<OpenFileCallback> zzdgVar) {
        this.f21916p.c(new zzdo(this, zzdgVar));
    }

    final /* synthetic */ void Q4(zzfh zzfhVar, OpenFileCallback openFileCallback) {
        openFileCallback.a(new zzbi(zzfhVar.f21968o));
        this.f21917q.z(this.f21915o);
    }

    final /* synthetic */ void X0(Status status, OpenFileCallback openFileCallback) {
        openFileCallback.b(ApiExceptionUtil.a(status));
        this.f21917q.z(this.f21915o);
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void i7(final zzfl zzflVar) throws RemoteException {
        t1(new zzdg(zzflVar) { // from class: com.google.android.gms.internal.drive.zzdm

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final zzfl f21920a;

            {
                this.f21920a = zzflVar;
            }

            @Override // com.google.android.gms.internal.drive.zzdg
            public final void accept(Object obj) {
                zzfl zzflVar2 = this.f21920a;
                ((OpenFileCallback) obj).c(zzflVar2.f21972o, zzflVar2.f21973p);
            }
        });
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r5(final zzfh zzfhVar) throws RemoteException {
        t1(new zzdg(this, zzfhVar) { // from class: com.google.android.gms.internal.drive.zzdn

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final zzdk f21921a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final zzfh f21922b;

            {
                this.f21921a = this;
                this.f21922b = zzfhVar;
            }

            @Override // com.google.android.gms.internal.drive.zzdg
            public final void accept(Object obj) {
                this.f21921a.Q4(this.f21922b, (OpenFileCallback) obj);
            }
        });
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v0(final Status status) throws RemoteException {
        t1(new zzdg(this, status) { // from class: com.google.android.gms.internal.drive.zzdl

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final zzdk f21918a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Status f21919b;

            {
                this.f21918a = this;
                this.f21919b = status;
            }

            @Override // com.google.android.gms.internal.drive.zzdg
            public final void accept(Object obj) {
                this.f21918a.X0(this.f21919b, (OpenFileCallback) obj);
            }
        });
    }
}
