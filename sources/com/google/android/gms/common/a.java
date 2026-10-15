package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zaq;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"HandlerLeak"})
final class a extends zaq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ GoogleApiAvailability f6938b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(GoogleApiAvailability googleApiAvailability, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f6938b = googleApiAvailability;
        this.f6937a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i10);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        int i11 = this.f6938b.i(this.f6937a);
        if (this.f6938b.m(i11)) {
            this.f6938b.r(this.f6937a, i11);
        }
    }
}
