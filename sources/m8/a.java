package m8;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.HandlerThread;
import androidx.work.b;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.google.gson.f;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import com.tebakgambar.component.b;
import com.tebakgambar.model.GameData;
import com.tebakgambar.model.TimedDialogModel;
import com.tebakgambar.model.constant.RemoteConfigKey;
import com.tebakgambar.model.request.LevelStructure2;
import com.tebakgambar.service.LocalNotificationWorker;
import com.tebakgambar.service.TGDownloadService;
import com.vungle.mediation.BuildConfig;
import i1.l;
import i1.t;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import y8.y;

/* JADX INFO: compiled from: GameManager.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements b.c {
    public static int A = 0;

    @SuppressLint({"StaticFieldLeak"})
    private static a B = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static String f32199s = "firebase-login-dialog-last-shown-millis";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static String f32200t = "firebase-login-synced";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static String f32201u = "life-new-inited";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static String f32202v = "life";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static String f32203w = "life-last-milis";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static String f32204x = "life-target-milis";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static String f32205y = "story-showed";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f32206z = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32207o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private d f32208p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private GameData f32209q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Context f32210r;

    private a(Context context) {
        this.f32210r = context;
    }

    private void B(long j10) {
        y.t0(this.f32210r, f32203w, j10);
    }

    private void C(long j10) {
        y.t0(this.f32210r, f32204x, j10);
    }

    private void a(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i10 < f32206z && j() == 0) {
            B(jCurrentTimeMillis);
            C(jCurrentTimeMillis + h());
        } else if (i10 == f32206z) {
            C(0L);
            B(0L);
        }
    }

    public static a f() {
        a aVar = B;
        if (aVar != null) {
            return aVar;
        }
        throw new RuntimeException("Game Saver must be initialized first");
    }

    private long h() {
        long jK = com.google.firebase.remoteconfig.a.i().k(RemoteConfigKey.RELOAD_LIFE_TIMER);
        return jK > 0 ? jK * 1000 : AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED;
    }

    public static void l(Context context) {
        HandlerThread handlerThread = new HandlerThread("GAMESAVER_HANDLER");
        handlerThread.start();
        a aVar = new a(context);
        B = aVar;
        aVar.f32208p = new d(handlerThread.getLooper());
        B.f32209q = new GameData(context);
        if (!y.J(context, f32201u)) {
            a aVar2 = B;
            aVar2.a(aVar2.g());
            y.s0(context, f32201u, true);
        }
        if (B.p()) {
            return;
        }
        B.m();
    }

    private void n(long j10) throws Throwable {
        long jI = i();
        if (jI == 0) {
            return;
        }
        long jH = h();
        if (j10 >= jI + jH) {
            A(Math.min(f32206z, g() + ((int) ((j10 - jI) / jH))));
        }
    }

    private void u(int i10) throws Throwable {
        t tVarD = t.d();
        if (i10 == f32206z) {
            tVarD.a("tg-life-countdown");
            return;
        }
        f fVar = new f();
        ArrayList arrayList = new ArrayList();
        TimedDialogModel timedDialogModel = new TimedDialogModel();
        timedDialogModel.titleMessage = this.f32210r.getString(R.string.app_name);
        String string = this.f32210r.getString(R.string.text_heart_full);
        timedDialogModel.message = string;
        timedDialogModel.subtitle = string;
        timedDialogModel.pushActionId = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        timedDialogModel.buttonPositive = this.f32210r.getString(R.string.lets_play);
        timedDialogModel.time = j() + (((long) Math.abs((f32206z - i10) - 1)) * h());
        arrayList.add(new l.a(LocalNotificationWorker.class).a("tg-life-countdown").f(timedDialogModel.time - System.currentTimeMillis(), TimeUnit.MILLISECONDS).g(new b.a().e("json", fVar.t(timedDialogModel)).a()).b());
        tVarD.a("tg-life-countdown");
        tVarD.c(arrayList);
    }

    public void A(int i10) throws Throwable {
        int iMin = Math.min(Math.max(A, i10), f32206z);
        String strValueOf = String.valueOf(iMin);
        a(iMin);
        y.u0(this.f32210r, f32202v, strValueOf);
        this.f32209q.life = strValueOf;
        this.f32207o = iMin;
        t();
        u(iMin);
    }

    public void D(boolean z10) {
        y.s0(this.f32210r, f32205y, z10);
    }

    public void b() throws Throwable {
        int iG = g();
        if (iG > 0) {
            A(iG - 1);
        }
    }

    public long c() {
        return y.K(this.f32210r, f32199s);
    }

    public GameData d() {
        return this.f32209q;
    }

    @Override // com.tebakgambar.component.b.c
    public void e(long j10) throws Throwable {
        n(j10);
    }

    public int g() {
        int i10 = this.f32207o;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        try {
            String strL = y.L(this.f32210r, f32202v);
            if (strL != null) {
                i11 = Integer.parseInt(strL);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            com.google.firebase.crashlytics.a.a().d(e10);
        }
        this.f32207o = i11;
        return i11;
    }

    public long i() {
        return y.K(this.f32210r, f32203w);
    }

    public long j() {
        return y.K(this.f32210r, f32204x);
    }

    public void k() throws Throwable {
        int iG = g();
        if (iG < f32206z) {
            A(iG + 1);
        }
    }

    public void m() throws Throwable {
        TGApplication tGApplicationD = TGApplication.d();
        y.A0(tGApplicationD, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        A(f32206z);
        y.o0(tGApplicationD, AppEventsConstants.EVENT_PARAM_VALUE_YES);
    }

    public boolean o() {
        return y.J(this.f32210r, f32200t);
    }

    public boolean p() {
        return y.N(this.f32210r).contains(f32202v);
    }

    public boolean q() {
        return y.J(this.f32210r, f32205y);
    }

    public void r() throws Throwable {
        TGApplication tGApplicationD = TGApplication.d();
        A(f32206z);
        y.o0(tGApplicationD, BuildConfig.FLAVOR);
        y.o0(tGApplicationD, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        y.k(y.f37097b, tGApplicationD);
        y.k(y.f37096a, tGApplicationD);
        y.k(y.f37098c, tGApplicationD);
        y.k0(tGApplicationD, 1, "5");
        this.f32209q = new GameData(TGApplication.d());
    }

    public void s(GameData gameData) throws Throwable {
        TGApplication tGApplicationD = TGApplication.d();
        y.k(y.f37097b, tGApplicationD);
        y.k(y.f37096a, tGApplicationD);
        y.k(y.f37098c, tGApplicationD);
        try {
            A(Integer.parseInt(gameData.life));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        LevelStructure2 levelStructure2 = gameData.lastLevelStructure;
        y.o0(tGApplicationD, levelStructure2.level + BuildConfig.FLAVOR);
        y.k0(tGApplicationD, levelStructure2.level, levelStructure2.hint + BuildConfig.FLAVOR);
        y.q0(tGApplicationD, levelStructure2.level, levelStructure2.getListLevel());
        this.f32209q = gameData;
        TGDownloadService.w(tGApplicationD);
    }

    public void t() {
        this.f32208p.h(this.f32209q);
    }

    public void v(long j10) {
        y.t0(this.f32210r, f32199s, j10);
    }

    public void w(boolean z10) {
        y.s0(this.f32210r, f32200t, z10);
    }

    public void x(int i10, int i11) {
        LevelStructure2 levelStructure2 = this.f32209q.lastLevelStructure;
        if (levelStructure2.level == i10) {
            levelStructure2.hint = i11;
            t();
        }
    }

    public void y(int i10) {
        this.f32209q.lastLevelStructure.level = i10;
        t();
    }

    public void z(int i10, String str) {
        LevelStructure2 levelStructure2 = this.f32209q.lastLevelStructure;
        if (levelStructure2.level == i10) {
            levelStructure2.setListLevel(str);
            t();
        }
    }
}
