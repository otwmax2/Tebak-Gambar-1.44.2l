package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public class AssetPackExtractionService extends Service {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    w f25804o;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f25804o;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        r1.a(getApplicationContext()).a(this);
    }
}
