package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class j extends com.google.android.gms.internal.common.zzi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ BaseGmsClient f7450a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        this.f7450a = baseGmsClient;
    }

    private static final void a(Message message) {
        zzc zzcVar = (zzc) message.obj;
        zzcVar.b();
        zzcVar.e();
    }

    private static final boolean b(Message message) {
        int i10 = message.what;
        return i10 == 2 || i10 == 1 || i10 == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f7450a.Q.get() != message.arg1) {
            if (b(message)) {
                a(message);
                return;
            }
            return;
        }
        int i10 = message.what;
        if ((i10 == 1 || i10 == 7 || ((i10 == 4 && !this.f7450a.y()) || message.what == 5)) && !this.f7450a.f()) {
            a(message);
            return;
        }
        int i11 = message.what;
        if (i11 == 4) {
            this.f7450a.N = new ConnectionResult(message.arg2);
            if (BaseGmsClient.m0(this.f7450a)) {
                BaseGmsClient baseGmsClient = this.f7450a;
                if (!baseGmsClient.O) {
                    baseGmsClient.n0(3, null);
                    return;
                }
            }
            BaseGmsClient baseGmsClient2 = this.f7450a;
            ConnectionResult connectionResult = baseGmsClient2.N != null ? baseGmsClient2.N : new ConnectionResult(8);
            this.f7450a.D.a(connectionResult);
            this.f7450a.Q(connectionResult);
            return;
        }
        if (i11 == 5) {
            BaseGmsClient baseGmsClient3 = this.f7450a;
            ConnectionResult connectionResult2 = baseGmsClient3.N != null ? baseGmsClient3.N : new ConnectionResult(8);
            this.f7450a.D.a(connectionResult2);
            this.f7450a.Q(connectionResult2);
            return;
        }
        if (i11 == 3) {
            Object obj = message.obj;
            ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            this.f7450a.D.a(connectionResult3);
            this.f7450a.Q(connectionResult3);
            return;
        }
        if (i11 == 6) {
            this.f7450a.n0(5, null);
            BaseGmsClient baseGmsClient4 = this.f7450a;
            if (baseGmsClient4.I != null) {
                baseGmsClient4.I.P0(message.arg2);
            }
            this.f7450a.R(message.arg2);
            BaseGmsClient.l0(this.f7450a, 5, 1, null);
            return;
        }
        if (i11 == 2 && !this.f7450a.a()) {
            a(message);
            return;
        }
        if (b(message)) {
            ((zzc) message.obj).c();
            return;
        }
        Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
    }
}
