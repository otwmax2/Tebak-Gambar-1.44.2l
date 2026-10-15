package com.tebakgambar.sticker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.j;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.R;
import com.tebakgambar.model.response.StickerCampaignResult;
import java.util.ArrayList;
import java.util.List;
import o8.s0;

/* JADX INFO: compiled from: StickerCampaignListAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends RecyclerView.h<c> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f27210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f27211e;

    /* JADX INFO: compiled from: StickerCampaignListAdapter.java */
    class a extends j.a {
        a() {
        }

        @Override // androidx.databinding.j.a
        public void d(androidx.databinding.j jVar, int i10) {
            g.this.i();
        }
    }

    /* JADX INFO: compiled from: StickerCampaignListAdapter.java */
    interface b {
        void c(StickerCampaignResult.CampaignDetail campaignDetail);
    }

    /* JADX INFO: compiled from: StickerCampaignListAdapter.java */
    public class c extends RecyclerView.e0 implements View.OnClickListener {
        private StickerCampaignResult.CampaignDetail I;
        private s0 J;

        public c(View view) {
            super(view);
            s0 s0Var = (s0) androidx.databinding.g.a(view);
            this.J = s0Var;
            s0Var.O.setOnClickListener(this);
        }

        void W(StickerCampaignResult.CampaignDetail campaignDetail) {
            this.I = campaignDetail;
            v1.g.v(this.J.S().getContext()).x(campaignDetail.coverImageUrl).Q(R.drawable.loading_campaign_detail).p(this.J.O);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (g.this.f27211e == null || this.I == null) {
                return;
            }
            g.this.f27211e.c(this.I);
        }
    }

    /* JADX INFO: compiled from: StickerCampaignListAdapter.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.databinding.m<List<StickerCampaignResult.CampaignDetail>> f27213a = new androidx.databinding.m<>(new ArrayList());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int d() {
        return this.f27210d.f27213a.y().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void k(c cVar, int i10) {
        cVar.W(this.f27210d.f27213a.y().get(i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public c m(ViewGroup viewGroup, int i10) {
        return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_item_campaign_detail, viewGroup, false));
    }

    public void y(b bVar) {
        this.f27211e = bVar;
    }

    public void z(d dVar) {
        this.f27210d = dVar;
        dVar.f27213a.h(new a());
        i();
    }
}
