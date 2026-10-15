package com.twitter.sdk.android.tweetcomposer;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.twitter.sdk.android.core.a0;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.x;
import com.twitter.sdk.android.core.y;
import com.twitter.sdk.android.tweetcomposer.ComposerActivity;
import f9.p;

/* JADX INFO: compiled from: ComposerController.java */
/* JADX INFO: loaded from: classes2.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ComposerView f27549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a0 f27550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Uri f27551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final ComposerActivity.a f27552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final d f27553e;

    /* JADX INFO: renamed from: com.twitter.sdk.android.tweetcomposer.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ComposerController.java */
    class C0139a extends com.twitter.sdk.android.core.c<p> {
        C0139a() {
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            a.this.f27549a.setProfilePhotoView(null);
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<p> lVar) {
            a.this.f27549a.setProfilePhotoView(lVar.f27482a);
        }
    }

    /* JADX INFO: compiled from: ComposerController.java */
    interface b {
        void a();

        void b(String str);

        void c(String str);
    }

    /* JADX INFO: compiled from: ComposerController.java */
    class c implements b {
        c() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.b
        public void a() {
            a.this.d();
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.b
        public void b(String str) {
            int i10 = a.this.i(str);
            a.this.f27549a.setCharCount(a.e(i10));
            if (a.c(i10)) {
                a.this.f27549a.setCharCountTextStyle(j.f27576c);
            } else {
                a.this.f27549a.setCharCountTextStyle(j.f27575b);
            }
            a.this.f27549a.k(a.b(i10));
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.b
        public void c(String str) {
            Intent intent = new Intent(a.this.f27549a.getContext(), (Class<?>) TweetUploadService.class);
            intent.putExtra("EXTRA_USER_TOKEN", a.this.f27550b.a());
            intent.putExtra("EXTRA_TWEET_TEXT", str);
            intent.putExtra("EXTRA_IMAGE_URI", a.this.f27551c);
            a.this.f27549a.getContext().startService(intent);
            a.this.f27552d.a();
        }
    }

    /* JADX INFO: compiled from: ComposerController.java */
    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a9.d f27556a = new a9.d();

        d() {
        }

        com.twitter.sdk.android.core.p a(a0 a0Var) {
            return x.h().d(a0Var);
        }

        a9.d b() {
            return this.f27556a;
        }
    }

    a(ComposerView composerView, a0 a0Var, Uri uri, String str, String str2, ComposerActivity.a aVar) {
        this(composerView, a0Var, uri, str, str2, aVar, new d());
    }

    static boolean b(int i10) {
        return i10 > 0 && i10 <= 140;
    }

    static boolean c(int i10) {
        return i10 > 140;
    }

    static int e(int i10) {
        return 140 - i10;
    }

    String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    void d() {
        f();
        this.f27552d.a();
    }

    void f() {
        Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL");
        intent.setPackage(this.f27549a.getContext().getPackageName());
        this.f27549a.getContext().sendBroadcast(intent);
    }

    void g(Uri uri) {
        if (uri != null) {
            this.f27549a.setImageView(uri);
        }
    }

    void h() {
        AccountService accountServiceD = this.f27553e.a(this.f27550b).d();
        Boolean bool = Boolean.FALSE;
        accountServiceD.verifyCredentials(bool, Boolean.TRUE, bool).v3(new C0139a());
    }

    int i(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return this.f27553e.b().a(str);
    }

    a(ComposerView composerView, a0 a0Var, Uri uri, String str, String str2, ComposerActivity.a aVar, d dVar) {
        this.f27549a = composerView;
        this.f27550b = a0Var;
        this.f27551c = uri;
        this.f27552d = aVar;
        this.f27553e = dVar;
        composerView.setCallbacks(new c());
        composerView.setTweetText(a(str, str2));
        h();
        g(uri);
    }
}
