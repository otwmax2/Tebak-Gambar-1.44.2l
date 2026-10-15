package com.tebakgambar.sendquestion;

import android.app.Application;
import android.text.TextUtils;
import androidx.databinding.m;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.t;
import com.facebook.GraphResponse;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.R;
import com.tebakgambar.model.response.KirimSoalResult;
import com.tebakgambar.network.TebakGambarApi;
import com.vungle.mediation.BuildConfig;
import g5.s;
import java.util.concurrent.Callable;
import t1.h;
import wa.b;
import wa.d;
import wa.l;
import y8.g;
import y8.x;
import y8.y;

/* JADX INFO: compiled from: SendQuestionViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends androidx.lifecycle.a {
    public m<String> A;
    public m<String> B;
    public m<String> C;
    public m<String> D;
    public m<String> E;
    public m<String> F;
    public m<String> G;
    public m<String> H;
    public m<String> I;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f27171s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final String f27172t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    g f27173u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    t<String> f27174v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public m<String> f27175w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public m<String> f27176x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public m<String> f27177y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public m<String> f27178z;

    /* JADX INFO: renamed from: com.tebakgambar.sendquestion.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SendQuestionViewModel.java */
    class C0135a implements d<KirimSoalResult> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t f27179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f27180b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f27181c;

        C0135a(t tVar, String str, String str2) {
            this.f27179a = tVar;
            this.f27180b = str;
            this.f27181c = str2;
        }

        @Override // wa.d
        public void a(b<KirimSoalResult> bVar, l<KirimSoalResult> lVar) {
            this.f27179a.n(Boolean.TRUE);
            KirimSoalResult kirimSoalResultA = lVar.a();
            if (!lVar.f() || kirimSoalResultA == null || !GraphResponse.SUCCESS_KEY.equals(kirimSoalResultA.status)) {
                a aVar = a.this;
                aVar.f27174v.n(aVar.f27171s);
                return;
            }
            y.C0(a.this.j(), this.f27180b);
            y.d0(a.this.j(), this.f27181c);
            a aVar2 = a.this;
            aVar2.f27174v.n(aVar2.f27172t);
            a.this.o();
        }

        @Override // wa.d
        public void b(b<KirimSoalResult> bVar, Throwable th) {
            this.f27179a.n(Boolean.TRUE);
            a aVar = a.this;
            aVar.f27174v.n(aVar.f27171s);
        }
    }

    public a(Application application) {
        super(application);
        this.f27173u = new g();
        this.f27174v = new t<>();
        this.f27175w = new m<>();
        this.f27176x = new m<>();
        this.f27177y = new m<>();
        this.f27178z = new m<>();
        this.A = new m<>();
        this.B = new m<>();
        this.C = new m<>();
        this.D = new m<>();
        this.E = new m<>();
        this.F = new m<>();
        this.G = new m<>();
        this.H = new m<>();
        this.I = new m<>();
        this.f27171s = application.getString(R.string.send_question_failed_message);
        this.f27172t = application.getString(R.string.send_question_success_message);
        this.f27175w.z(y.U(application));
        this.f27176x.z(y.v(application));
        this.C.z(x.a());
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.f27177y.z(null);
        this.f27178z.z(null);
        this.A.z(null);
        this.B.z(null);
        this.C.z(x.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p(y8.l lVar, t tVar, String str, String str2) throws Exception {
        TebakGambarApi.c().postSoalSogam(lVar).v3(new C0135a(tVar, str, str2));
        return null;
    }

    private void q() {
        s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null || sVarB.c4()) {
            return;
        }
        this.f27176x.z(sVarB.V3());
    }

    private boolean s(String str, String str2, String str3, String str4, String str5, String str6) {
        boolean z10;
        String string = j().getString(R.string.prefix_check_again);
        if (TextUtils.isEmpty(str)) {
            this.E.z(string + j().getString(R.string.postfix_your_username));
            z10 = false;
        } else {
            this.E.z(null);
            z10 = true;
        }
        if (this.f27173u.a(str2)) {
            this.F.z(null);
        } else {
            this.F.z(string + j().getString(R.string.postfix_your_email));
            z10 = false;
        }
        if (TextUtils.isEmpty(str3)) {
            this.G.z(string + j().getString(R.string.postfix_this_part));
            z10 = false;
        } else {
            this.G.z(null);
        }
        if (TextUtils.isEmpty(str4)) {
            this.H.z(string + j().getString(R.string.postfix_this_part));
            z10 = false;
        } else {
            this.H.z(null);
        }
        if (TextUtils.isEmpty(str6)) {
            this.D.z(string + j().getString(R.string.postfix_this_part));
            this.B.z(null);
            this.C.z(x.a());
            return false;
        }
        if (str6.replace(" ", BuildConfig.FLAVOR).equalsIgnoreCase(this.C.y().replace(" ", BuildConfig.FLAVOR))) {
            this.D.z(null);
            return z10;
        }
        this.D.z(string + j().getString(R.string.postfix_this_part));
        this.B.z(null);
        this.C.z(x.a());
        return false;
    }

    LiveData<Boolean> r() {
        final t tVar = new t();
        final String strB = x.b(this.f27175w.y());
        final String strB2 = x.b(this.f27176x.y());
        String strB3 = x.b(this.f27177y.y());
        String strB4 = x.b(this.f27178z.y());
        String strB5 = x.b(this.A.y());
        if (!s(strB, strB2, strB3, strB4, strB5, x.b(this.B.y()))) {
            tVar.n(Boolean.TRUE);
            return tVar;
        }
        final y8.l lVar = new y8.l();
        lVar.put("username", strB);
        lVar.put("email", strB2);
        lVar.put("jawaban1", strB3);
        lVar.put("jawaban2", strB4);
        lVar.put("deskripsi", strB5);
        h.d(new Callable() { // from class: v8.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35859a.p(lVar, tVar, strB, strB2);
            }
        });
        return tVar;
    }
}
