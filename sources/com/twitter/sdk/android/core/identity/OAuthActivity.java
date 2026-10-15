package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.identity.a;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.j;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.x;

/* JADX INFO: loaded from: classes2.dex */
public class OAuthActivity extends Activity implements a.c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    a f27437o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ProgressBar f27438p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private WebView f27439q;

    @Override // com.twitter.sdk.android.core.identity.a.c
    public void a(int i10, Intent intent) {
        setResult(i10, intent);
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f27437o.i(0, new s("Authorization failed, request was canceled."));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(k.f27481a);
        this.f27438p = (ProgressBar) findViewById(j.f27479a);
        this.f27439q = (WebView) findViewById(j.f27480b);
        this.f27438p.setVisibility(bundle != null ? bundle.getBoolean("progress", false) : true ? 0 : 8);
        a aVar = new a(this.f27438p, this.f27439q, (r) getIntent().getParcelableExtra("auth_config"), new OAuth1aService(x.h(), new c9.j()), this);
        this.f27437o = aVar;
        aVar.o();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.f27438p.getVisibility() == 0) {
            bundle.putBoolean("progress", true);
        }
        super.onSaveInstanceState(bundle);
    }
}
