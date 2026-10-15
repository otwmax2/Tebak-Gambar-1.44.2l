package com.tebakgambar.levelselection;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class LevelLoadingActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    /* JADX INFO: compiled from: LevelLoadingActivity$$IntentBuilder.java */
    public class a {
        public a() {
        }

        public Intent a() {
            LevelLoadingActivity$$IntentBuilder.this.intent.putExtras(LevelLoadingActivity$$IntentBuilder.this.bundler.b());
            return LevelLoadingActivity$$IntentBuilder.this.intent;
        }
    }

    public LevelLoadingActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) LevelLoadingActivity.class);
    }

    public a level(int i10) {
        this.bundler.c("level", i10);
        return new a();
    }
}
