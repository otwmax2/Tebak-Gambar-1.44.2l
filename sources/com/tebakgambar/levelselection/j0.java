package com.tebakgambar.levelselection;

import android.app.Application;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.levelselection.c0;
import com.tebakgambar.model.GameData;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.QuestionSavedData;
import com.tebakgambar.model.RequestHeader;
import com.tebakgambar.model.constant.RemoteConfigKey;
import com.tebakgambar.model.constant.SharedPreferencesKey;
import com.tebakgambar.model.request.LevelStructure2;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.model.response.GameTokenResult;
import com.tebakgambar.network.TebakGambarApi;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: QuestionSelectionViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class j0 extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.databinding.m<Level> f26953s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    androidx.lifecycle.t<Integer> f26954t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    androidx.lifecycle.t<Boolean> f26955u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    androidx.lifecycle.t<Boolean> f26956v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    c0.d f26957w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private m8.a f26958x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private t1.h<Level> f26959y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f26960z;

    /* JADX INFO: compiled from: QuestionSelectionViewModel.java */
    class a implements wa.d<ApiResponse3<GameTokenResult>> {
        a() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<GameTokenResult>> bVar, wa.l<ApiResponse3<GameTokenResult>> lVar) {
            String strP;
            j0.this.f26955u.n(Boolean.FALSE);
            if (!lVar.f()) {
                j0.this.F();
                return;
            }
            if (lVar.a() == null || lVar.a().data == null) {
                return;
            }
            LevelStructure2 levelStructure2 = new GameData(lVar.a().data.gameToken).lastLevelStructure;
            if (LevelStructure2.isValidLevelData(levelStructure2.getListLevel()) && j0.this.f26953s.y().id == levelStructure2.level) {
                strP = levelStructure2.getListLevel();
            } else {
                strP = y8.y.p((j0.this.f26953s.y().id - 1) * 20, ((j0.this.f26953s.y().id - 1) * 20) + 19, j0.this.f26953s.y().id < levelStructure2.level);
            }
            y8.y.q0(j0.this.j(), j0.this.f26953s.y().id, strP);
            j0 j0Var = j0.this;
            j0Var.t(j0Var.f26953s.y().getQuestionSavedData());
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<GameTokenResult>> bVar, Throwable th) {
            j0.this.f26955u.n(Boolean.FALSE);
            j0.this.F();
        }
    }

    public j0(Application application) {
        super(application);
        this.f26953s = new androidx.databinding.m<>();
        this.f26954t = new androidx.lifecycle.t<>();
        this.f26955u = new androidx.lifecycle.t<>();
        this.f26956v = new androidx.lifecycle.t<>();
        this.f26957w = new c0.d();
        this.f26958x = m8.a.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List A() throws Exception {
        return Level.fromId(this.f26953s.y().id).getQuestionSavedData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h B(t1.h hVar) throws Exception {
        if (((List) hVar.s()).size() >= 20) {
            t((List) hVar.s());
            return null;
        }
        com.google.firebase.crashlytics.a.a().c("Corrupted Data Detected");
        if (m8.a.f().o()) {
            I();
            return null;
        }
        J();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Level C(int i10) throws Exception {
        this.f26953s.z(Level.fromId(i10));
        if (y8.y.A(j(), i10).length() != 0) {
            return null;
        }
        y8.y.k0(j(), i10, "5");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object D(String str) throws Exception {
        TebakGambarApi.b().getGameData(RequestHeader.create(str)).v3(new a());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(Task task) {
        if (!task.t() || task.p() == null || ((g5.u) task.p()).c() == null) {
            this.f26955u.n(Boolean.FALSE);
            F();
        } else {
            final String strC = ((g5.u) task.p()).c();
            t1.h.d(new Callable() { // from class: com.tebakgambar.levelselection.g0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f26944a.D(strC);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        FirebaseAuth.getInstance().e();
        this.f26956v.n(Boolean.TRUE);
    }

    private void I() {
        this.f26955u.n(Boolean.TRUE);
        FirebaseAuth.getInstance().b().W3(true).c(new OnCompleteListener() { // from class: com.tebakgambar.levelselection.d0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f26929a.E(task);
            }
        });
    }

    private void J() {
        int i10 = this.f26953s.y().id;
        LevelStructure2 levelStructure2 = m8.a.f().d().lastLevelStructure;
        String listLevel = levelStructure2.getListLevel();
        if (!LevelStructure2.isValidLevelData(listLevel) || i10 != levelStructure2.level) {
            int i11 = (i10 - 1) * 20;
            listLevel = y8.y.p(i11, i11 + 19, i10 < levelStructure2.level);
        }
        y8.y.q0(j(), i10, listLevel);
        t(this.f26953s.y().getQuestionSavedData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(List<QuestionSavedData> list) {
        if (list.get(0).isReceh) {
            int i10 = 0;
            while (true) {
                if (i10 >= list.size()) {
                    break;
                }
                if (list.get(i10).getType().equals(QuestionSavedData.TYPE_BIASA)) {
                    QuestionSavedData questionSavedData = list.get(i10);
                    QuestionSavedData questionSavedData2 = list.get(0);
                    boolean z10 = questionSavedData.open;
                    questionSavedData.open = questionSavedData2.open;
                    questionSavedData2.open = z10;
                    Collections.swap(list, 0, i10);
                    break;
                }
                i10++;
            }
            y8.y.q0(j(), this.f26953s.y().id, QuestionSavedData.toSavedData(list));
            list = this.f26953s.y().getQuestionSavedData();
        }
        this.f26957w.f26926a.z(list);
    }

    private void v() {
        t1.h.d(new Callable() { // from class: com.tebakgambar.levelselection.e0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26931a.A();
            }
        }).A(new t1.f() { // from class: com.tebakgambar.levelselection.i0
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f26951a.B(hVar);
            }
        }, t1.h.f35199k);
    }

    private static boolean w(Date date, SharedPreferences sharedPreferences) {
        return y8.y.t(new Date(sharedPreferences.getLong("LAST_DATE_REQUEST_IN_APP_REVIEW", date.getTime())), date, TimeUnit.DAYS) == 0;
    }

    private boolean x(SharedPreferences sharedPreferences, Date date) {
        long j10 = sharedPreferences.getLong(SharedPreferencesKey.FIRST_DATE_REQUEST_IN_APP_REVIEW, 0L);
        if (j10 == 0) {
            return false;
        }
        return y8.y.t(new Date(j10), date, TimeUnit.DAYS) > com.google.firebase.remoteconfig.a.i().k(RemoteConfigKey.TIME_INTERVAL_IN_APP_RATING);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h z(t1.h hVar) throws Exception {
        this.f26954t.n(Integer.valueOf(this.f26958x.g()));
        v();
        return null;
    }

    public void G() {
        SharedPreferences.Editor editorEdit = y8.y.N(j()).edit();
        editorEdit.remove(SharedPreferencesKey.NUMBER_OF_REQUEST_IN_APP_REVIEW);
        editorEdit.remove(SharedPreferencesKey.FIRST_DATE_REQUEST_IN_APP_REVIEW);
        editorEdit.remove("LAST_DATE_REQUEST_IN_APP_REVIEW");
        editorEdit.apply();
    }

    void H(final int i10) {
        this.f26960z = i10;
        this.f26959y = t1.h.d(new Callable() { // from class: com.tebakgambar.levelselection.f0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26940a.C(i10);
            }
        });
    }

    public boolean q() {
        SharedPreferences sharedPreferencesN = y8.y.N(j());
        if (this.f26960z % 2 != 0 || !sharedPreferencesN.getBoolean(SharedPreferencesKey.JUST_COMPLETED_BOSS_QUESTION, false)) {
            return false;
        }
        sharedPreferencesN.edit().remove(SharedPreferencesKey.JUST_COMPLETED_BOSS_QUESTION).apply();
        if (!com.google.firebase.remoteconfig.a.i().h(RemoteConfigKey.IS_NEED_TO_SHOW_IN_APP_RATING)) {
            return false;
        }
        Date date = new Date(System.currentTimeMillis());
        int i10 = sharedPreferencesN.getInt(SharedPreferencesKey.NUMBER_OF_REQUEST_IN_APP_REVIEW, 0);
        if (i10 == 0) {
            return true;
        }
        if (i10 != 3) {
            return !w(date, sharedPreferencesN);
        }
        if (!x(sharedPreferencesN, date)) {
            return false;
        }
        G();
        return true;
    }

    void u() {
        this.f26959y.A(new t1.f() { // from class: com.tebakgambar.levelselection.h0
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f26948a.z(hVar);
            }
        }, t1.h.f35199k);
    }
}
