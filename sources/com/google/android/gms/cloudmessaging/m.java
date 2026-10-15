package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class m<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f6870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final TaskCompletionSource<T> f6871b = new TaskCompletionSource<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f6872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Bundle f6873d;

    m(int i10, int i11, Bundle bundle) {
        this.f6870a = i10;
        this.f6872c = i11;
        this.f6873d = bundle;
    }

    abstract void a(Bundle bundle);

    final void b(zzp zzpVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(zzpVar);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 14 + strValueOf2.length());
            sb.append("Failing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f6871b.b(zzpVar);
    }

    final void c(T t10) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(t10);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 16 + strValueOf2.length());
            sb.append("Finishing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f6871b.c(t10);
    }

    abstract boolean d();

    public String toString() {
        int i10 = this.f6872c;
        int i11 = this.f6870a;
        boolean zD = d();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i10);
        sb.append(" id=");
        sb.append(i11);
        sb.append(" oneWay=");
        sb.append(zD);
        sb.append("}");
        return sb.toString();
    }
}
