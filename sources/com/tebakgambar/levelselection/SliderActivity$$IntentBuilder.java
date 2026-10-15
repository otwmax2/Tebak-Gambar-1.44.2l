package com.tebakgambar.levelselection;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class SliderActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    public SliderActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) SliderActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }

    public SliderActivity$$IntentBuilder levelId(int i10) {
        this.bundler.c("levelId", i10);
        return this;
    }
}
