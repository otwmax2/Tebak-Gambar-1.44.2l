package com.tebakgambar.tutorial;

import android.content.Context;
import android.content.Intent;
import com.tebakgambar.model.ResultEventClue;

/* JADX INFO: loaded from: classes2.dex */
public class ClueEventTutorialActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    /* JADX INFO: compiled from: ClueEventTutorialActivity$$IntentBuilder.java */
    public class a {
        public a() {
        }

        public Intent a() {
            ClueEventTutorialActivity$$IntentBuilder.this.intent.putExtras(ClueEventTutorialActivity$$IntentBuilder.this.bundler.b());
            return ClueEventTutorialActivity$$IntentBuilder.this.intent;
        }
    }

    public ClueEventTutorialActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) ClueEventTutorialActivity.class);
    }

    public a clueEvent(ResultEventClue resultEventClue) {
        this.bundler.d("clueEvent", resultEventClue);
        return new a();
    }
}
