package com.tebakgambar.levelselection;

import android.content.Context;
import android.content.Intent;
import com.tebakgambar.model.BaseEvent;

/* JADX INFO: loaded from: classes2.dex */
public class LevelSelectionActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    public LevelSelectionActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) LevelSelectionActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }

    public LevelSelectionActivity$$IntentBuilder eventId(int i10) {
        this.bundler.c("eventId", i10);
        return this;
    }

    public LevelSelectionActivity$$IntentBuilder failedLevel(int i10) {
        this.bundler.c("failedLevel", i10);
        return this;
    }

    public LevelSelectionActivity$$IntentBuilder homeEvent(BaseEvent baseEvent) {
        this.bundler.d("homeEvent", baseEvent);
        return this;
    }

    public LevelSelectionActivity$$IntentBuilder isLevelNotEligible(boolean z10) {
        this.bundler.f("isLevelNotEligible", z10);
        return this;
    }
}
