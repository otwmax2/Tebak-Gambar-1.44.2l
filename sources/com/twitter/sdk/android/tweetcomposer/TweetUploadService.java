package com.twitter.sdk.android.tweetcomposer;

import android.app.IntentService;
import android.content.Intent;
import android.net.Uri;
import com.twitter.sdk.android.core.a0;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.o;
import com.twitter.sdk.android.core.p;
import com.twitter.sdk.android.core.t;
import com.twitter.sdk.android.core.x;
import com.twitter.sdk.android.core.y;
import com.vungle.mediation.BuildConfig;
import f9.n;
import ja.b0;
import ja.v;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class TweetUploadService extends IntentService {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    c f27543o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Intent f27544p;

    class a extends com.twitter.sdk.android.core.c<f9.i> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ a0 f27545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f27546b;

        a(a0 a0Var, String str) {
            this.f27545a = a0Var;
            this.f27546b = str;
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            TweetUploadService.this.a(yVar);
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<f9.i> lVar) {
            TweetUploadService.this.f(this.f27545a, this.f27546b, lVar.f27482a.f29533b);
        }
    }

    class b extends com.twitter.sdk.android.core.c<n> {
        b() {
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            TweetUploadService.this.a(yVar);
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<n> lVar) {
            TweetUploadService.this.c(lVar.f27482a.a());
            TweetUploadService.this.stopSelf();
        }
    }

    static class c {
        c() {
        }

        p a(a0 a0Var) {
            return x.h().d(a0Var);
        }
    }

    public TweetUploadService() {
        this(new c());
    }

    void a(y yVar) {
        b(this.f27544p);
        o.g().b("TweetUploadService", "Post Tweet failed", yVar);
        stopSelf();
    }

    void b(Intent intent) {
        Intent intent2 = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE");
        intent2.putExtra("EXTRA_RETRY_INTENT", intent);
        intent2.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent2);
    }

    void c(long j10) {
        Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS");
        intent.putExtra("EXTRA_TWEET_ID", j10);
        intent.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent);
    }

    void d(a0 a0Var, Uri uri, com.twitter.sdk.android.core.c<f9.i> cVar) {
        p pVarA = this.f27543o.a(a0Var);
        String strC = f.c(this, uri);
        if (strC == null) {
            a(new y("Uri file path resolved to null"));
            return;
        }
        File file = new File(strC);
        pVarA.e().upload(b0.create(v.d(f.b(file)), file), null, null).v3(cVar);
    }

    void e(a0 a0Var, String str, Uri uri) {
        if (uri != null) {
            d(a0Var, uri, new a(a0Var, str));
        } else {
            f(a0Var, str, null);
        }
    }

    void f(a0 a0Var, String str, String str2) {
        this.f27543o.a(a0Var).g().update(str, null, null, null, null, null, null, Boolean.TRUE, str2).v3(new b());
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        t tVar = (t) intent.getParcelableExtra("EXTRA_USER_TOKEN");
        this.f27544p = intent;
        e(new a0(tVar, -1L, BuildConfig.FLAVOR), intent.getStringExtra("EXTRA_TWEET_TEXT"), (Uri) intent.getParcelableExtra("EXTRA_IMAGE_URI"));
    }

    TweetUploadService(c cVar) {
        super("TweetUploadService");
        this.f27543o = cVar;
    }
}
