package com.tebakgambar.selfie;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class SelfieFrameChooserActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    public SelfieFrameChooserActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) SelfieFrameChooserActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }

    public SelfieFrameChooserActivity$$IntentBuilder questionGlobalIndex(int i10) {
        this.bundler.c("questionGlobalIndex", i10);
        return this;
    }
}
