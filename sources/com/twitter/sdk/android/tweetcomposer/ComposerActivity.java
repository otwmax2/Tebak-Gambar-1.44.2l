package com.twitter.sdk.android.tweetcomposer;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.sdk.android.core.a0;
import com.twitter.sdk.android.core.t;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: loaded from: classes2.dex */
public class ComposerActivity extends Activity {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.twitter.sdk.android.tweetcomposer.a f27529o;

    interface a {
        void a();
    }

    class b implements a {
        b() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerActivity.a
        public void a() {
            ComposerActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.f27529o.d();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        a0 a0Var = new a0((t) intent.getParcelableExtra("EXTRA_USER_TOKEN"), -1L, BuildConfig.FLAVOR);
        Uri uri = (Uri) intent.getParcelableExtra("EXTRA_IMAGE_URI");
        String stringExtra = intent.getStringExtra("EXTRA_TEXT");
        String stringExtra2 = intent.getStringExtra("EXTRA_HASHTAGS");
        setTheme(intent.getIntExtra("EXTRA_THEME", j.f27574a));
        setContentView(i.f27571a);
        this.f27529o = new com.twitter.sdk.android.tweetcomposer.a((ComposerView) findViewById(h.f27567f), a0Var, uri, stringExtra, stringExtra2, new b());
    }
}
