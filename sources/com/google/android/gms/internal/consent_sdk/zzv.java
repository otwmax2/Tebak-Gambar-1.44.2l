package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import z4.b;
import z4.c;
import z4.d;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f21798a;

    public final /* synthetic */ void a(final c cVar) {
        Handler handler = this.f21798a;
        cVar.getClass();
        handler.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzu
            @Override // java.lang.Runnable
            public final void run() {
                cVar.a();
            }
        });
    }

    public final /* synthetic */ void b(Activity activity, d dVar, c cVar, final b bVar) {
        try {
            throw null;
        } catch (RuntimeException e10) {
            String strValueOf = String.valueOf(Log.getStackTraceString(e10));
            final zzj zzjVar = new zzj(1, strValueOf.length() != 0 ? "Caught exception when trying to request consent info update: ".concat(strValueOf) : new String("Caught exception when trying to request consent info update: "));
            this.f21798a.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzt
                @Override // java.lang.Runnable
                public final void run() {
                    bVar.a(zzjVar.a());
                }
            });
        }
    }
}
