package com.tebakgambar.story;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.fragment.app.w;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomImageView;
import com.tebakgambar.component.CustomTextView;
import com.vungle.mediation.BuildConfig;
import j8.k0;
import j8.t;
import m8.a;

/* JADX INFO: loaded from: classes2.dex */
public class StoryActivity extends t {
    private CustomTextView A;
    private CustomImageView B;
    private Animation C;
    private Animation D;
    private CustomButton E;
    private Handler F;
    private Runnable G;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private CustomTextView f27235z;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f27234y = 1;
    boolean H = false;

    private void W0() {
        this.F = new Handler();
        this.G = new Runnable() { // from class: x8.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f36557o.Y0();
            }
        };
        this.E.setOnClickListener(new View.OnClickListener() { // from class: x8.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f36556o.Z0(view);
            }
        });
    }

    private void X0() {
        this.f27235z = (CustomTextView) findViewById(R.id.textViewStory1);
        this.A = (CustomTextView) findViewById(R.id.textViewStory2);
        this.E = (CustomButton) findViewById(R.id.buttonSkip);
        this.B = (CustomImageView) findViewById(R.id.imageViewContoh);
        this.C = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in);
        this.D = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_out);
        w wVarM = getSupportFragmentManager().m();
        wVarM.m(R.id.frameAds, new k0());
        wVarM.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y0() {
        if (this.H) {
            return;
        }
        this.f27234y++;
        b1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z0(View view) {
        this.H = true;
        a1();
    }

    private void a1() {
        startActivity(Henson.with(this).b().build());
    }

    private void b1() {
        int i10 = this.f27234y;
        if (i10 < 8) {
            if (i10 < 5 || i10 > 6) {
                this.F.postDelayed(this.G, 2500L);
            } else {
                this.F.postDelayed(this.G, 3500L);
            }
        }
        switch (this.f27234y) {
            case 1:
                this.f27235z.setText(getResources().getString(R.string.label_story1));
                break;
            case 2:
                this.A.setText(getResources().getString(R.string.label_story2));
                break;
            case 3:
                this.f27235z.setText(getResources().getString(R.string.label_story3));
                break;
            case 4:
                this.A.setText(getResources().getString(R.string.label_contohin));
                break;
            case 5:
                this.B.setImageResource(R.drawable.ic_contoh_yellow);
                break;
            case 6:
                this.A.setText(getResources().getString(R.string.label_contoh));
                break;
            case 7:
                this.f27235z.setText(getResources().getString(R.string.label_story4));
                break;
            case 8:
                a1();
                return;
        }
        if (this.f27234y == 5) {
            this.B.setVisibility(0);
            this.f27235z.setText(BuildConfig.FLAVOR);
            this.A.startAnimation(this.D);
            this.B.startAnimation(this.C);
            this.A.setText(BuildConfig.FLAVOR);
            this.f27235z.setVisibility(0);
            return;
        }
        this.B.setAnimation(null);
        if (this.f27235z.getVisibility() == 0) {
            this.A.setVisibility(0);
            this.f27235z.setVisibility(8);
            this.B.setVisibility(8);
            this.f27235z.startAnimation(this.D);
            this.A.startAnimation(this.C);
        } else {
            this.f27235z.setVisibility(0);
            this.A.setVisibility(8);
            this.A.startAnimation(this.D);
            this.f27235z.startAnimation(this.C);
        }
        if (this.B.getVisibility() == 0) {
            this.B.startAnimation(this.D);
            this.B.setImageDrawable(null);
            this.f27235z.setVisibility(0);
            this.B.setVisibility(8);
        }
        if (this.B.getVisibility() == 0) {
            this.B.startAnimation(this.D);
            this.B.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_story);
        X0();
        W0();
        b1();
        a.f().D(true);
    }
}
