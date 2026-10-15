package y8;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.share.ShareApi;
import com.facebook.share.Sharer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.widget.ShareDialog;
import com.tebakgambar.R;
import com.twitter.sdk.android.core.services.StatusesService;
import com.vungle.mediation.BuildConfig;
import j8.a0;
import j8.w0;
import ja.b0;
import java.io.IOException;

/* JADX INFO: compiled from: SocialMediaSharer.java */
/* JADX INFO: loaded from: classes2.dex */
public class w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f37069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Activity f37071d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a0 f37072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b9.e f37073f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.twitter.sdk.android.core.a0 f37074g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CallbackManager f37075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.twitter.sdk.android.core.c<com.twitter.sdk.android.core.a0> f37076i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f37077j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f37078k = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37068a = BuildConfig.FLAVOR;

    /* JADX INFO: compiled from: SocialMediaSharer.java */
    class a implements w0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w0 f37079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Uri f37080b;

        a(w0 w0Var, Uri uri) {
            this.f37079a = w0Var;
            this.f37080b = uri;
        }

        @Override // j8.w0.a
        public void a() {
            this.f37079a.dismiss();
            w.this.y(this.f37080b);
        }

        @Override // j8.w0.a
        public void b() {
            this.f37079a.dismiss();
            w.this.B(this.f37080b);
        }

        @Override // j8.w0.a
        public void c() {
            this.f37079a.dismiss();
            w.this.x(this.f37080b);
        }

        @Override // j8.w0.a
        public void d() {
            this.f37079a.dismiss();
            w.this.z(this.f37080b);
        }
    }

    /* JADX INFO: compiled from: SocialMediaSharer.java */
    class b implements a0.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ a0 f37082a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Uri f37083b;

        b(a0 a0Var, Uri uri) {
            this.f37082a = a0Var;
            this.f37083b = uri;
        }

        @Override // j8.a0.d
        public void a() {
            this.f37082a.dismiss();
            w.this.y(this.f37083b);
        }

        @Override // j8.a0.d
        public void b() {
            this.f37082a.dismiss();
            w.this.B(this.f37083b);
        }

        @Override // j8.a0.d
        public void c() {
            this.f37082a.dismiss();
            w.this.x(this.f37083b);
        }
    }

    /* JADX INFO: compiled from: SocialMediaSharer.java */
    class c extends com.twitter.sdk.android.core.c<com.twitter.sdk.android.core.a0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Uri f37085a;

        c(Uri uri) {
            this.f37085a = uri;
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(com.twitter.sdk.android.core.y yVar) {
            if (w.this.f37069b != null) {
                w.this.f37069b.d(w.this.f37071d.getString(R.string.error_share_image), 1, this.f37085a);
            }
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(com.twitter.sdk.android.core.l<com.twitter.sdk.android.core.a0> lVar) {
            w.this.B(this.f37085a);
        }
    }

    /* JADX INFO: compiled from: SocialMediaSharer.java */
    class d implements a0.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Uri f37087a;

        d(Uri uri) {
            this.f37087a = uri;
        }

        @Override // j8.a0.c
        public void a() {
            if (w.this.f37072e == null || !w.this.f37072e.isShowing()) {
                return;
            }
            w.this.f37072e.dismiss();
        }

        @Override // j8.a0.c
        public void b(String str) {
            try {
                if (w.this.f37070c == 0) {
                    w.this.q(str, this.f37087a);
                } else if (w.this.f37070c == 1) {
                    w.this.t(str, this.f37087a);
                } else if (w.this.f37070c == 2) {
                    w.this.r(str, this.f37087a);
                } else if (w.this.f37070c == 3) {
                    w.this.s(str, this.f37087a);
                }
            } catch (IOException e10) {
                com.google.firebase.crashlytics.a.a().d(e10);
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: compiled from: SocialMediaSharer.java */
    class e extends com.twitter.sdk.android.core.c<f9.i> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.twitter.sdk.android.core.p f37089a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f37090b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Uri f37091c;

        /* JADX INFO: compiled from: SocialMediaSharer.java */
        class a extends com.twitter.sdk.android.core.c<f9.n> {
            a() {
            }

            @Override // com.twitter.sdk.android.core.c
            public void c(com.twitter.sdk.android.core.y yVar) {
                if (w.this.f37069b != null) {
                    w.this.f37069b.d(w.this.f37071d.getString(R.string.error_share_image), 1, e.this.f37091c);
                }
            }

            @Override // com.twitter.sdk.android.core.c
            public void d(com.twitter.sdk.android.core.l<f9.n> lVar) {
                if (w.this.f37069b != null) {
                    w.this.f37069b.y(1, e.this.f37091c);
                }
                w.this.k();
            }
        }

        e(com.twitter.sdk.android.core.p pVar, String str, Uri uri) {
            this.f37089a = pVar;
            this.f37090b = str;
            this.f37091c = uri;
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(com.twitter.sdk.android.core.y yVar) {
            if (w.this.f37069b != null) {
                w.this.f37069b.d(w.this.f37071d.getString(R.string.error_share_image), 1, this.f37091c);
            }
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(com.twitter.sdk.android.core.l<f9.i> lVar) {
            StatusesService statusesServiceG = this.f37089a.g();
            String str = this.f37090b;
            Boolean bool = Boolean.FALSE;
            statusesServiceG.update(str, null, bool, null, null, null, Boolean.TRUE, bool, lVar.f27482a.f29533b).v3(new a());
        }
    }

    /* JADX INFO: compiled from: SocialMediaSharer.java */
    class f implements FacebookCallback<Sharer.Result> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Uri f37094o;

        f(Uri uri) {
            this.f37094o = uri;
        }

        @Override // com.facebook.FacebookCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onSuccess(Sharer.Result result) {
            if (w.this.f37069b != null) {
                w.this.f37069b.y(0, this.f37094o);
            }
            w.this.k();
        }

        @Override // com.facebook.FacebookCallback
        public void onCancel() {
            if (w.this.f37069b != null) {
                w.this.f37069b.d(w.this.f37071d.getString(R.string.error_share_image), 0, this.f37094o);
            }
        }

        @Override // com.facebook.FacebookCallback
        public void onError(FacebookException facebookException) {
            if (w.this.f37069b != null) {
                w.this.f37069b.d(w.this.f37071d.getString(R.string.error_share_image), 0, this.f37094o);
            }
        }
    }

    /* JADX INFO: compiled from: SocialMediaSharer.java */
    public interface g {
        void d(String str, int i10, Uri uri);

        void y(int i10, Uri uri);
    }

    public w(Activity activity) {
        this.f37071d = activity;
    }

    private void C(Uri uri) {
        a0 a0Var = new a0(this.f37071d, R.style.CustomDialog);
        this.f37072e = a0Var;
        a0Var.J = m();
        this.f37072e.d(new d(uri));
        this.f37072e.p(this.f37070c);
        this.f37072e.o(l(), false);
        this.f37072e.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        a0 a0Var = this.f37072e;
        if (a0Var != null) {
            a0Var.dismiss();
            this.f37072e = null;
        }
    }

    private String l() {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(this.f37068a)) {
            sb.append(" ");
            sb.append(this.f37068a);
        }
        if (this.f37077j) {
            sb.append(" ");
            sb.append("#MainTebakGambar");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str, Uri uri) {
        SharePhotoContent sharePhotoContentBuild = new SharePhotoContent.Builder().addPhoto(new SharePhoto.Builder().setImageUrl(uri).setCaption(str).build()).build();
        if (this.f37075h == null) {
            this.f37075h = CallbackManager.Factory.create();
        }
        ShareDialog shareDialog = new ShareDialog(this.f37071d);
        f fVar = new f(uri);
        if (shareDialog.canShow(sharePhotoContentBuild)) {
            shareDialog.show(sharePhotoContentBuild, ShareDialog.Mode.NATIVE);
            shareDialog.registerCallback(this.f37075h, fVar);
        } else if (!shareDialog.canShow(sharePhotoContentBuild)) {
            if (this.f37069b != null) {
                ShareApi.share(sharePhotoContentBuild, fVar);
            }
        } else {
            g gVar = this.f37069b;
            if (gVar != null) {
                gVar.d(this.f37071d.getString(R.string.facebook_not_found), 0, uri);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(String str, Uri uri) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setPackage("com.instagram.android");
        this.f37071d.startActivity(intent);
        k();
        g gVar = this.f37069b;
        if (gVar != null) {
            gVar.y(2, uri);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(String str, Uri uri) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.TEXT", str);
        this.f37071d.startActivity(intent);
        k();
        g gVar = this.f37069b;
        if (gVar != null) {
            gVar.y(3, uri);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(String str, Uri uri) throws IOException {
        com.twitter.sdk.android.core.p pVarD = com.twitter.sdk.android.core.x.h().d(this.f37074g);
        pVarD.e().upload(b0.create(ja.v.d("image/*"), h.a(this.f37071d, uri)), null, null).v3(new e(pVarD, str, uri));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(Uri uri) {
        this.f37070c = 3;
        C(uri);
    }

    public void A(Uri uri) {
        this.f37070c = 3;
        s(BuildConfig.FLAVOR, uri);
    }

    public void B(Uri uri) {
        this.f37070c = 1;
        if (this.f37076i == null) {
            this.f37076i = new c(uri);
        }
        if (y8.a.e()) {
            this.f37074g = (com.twitter.sdk.android.core.a0) com.twitter.sdk.android.core.x.h().i().c();
            C(uri);
        } else {
            if (this.f37073f == null) {
                this.f37073f = new b9.e();
            }
            this.f37073f.d();
            this.f37073f.a(this.f37071d, this.f37076i);
        }
    }

    public String m() {
        return this.f37068a;
    }

    public String n() {
        int i10 = this.f37070c;
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? "other" : FacebookSdk.INSTAGRAM : "twitter" : "facebook";
    }

    public void o(int i10, int i11, Intent intent) {
        b9.e eVar = this.f37073f;
        if (eVar != null) {
            eVar.f(i10, i11, intent);
        }
        CallbackManager callbackManager = this.f37075h;
        if (callbackManager != null) {
            callbackManager.onActivityResult(i10, i11, intent);
        }
    }

    public void p() {
        this.f37071d = null;
    }

    public void u(g gVar) {
        this.f37069b = gVar;
    }

    public void v(String str) {
        if (str != null) {
            this.f37068a = str;
        }
    }

    public void w(Uri uri) {
        if (this.f37078k) {
            w0 w0Var = new w0(this.f37071d);
            w0Var.l(new a(w0Var, uri));
            w0Var.show();
        } else {
            a0 a0Var = new a0(this.f37071d, R.style.CustomDialog);
            a0Var.e(new b(a0Var, uri));
            a0Var.show();
        }
    }

    public void x(Uri uri) {
        this.f37070c = 0;
        if (y8.a.c(this.f37071d)) {
            C(uri);
            return;
        }
        g gVar = this.f37069b;
        if (gVar != null) {
            gVar.d(this.f37071d.getString(R.string.facebook_not_found), 2, uri);
        }
    }

    public void y(Uri uri) {
        this.f37070c = 2;
        if (y8.a.d(this.f37071d)) {
            C(uri);
            return;
        }
        g gVar = this.f37069b;
        if (gVar != null) {
            gVar.d(this.f37071d.getString(R.string.instagram_not_found), 2, uri);
        }
    }
}
