package com.tebakgambar.question;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class RegularQuestionActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    public RegularQuestionActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) RegularQuestionActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }

    public RegularQuestionActivity$$IntentBuilder questionGlobalIndex(int i10) {
        this.bundler.c("questionGlobalIndex", i10);
        return this;
    }
}
