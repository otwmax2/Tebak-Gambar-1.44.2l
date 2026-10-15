package l8;

import android.app.Application;
import android.content.SharedPreferences;
import androidx.databinding.l;
import androidx.databinding.m;
import androidx.databinding.n;
import com.tebakgambar.model.constant.SharedPreferencesKey;
import com.vungle.mediation.BuildConfig;
import j8.x;
import java.util.Date;
import y8.u;
import y8.y;

/* JADX INFO: compiled from: TGInAppReviewViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends x {
    public m<String> C;
    public m<String> D;
    public m<String> E;
    public m<String> F;
    public n G;
    public l H;
    public l I;
    u<Boolean> J;
    u<String> K;
    boolean L;
    private h8.a M;
    private boolean N;
    private boolean O;
    private int P;

    public e(Application application) {
        super(application);
        this.C = new m<>();
        this.D = new m<>();
        this.E = new m<>();
        this.F = new m<>();
        this.G = new n();
        this.H = new l();
        this.I = new l();
        this.J = new u<>();
        this.K = new u<>();
        this.P = 5;
    }

    private String G() {
        return "rating-" + Integer.toString(this.P);
    }

    public void E() {
        this.N = true;
        m8.e.c("clickOnCloseBottomSheet", "bottom sheet", "click on close", G());
        if (this.L) {
            N();
            this.J.n(Boolean.TRUE);
        }
    }

    public int F() {
        return this.P;
    }

    void H(h8.a aVar) {
        this.M = aVar;
        this.C.z("Seru banget kan main tebak gambar?");
        this.D.z("Berapa bintang sih yang kamu kasih buat aku?");
        this.F.z("KIRIM");
        this.G.z(-1);
        boolean z10 = aVar.f30284o;
        this.L = z10;
        this.H.z(z10);
        this.I.z(this.L);
    }

    void I() {
        m8.e.c("viewBottomSheet", "bottom sheet", "view on bottom sheet", G());
    }

    void J() {
        if (this.N) {
            return;
        }
        this.O = true;
        N();
        m8.e.c("dragOnCloseBottomSheet", "bottom sheet", "drag on close", G());
    }

    void K() {
        if (this.N || this.O) {
            return;
        }
        N();
        m8.e.c("tapOutsideOnCloseBottomSheet", "bottom sheet", "tap outside on close", G());
    }

    public void L() {
        m8.e.c("clickOnCTABottomSheet", "bottom sheet", "click on cta", G());
        if (this.P == 0) {
            return;
        }
        this.K.n(BuildConfig.FLAVOR);
    }

    public void M(int i10) {
        this.P = i10;
    }

    public void N() {
        if (this.P < 4) {
            return;
        }
        SharedPreferences sharedPreferencesN = y.N(j());
        int i10 = sharedPreferencesN.getInt(SharedPreferencesKey.NUMBER_OF_REQUEST_IN_APP_REVIEW, 0) + 1;
        long time = new Date(System.currentTimeMillis()).getTime();
        SharedPreferences.Editor editorEdit = sharedPreferencesN.edit();
        editorEdit.putInt(SharedPreferencesKey.NUMBER_OF_REQUEST_IN_APP_REVIEW, i10);
        editorEdit.putLong("LAST_DATE_REQUEST_IN_APP_REVIEW", time);
        if (i10 == 1) {
            editorEdit.putLong(SharedPreferencesKey.FIRST_DATE_REQUEST_IN_APP_REVIEW, time);
        }
        editorEdit.apply();
    }
}
