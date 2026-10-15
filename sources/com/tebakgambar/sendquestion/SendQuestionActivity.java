package com.tebakgambar.sendquestion;

import android.os.Bundle;
import android.view.View;
import androidx.databinding.g;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import com.tebakgambar.R;
import j8.c0;
import j8.t;
import o8.s;

/* JADX INFO: loaded from: classes2.dex */
public class SendQuestionActivity extends t {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    com.tebakgambar.sendquestion.a f27168y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    s f27169z;

    public class a {
        public a() {
        }

        public void c(View view) {
            final c0 c0VarI0 = SendQuestionActivity.this.I0();
            SendQuestionActivity.this.f27168y.r().h(SendQuestionActivity.this, new u() { // from class: v8.b
                @Override // androidx.lifecycle.u
                public final void d(Object obj) {
                    c0VarI0.dismiss();
                }
            });
        }
    }

    @Override // j8.t
    protected void A0(boolean z10) {
        super.A0(z10);
        this.f27169z.V.setVisibility(z10 ? 8 : 0);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f27168y = (com.tebakgambar.sendquestion.a) k0.b(this).a(com.tebakgambar.sendquestion.a.class);
        s sVar = (s) g.j(this, R.layout.activity_send_question);
        this.f27169z = sVar;
        sVar.w0(this.f27168y);
        this.f27169z.u0(new a());
        y2.a.b(this);
        this.f27168y.f27174v.h(this, new u() { // from class: v8.a
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35857a.O0((String) obj);
            }
        });
        D0(R.id.frameAds);
    }
}
