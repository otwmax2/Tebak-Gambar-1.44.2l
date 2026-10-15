package com.tebakgambar;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.activity.g;
import androidx.fragment.app.e;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.model.ResultEventClue;
import com.tebakgambar.model.ResultEvents;
import com.tebakgambar.question.EventQuestionActivity;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class AdsActivity extends e implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ImageView f26741o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    CustomButton f26742p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f26743q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    String f26744r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ResultEvents f26745s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ResultEventClue f26746t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f26747u = false;

    class a extends FullScreenContentCallback {
        a() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void b() {
            super.b();
            AdsActivity.this.F();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void e() {
            super.e();
            j8.b.l().g();
        }
    }

    class b extends g {
        b(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            AdsActivity.this.F();
        }
    }

    private void D() {
        Intent intentBuild = Henson.with(this).e().build();
        intentBuild.setFlags(603979776);
        startActivity(intentBuild);
    }

    private void E() {
        getOnBackPressedDispatcher().b(new b(true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        if (!this.f26747u) {
            D();
        } else if (this.f26746t != null) {
            startActivity(new Intent(getBaseContext(), (Class<?>) EventQuestionActivity.class).putExtra("event_clue", this.f26746t));
        } else {
            startActivity(new Intent(getBaseContext(), (Class<?>) EventQuestionActivity.class).putExtra("event_data", this.f26745s).putExtra("isMainLagi", true));
        }
        finish();
    }

    private void G() {
        j8.b.l().t(new a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f26742p) {
            D();
            finish();
        } else if (view == this.f26741o && this.f26743q == 1) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://j.mp/1F98Noe")));
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ads);
        this.f26742p = (CustomButton) findViewById(R.id.buttonLewati);
        this.f26741o = (ImageView) findViewById(R.id.imageViewAds);
        this.f26743q = getIntent().getIntExtra("level", 0);
        this.f26745s = (ResultEvents) getIntent().getParcelableExtra("event_data");
        this.f26746t = (ResultEventClue) getIntent().getExtras().getParcelable("event_clue");
        this.f26747u = getIntent().getBooleanExtra("isMainLagi", false);
        ResultEventClue resultEventClue = this.f26746t;
        if (resultEventClue != null) {
            this.f26744r = resultEventClue.id;
        } else {
            ResultEvents resultEvents = this.f26745s;
            if (resultEvents != null) {
                this.f26744r = resultEvents.id;
            }
        }
        G();
        if (y.W(this) && j8.b.l().m()) {
            j8.b.l().z(this);
        } else {
            F();
        }
        E();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        j8.b.l().i();
    }
}
