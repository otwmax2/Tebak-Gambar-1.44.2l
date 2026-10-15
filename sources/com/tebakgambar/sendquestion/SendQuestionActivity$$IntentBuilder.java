package com.tebakgambar.sendquestion;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class SendQuestionActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    public SendQuestionActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) SendQuestionActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }
}
