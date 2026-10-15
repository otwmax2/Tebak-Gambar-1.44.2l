package com.tebakgambar.sticker;

import android.app.Application;
import android.graphics.drawable.GradientDrawable;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.database.StickerPackDatabase;
import com.tebakgambar.model.RequestHeader;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.network.TebakGambarApi;
import com.tebakgambar.sticker.model.StickerBundle;
import com.tebakgambar.sticker.model.StickerCampaignDetail;
import com.tebakgambar.sticker.model.StickerPack;
import com.vungle.mediation.BuildConfig;
import g5.s;
import j8.x;
import java.util.List;
import java.util.concurrent.Callable;
import y8.u;
import y8.y;

/* JADX INFO: compiled from: StickerCampaignViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class n extends x {
    public androidx.databinding.l C;
    public androidx.databinding.m<String> D;
    public androidx.databinding.m<String> E;
    public androidx.databinding.m<String> F;
    public androidx.databinding.n G;
    public androidx.databinding.n H;
    public androidx.databinding.n I;
    public androidx.databinding.n J;
    public androidx.databinding.m<String> K;
    public androidx.databinding.n L;
    public androidx.databinding.m<GradientDrawable> M;
    public androidx.databinding.m<String> N;
    public androidx.databinding.m<String> O;
    public androidx.databinding.n P;
    public u<Boolean> Q;
    private StickerCampaignDetail R;
    private int S;

    /* JADX INFO: compiled from: StickerCampaignViewModel.java */
    class a implements wa.d<ApiResponse3<StickerCampaignDetail>> {
        a() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<StickerCampaignDetail>> bVar, wa.l<ApiResponse3<StickerCampaignDetail>> lVar) {
            if (!lVar.f() || lVar.a() == null) {
                n.this.C.z(false);
                n.this.D.z("Invalid response. Please try again.");
            } else {
                n.this.X(lVar.a().data);
                n.this.C.z(false);
                n.this.D.z(null);
            }
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<StickerCampaignDetail>> bVar, Throwable th) {
            n.this.C.z(false);
            n.this.D.z(th.getLocalizedMessage());
        }
    }

    public n(Application application) {
        super(application);
        this.C = new androidx.databinding.l();
        this.D = new androidx.databinding.m<>();
        this.E = new androidx.databinding.m<>();
        this.F = new androidx.databinding.m<>();
        this.G = new androidx.databinding.n();
        this.H = new androidx.databinding.n();
        this.I = new androidx.databinding.n();
        this.J = new androidx.databinding.n();
        this.K = new androidx.databinding.m<>();
        this.L = new androidx.databinding.n();
        this.M = new androidx.databinding.m<>();
        this.N = new androidx.databinding.m<>();
        this.O = new androidx.databinding.m<>();
        this.P = new androidx.databinding.n();
        this.Q = new u<>();
        this.S = 0;
    }

    private String K(List<String> list) {
        if (list == null) {
            return BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        for (int i10 = 1; i10 <= list.size(); i10++) {
            sb.append(list.get(i10 - 1));
            sb.append("\n");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void O() throws Exception {
        for (StickerPack stickerPack : this.R.stickerBundle.stickerPacks) {
            StickerBundle stickerBundle = this.R.stickerBundle;
            stickerPack.androidPlayStoreLink = stickerBundle.androidPlayStoreLink;
            stickerPack.iosAppStoreLink = stickerBundle.iosAppStoreLink;
        }
        StickerPackDatabase.C(j()).D().b(this.R.stickerBundle.stickerPacks);
        StickerContentProvider.i(j());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h P(t1.h hVar) throws Exception {
        StickerPack stickerPack = this.R.stickerBundle.stickerPacks.get(0);
        return stickerPack.isDownloaded(j()) ? t1.h.q(null) : stickerPack.download(j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q(Task task) {
        if (!task.t() || task.p() == null) {
            this.C.z(false);
            this.D.z("Invalid User. Please try again");
            return;
        }
        String strC = ((g5.u) task.p()).c();
        TebakGambarApi.b().getCampaignDetail(RequestHeader.create(strC), this.S + BuildConfig.FLAVOR).v3(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object R(s sVar) throws Exception {
        sVar.W3(false).c(new OnCompleteListener() { // from class: com.tebakgambar.sticker.j
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f27222a.Q(task);
            }
        });
        return null;
    }

    private void W() {
        final s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            this.C.z(false);
            this.D.z("Invalid User. Please try again");
        } else {
            this.C.z(true);
            this.D.z(null);
            t1.h.d(new Callable() { // from class: com.tebakgambar.sticker.l
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f27224a.R(sVarB);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(StickerCampaignDetail stickerCampaignDetail) {
        this.R = stickerCampaignDetail;
        Application applicationJ = j();
        StickerCampaignDetail.Button button = stickerCampaignDetail.shareButton;
        if (button != null) {
            this.E.z(button.title);
            this.G.z(button.getBackgroundColor(applicationJ));
            this.I.z(button.getTextColor(applicationJ));
        }
        StickerCampaignDetail.Button button2 = stickerCampaignDetail.claimButton;
        if (button2 != null) {
            this.F.z(button2.title);
            this.H.z(button2.getBackgroundColor(applicationJ));
            this.J.z(button2.getTextColor(applicationJ));
        }
        this.K.z(stickerCampaignDetail.bannerImageUrl);
        this.L.z(stickerCampaignDetail.getBackgroundColor(applicationJ));
        StickerCampaignDetail.Term term = stickerCampaignDetail.term;
        if (term != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(term.getBackgroundColor(applicationJ));
            gradientDrawable.setCornerRadius(y.l(applicationJ, Float.valueOf(16.0f)));
            this.M.z(gradientDrawable);
            this.N.z(term.title);
            this.O.z(K(term.points));
            this.P.z(term.getTextColor(applicationJ));
        }
        if (!stickerCampaignDetail.isNeedLogin || q()) {
            return;
        }
        this.f30908w.n(Boolean.TRUE);
    }

    t1.h<Void> J() {
        return t1.h.d(new Callable() { // from class: com.tebakgambar.sticker.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f27223a.O();
            }
        }).l(new t1.f() { // from class: com.tebakgambar.sticker.m
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f27226a.P(hVar);
            }
        });
    }

    String L() {
        String str;
        StickerCampaignDetail stickerCampaignDetail = this.R;
        return (stickerCampaignDetail == null || (str = stickerCampaignDetail.shareText) == null) ? BuildConfig.FLAVOR : str;
    }

    String M() {
        StickerBundle stickerBundle;
        List<StickerPack> list;
        StickerCampaignDetail stickerCampaignDetail = this.R;
        return (stickerCampaignDetail == null || (stickerBundle = stickerCampaignDetail.stickerBundle) == null || (list = stickerBundle.stickerPacks) == null) ? BuildConfig.FLAVOR : list.get(0).identifier;
    }

    String N() {
        StickerBundle stickerBundle;
        StickerCampaignDetail stickerCampaignDetail = this.R;
        return (stickerCampaignDetail == null || (stickerBundle = stickerCampaignDetail.stickerBundle) == null || stickerBundle.stickerPacks.isEmpty()) ? BuildConfig.FLAVOR : this.R.stickerBundle.stickerPacks.get(0).name;
    }

    public void S() {
        W();
    }

    public void T() {
        m8.e.c("viewStickerDetailPage", "sticker detail", "click on use sticker", "WA - " + this.S);
    }

    void U() {
        m8.e.c("viewStickerDetailPage", "sticker detail", "view on sticker detail", "WA - " + this.S);
        W();
    }

    public void V() {
        m8.e.c("viewStickerDetailPage", "sticker detail", "click on share sticker", "WA - " + this.S);
    }

    void Y(int i10) {
        this.S = i10;
    }

    @Override // j8.x, s8.f.a
    public void a(s sVar) {
        if (sVar == null || sVar.c4()) {
            this.Q.n(Boolean.TRUE);
        } else {
            super.a(sVar);
        }
    }
}
