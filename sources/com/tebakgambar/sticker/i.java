package com.tebakgambar.sticker;

import android.app.Application;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.model.response.StickerCampaignResult;
import com.tebakgambar.network.TebakGambarApi;
import com.tebakgambar.sticker.g;
import g5.s;
import java.util.concurrent.Callable;
import y8.u;

/* JADX INFO: compiled from: StickerCampaignListViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends androidx.lifecycle.a implements g.b {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.databinding.m<String> f27215s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.databinding.l f27216t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public androidx.databinding.m<String> f27217u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public u<Integer> f27218v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public g.d f27219w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private StickerCampaignResult f27220x;

    /* JADX INFO: compiled from: StickerCampaignListViewModel.java */
    class a implements wa.d<ApiResponse3<StickerCampaignResult>> {
        a() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<StickerCampaignResult>> bVar, wa.l<ApiResponse3<StickerCampaignResult>> lVar) {
            if (!lVar.f() || lVar.a() == null) {
                i.this.f27216t.z(false);
                i.this.f27217u.z("Invalid response. Please try again.");
            } else {
                i.this.p(lVar.a().data);
                i.this.f27216t.z(false);
                i.this.f27217u.z(null);
            }
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<StickerCampaignResult>> bVar, Throwable th) {
            i.this.f27216t.z(false);
            i.this.f27217u.z(th.getLocalizedMessage());
        }
    }

    public i(Application application) {
        super(application);
        this.f27215s = new androidx.databinding.m<>();
        this.f27216t = new androidx.databinding.l();
        this.f27217u = new androidx.databinding.m<>();
        this.f27218v = new u<>();
        this.f27219w = new g.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object l() throws Exception {
        TebakGambarApi.b().getCampaign().v3(new a());
        return null;
    }

    private void o() {
        s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null || sVarB.c4()) {
            this.f27216t.z(false);
            this.f27217u.z("Invalid User. Please try again");
        } else {
            this.f27217u.z(null);
            t1.h.d(new Callable() { // from class: com.tebakgambar.sticker.h
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f27214a.l();
                }
            });
        }
    }

    @Override // com.tebakgambar.sticker.g.b
    public void c(StickerCampaignResult.CampaignDetail campaignDetail) {
        if (campaignDetail.isEnabled) {
            m8.e.c("clickStickerListPage", "sticker list", "click on item sticker", "WA - " + campaignDetail.id);
            this.f27218v.n(Integer.valueOf(campaignDetail.id));
        }
    }

    public void m() {
        o();
    }

    public void n() {
        m8.e.c("viewStickerListPage", "sticker list", "view on sticker list", "WA");
        if (this.f27220x == null) {
            o();
        }
    }

    void p(StickerCampaignResult stickerCampaignResult) {
        this.f27220x = stickerCampaignResult;
        this.f27215s.z(stickerCampaignResult.title);
        this.f27219w.f27213a.z(stickerCampaignResult.campaignDetails);
    }
}
