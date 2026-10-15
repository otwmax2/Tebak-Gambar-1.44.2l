package com.tebakgambar.splash;

import android.content.Context;
import android.content.Intent;
import z2.a;

/* JADX INFO: loaded from: classes2.dex */
public class SplashActivity$$IntentBuilder {
    private a bundler = a.a();
    private Intent intent;

    public SplashActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) SplashActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }
}
