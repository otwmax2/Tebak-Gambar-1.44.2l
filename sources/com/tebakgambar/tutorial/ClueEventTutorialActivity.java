package com.tebakgambar.tutorial;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import androidx.databinding.g;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import com.tebakgambar.R;
import com.tebakgambar.model.ResultEventClue;
import com.tebakgambar.question.RegularQuestionActivity;
import j8.t;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class ClueEventTutorialActivity extends t {
    ResultEventClue clueEvent;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    o8.a f27236y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    d f27237z;

    public class a {
        public a() {
        }

        public void a(View view) {
            ClueEventTutorialActivity clueEventTutorialActivity = ClueEventTutorialActivity.this;
            y.f0(clueEventTutorialActivity, clueEventTutorialActivity.clueEvent.id);
            ClueEventTutorialActivity.this.startActivity(new Intent(ClueEventTutorialActivity.this.getBaseContext(), (Class<?>) RegularQuestionActivity.class).putExtra("id_event", ClueEventTutorialActivity.this.clueEvent.id).putExtra("isClue", true).putExtra("event_clue", ClueEventTutorialActivity.this.clueEvent));
            ClueEventTutorialActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W0(View view) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(this.f27237z.f27246s.ads_url));
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X0(boolean z10) {
        if (z10) {
            h0().U(this.f27237z.f27246s.ads_banner, null, new View.OnClickListener() { // from class: com.tebakgambar.tutorial.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f27240o.W0(view);
                }
            });
        } else {
            h0().R();
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f27237z = (d) k0.b(this).a(d.class);
        o8.a aVar = (o8.a) g.j(this, R.layout.activity_clue_event_tutorial);
        this.f27236y = aVar;
        aVar.w0(this.f27237z);
        this.f27236y.u0(new a());
        y2.a.b(this);
        this.f27237z.k(this.clueEvent);
        this.f27237z.f27247t.h(this, new u() { // from class: com.tebakgambar.tutorial.b
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f27241a.X0(((Boolean) obj).booleanValue());
            }
        });
        this.f27236y.Q.setAdapter((ListAdapter) new c(this, R.layout.row_item_tips_bermain, this.clueEvent.tutorial));
        this.f27236y.Q.setExpanded(true);
        D0(R.id.frameAds);
    }
}
