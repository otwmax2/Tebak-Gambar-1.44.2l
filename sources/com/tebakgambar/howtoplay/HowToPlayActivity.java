package com.tebakgambar.howtoplay;

import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.lifecycle.k0;
import com.tebakgambar.R;
import j8.t;
import o8.g;

/* JADX INFO: loaded from: classes2.dex */
public class HowToPlayActivity extends t {
    boolean jumpToQuiz;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private g f26894y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private r8.b f26895z;

    class a extends ClickableSpan {
        a() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            y8.a.i(HowToPlayActivity.this);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(-1);
            textPaint.setUnderlineText(true);
        }
    }

    class b extends ClickableSpan {
        b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            y8.a.m(HowToPlayActivity.this);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(-1);
            textPaint.setUnderlineText(true);
        }
    }

    class c extends ClickableSpan {
        c() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            y8.a.k(HowToPlayActivity.this);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(-1);
            textPaint.setUnderlineText(true);
        }
    }

    class d extends ClickableSpan {
        d() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            y8.a.j(HowToPlayActivity.this);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(-1);
            textPaint.setUnderlineText(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V0() {
        g gVar = this.f26894y;
        gVar.R.smoothScrollTo(0, gVar.U.getBottom());
    }

    private void W0() {
        SpannableString spannableString = new SpannableString("FACEBOOK");
        spannableString.setSpan(new a(), 0, spannableString.length(), 33);
        SpannableString spannableString2 = new SpannableString("TWITTER");
        spannableString2.setSpan(new b(), 0, spannableString2.length(), 33);
        SpannableString spannableString3 = new SpannableString("LINE");
        spannableString3.setSpan(new c(), 0, spannableString3.length(), 33);
        SpannableString spannableString4 = new SpannableString("INSTAGRAM");
        spannableString4.setSpan(new d(), 0, spannableString4.length(), 33);
        this.f26894y.T.setMovementMethod(LinkMovementMethod.getInstance());
        this.f26894y.T.append(" ");
        this.f26894y.T.append(spannableString);
        this.f26894y.T.append(" , ");
        this.f26894y.T.append(spannableString3);
        this.f26894y.T.append(" , ");
        this.f26894y.T.append(spannableString2);
        this.f26894y.T.append(getString(R.string.suffix_OR));
        this.f26894y.T.append(spannableString4);
        this.f26894y.T.append(getString(R.string.postfix_TEBAK_GAMBAR));
        this.f26894y.T.append(getBaseContext().getResources().getString(R.string.label_tutorial_aturan_kuis_selfie_1_2));
        if (this.jumpToQuiz) {
            this.f26894y.R.post(new Runnable() { // from class: r8.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34338o.V0();
                }
            });
        }
        this.f26894y.W.append(" ");
        this.f26894y.V.append(" ");
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f26895z = (r8.b) k0.b(this).a(r8.b.class);
        g gVar = (g) androidx.databinding.g.j(this, R.layout.activity_how_to_play);
        this.f26894y = gVar;
        gVar.u0(this.f26895z);
        y2.a.b(this);
        W0();
        D0(R.id.frameAds);
    }
}
