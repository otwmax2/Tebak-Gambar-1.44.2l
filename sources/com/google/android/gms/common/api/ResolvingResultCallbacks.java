package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f6967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6968b;

    @Override // com.google.android.gms.common.api.ResultCallbacks
    @KeepForSdk
    public final void b(Status status) {
        if (!status.Z3()) {
            d(status);
            return;
        }
        try {
            status.b4(this.f6967a, this.f6968b);
        } catch (IntentSender.SendIntentException e10) {
            Log.e("ResolvingResultCallback", "Failed to start resolution", e10);
            d(new Status(8));
        }
    }

    public abstract void d(Status status);
}
