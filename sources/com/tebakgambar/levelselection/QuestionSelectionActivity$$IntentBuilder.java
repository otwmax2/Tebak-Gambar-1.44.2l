package com.tebakgambar.levelselection;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class QuestionSelectionActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    /* JADX INFO: compiled from: QuestionSelectionActivity$$IntentBuilder.java */
    public class a {
        public a() {
        }

        public Intent a() {
            QuestionSelectionActivity$$IntentBuilder.this.intent.putExtras(QuestionSelectionActivity$$IntentBuilder.this.bundler.b());
            return QuestionSelectionActivity$$IntentBuilder.this.intent;
        }

        public a b(boolean z10) {
            QuestionSelectionActivity$$IntentBuilder.this.bundler.f("isQuestionNotEligible", z10);
            return this;
        }
    }

    public QuestionSelectionActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) QuestionSelectionActivity.class);
    }

    public a level(int i10) {
        this.bundler.c("level", i10);
        return new a();
    }
}
