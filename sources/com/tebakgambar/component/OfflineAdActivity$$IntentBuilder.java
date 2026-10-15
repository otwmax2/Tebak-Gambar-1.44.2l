package com.tebakgambar.component;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class OfflineAdActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    public OfflineAdActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) OfflineAdActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }

    public OfflineAdActivity$$IntentBuilder isFromIncreaseDialog(boolean z10) {
        this.bundler.f("isFromIncreaseDialog", z10);
        return this;
    }
}
