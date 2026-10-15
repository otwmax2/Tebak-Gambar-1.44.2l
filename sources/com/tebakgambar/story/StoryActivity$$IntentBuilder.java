package com.tebakgambar.story;

import android.content.Context;
import android.content.Intent;
import z2.a;

/* JADX INFO: loaded from: classes2.dex */
public class StoryActivity$$IntentBuilder {
    private a bundler = a.a();
    private Intent intent;

    public StoryActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) StoryActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }
}
