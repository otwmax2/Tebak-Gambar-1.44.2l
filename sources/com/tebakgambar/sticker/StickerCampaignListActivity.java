package com.tebakgambar.sticker;

import android.os.Bundle;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import androidx.recyclerview.widget.GridLayoutManager;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.model.response.StickerCampaignResult;
import j8.t;
import o8.y;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignListActivity extends t {
    public StickerCampaignResult stickerCampaignResult;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private y f27197y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private i f27198z;

    /* JADX INFO: Access modifiers changed from: private */
    public void V0(Integer num) {
        if (num == null) {
            return;
        }
        startActivity(Henson.with(this).l().campaignDetailId(num).a());
    }

    private void W0() {
        this.f27197y.Q.setLayoutManager(new GridLayoutManager(this, 3));
        g gVar = new g();
        gVar.z(this.f27198z.f27219w);
        gVar.y(this.f27198z);
        this.f27197y.Q.setAdapter(gVar);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f27198z = (i) k0.b(this).a(i.class);
        y yVar = (y) androidx.databinding.g.j(this, R.layout.activity_sticker_campaign_list);
        this.f27197y = yVar;
        yVar.u0(this.f27198z);
        y2.a.b(this);
        W0();
        this.f27198z.f27218v.h(this, new u() { // from class: com.tebakgambar.sticker.f
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f27209a.V0((Integer) obj);
            }
        });
        StickerCampaignResult stickerCampaignResult = this.stickerCampaignResult;
        if (stickerCampaignResult != null) {
            this.f27198z.p(stickerCampaignResult);
        }
        this.f27198z.n();
        D0(R.id.frameAds);
    }
}
