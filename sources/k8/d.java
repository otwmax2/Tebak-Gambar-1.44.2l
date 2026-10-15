package k8;

import android.app.Application;
import androidx.databinding.l;
import androidx.databinding.m;
import androidx.databinding.n;
import j8.x;
import m8.e;
import y8.u;

/* JADX INFO: compiled from: TGFreeAnswerDialogFragmentViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends x {
    public m<String> C;
    public m<String> D;
    public m<String> E;
    public n F;
    public l G;
    public l H;
    u<Boolean> I;
    u<Boolean> J;
    boolean K;
    private boolean L;
    private boolean M;

    public d(Application application) {
        super(application);
        this.C = new m<>();
        this.D = new m<>();
        this.E = new m<>();
        this.F = new n();
        this.G = new l();
        this.H = new l();
        this.I = new u<>();
        this.J = new u<>();
    }

    private String F() {
        return "offer free answer";
    }

    public void E() {
        this.L = true;
        e.c("clickOnCloseBottomSheet", "bottom sheet", "click on close", F());
        if (this.K) {
            this.I.n(Boolean.TRUE);
        }
    }

    void G() {
        this.C.z("Ayo isi lagi kunci jawaban kamu buat soal selanjutnya");
        this.E.z("ISI KUNCI JAWABAN");
        this.F.z(-1);
        this.K = true;
        this.G.z(true);
        this.H.z(this.K);
    }

    void H() {
        e.c("viewBottomSheet", "bottom sheet", "view on bottom sheet", F());
    }

    void I() {
        if (this.L) {
            return;
        }
        this.M = true;
        e.c("dragOnCloseBottomSheet", "bottom sheet", "drag on close", F());
    }

    void J() {
        if (this.L || this.M) {
            return;
        }
        e.c("tapOutsideOnCloseBottomSheet", "bottom sheet", "tap outside on close", F());
    }

    public void K() {
        e.c("clickOnCTABottomSheet", "bottom sheet", "click on cta", F());
        this.J.n(Boolean.TRUE);
    }
}
