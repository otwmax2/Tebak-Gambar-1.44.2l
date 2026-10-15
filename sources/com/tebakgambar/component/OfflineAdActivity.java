package com.tebakgambar.component;

import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.activity.g;
import com.tebakgambar.R;
import j8.t;

/* JADX INFO: loaded from: classes2.dex */
public class OfflineAdActivity extends t {
    public boolean isFromIncreaseDialog = false;

    class a extends g {
        a(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() throws Throwable {
            if (OfflineAdActivity.this.isFromIncreaseDialog) {
                m8.a.f().k();
            }
            OfflineAdActivity.this.setResult(-1);
        }
    }

    private void W0() {
        getOnBackPressedDispatcher().b(new a(true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X0(View view) {
        y8.a.f(this, Uri.parse("http://tebakgambar.com/redirect/download/exit/exit-promote.html"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y0(View view) {
        onBackPressed();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_offline_ad);
        y2.a.b(this);
        ImageView imageView = (ImageView) findViewById(R.id.imageViewAd);
        ImageView imageView2 = (ImageView) findViewById(R.id.imageViewClose);
        v1.g.w(this).x("http://tebakgambar.com/redirect/download/exit/exit-image.png").J(R.drawable.ads_exit_image).p(imageView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: j8.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30920o.X0(view);
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: j8.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30913o.Y0(view);
            }
        });
        W0();
    }
}
