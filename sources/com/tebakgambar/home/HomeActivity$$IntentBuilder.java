package com.tebakgambar.home;

import android.content.Context;
import android.content.Intent;
import com.tebakgambar.model.CustomBanner;
import com.tebakgambar.model.request.TGRemoteMessage;
import ua.f;

/* JADX INFO: loaded from: classes2.dex */
public class HomeActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    public HomeActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) HomeActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }

    public HomeActivity$$IntentBuilder customBanner(CustomBanner customBanner) {
        this.bundler.d("customBanner", f.c(customBanner));
        return this;
    }

    public HomeActivity$$IntentBuilder remoteMessage(TGRemoteMessage tGRemoteMessage) {
        this.bundler.d("remoteMessage", f.c(tGRemoteMessage));
        return this;
    }

    public HomeActivity$$IntentBuilder showLoginImmediately(boolean z10) {
        this.bundler.f("showLoginImmediately", z10);
        return this;
    }
}
