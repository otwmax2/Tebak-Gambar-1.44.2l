package com.google.android.gms.drive;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.internal.drive.zzaw;

/* JADX INFO: loaded from: classes.dex */
final class c extends Api.AbstractClientBuilder<zzaw, Drive.zza> {
    c() {
    }

    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ Api.Client b(Context context, Looper looper, ClientSettings clientSettings, Drive.zza zzaVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzaw(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener, zzaVar.a());
    }
}
