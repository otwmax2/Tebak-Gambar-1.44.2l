package com.tebakgambar.howtoplay;

import android.content.Context;
import android.content.Intent;
import z2.a;

/* JADX INFO: loaded from: classes2.dex */
public class HowToPlayActivity$$IntentBuilder {
    private a bundler = a.a();
    private Intent intent;

    public HowToPlayActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) HowToPlayActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }

    public HowToPlayActivity$$IntentBuilder jumpToQuiz(boolean z10) {
        this.bundler.f("jumpToQuiz", z10);
        return this;
    }
}
