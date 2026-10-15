package com.tebakgambar.splash;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.tebakgambar.Henson;
import com.tebakgambar.model.request.TGRemoteMessage;
import j8.t;
import t1.f;
import t1.h;

/* JADX INFO: loaded from: classes2.dex */
public class SplashActivity extends t {

    class a implements OnFailureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Intent f27187a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TGRemoteMessage f27188b;

        a(Intent intent, TGRemoteMessage tGRemoteMessage) {
            this.f27187a = intent;
            this.f27188b = tGRemoteMessage;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void b(Exception exc) {
            SplashActivity.this.V0(this.f27187a.getData(), this.f27188b);
        }
    }

    class b implements OnSuccessListener<a6.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Intent f27190a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TGRemoteMessage f27191b;

        b(Intent intent, TGRemoteMessage tGRemoteMessage) {
            this.f27190a = intent;
            this.f27191b = tGRemoteMessage;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onSuccess(a6.b bVar) {
            SplashActivity.this.V0(bVar != null ? bVar.a() : this.f27190a.getData(), this.f27191b);
        }
    }

    class c implements f<Intent, Object> {
        c() {
        }

        @Override // t1.f
        public Object a(h<Intent> hVar) throws Exception {
            SplashActivity.this.startActivity(hVar.s());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0(Uri uri, TGRemoteMessage tGRemoteMessage) {
        if (uri != null) {
            y8.f.j(this, uri).x(new c());
        } else if (tGRemoteMessage != null) {
            startActivity(Henson.with(this).b().remoteMessage(tGRemoteMessage).build());
        } else {
            W0();
        }
    }

    private void W0() {
        if (m8.a.f().q()) {
            startActivity(Henson.with(this).b().build());
        } else {
            startActivity(Henson.with(this).n().build());
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TGRemoteMessage tGRemoteMessageRemoteMessageFromExtras = TGRemoteMessage.remoteMessageFromExtras(getIntent().getExtras());
        Intent intent = getIntent();
        if (intent != null) {
            a6.a.b().a(getIntent()).h(this, new b(intent, tGRemoteMessageRemoteMessageFromExtras)).e(this, new a(intent, tGRemoteMessageRemoteMessageFromExtras));
        } else {
            W0();
        }
    }
}
