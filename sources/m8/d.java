package m8;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.TGApplication;
import com.tebakgambar.model.GameData;
import com.tebakgambar.model.RequestHeader;
import com.tebakgambar.model.request.UpdateGameDataRequest;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.network.TebakGambarApi;
import g5.s;
import g5.u;
import java.util.Map;
import java.util.concurrent.Callable;
import t1.h;
import wa.l;
import y8.y;

/* JADX INFO: compiled from: GameSaverHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f32217a;

    /* JADX INFO: compiled from: GameSaverHandler.java */
    class a implements wa.d<ApiResponse3<Object>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GameData f32218a;

        a(GameData gameData) {
            this.f32218a = gameData;
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<Object>> bVar, l<ApiResponse3<Object>> lVar) {
            d.this.f32217a = 0;
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<Object>> bVar, Throwable th) {
            if (d.this.f32217a < 5) {
                d dVar = d.this;
                dVar.sendMessageDelayed(dVar.g(this.f32218a), 5000L);
                d.e(d.this);
            }
        }
    }

    d(Looper looper) {
        super(looper);
        this.f32217a = 0;
    }

    static /* synthetic */ int e(d dVar) {
        int i10 = dVar.f32217a;
        dVar.f32217a = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Message g(GameData gameData) {
        Message message = new Message();
        message.what = 5;
        message.obj = gameData;
        return message;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object i(Map map, UpdateGameDataRequest updateGameDataRequest, GameData gameData) throws Exception {
        TebakGambarApi.b().updateGameData(map, updateGameDataRequest).v3(new a(gameData));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(final GameData gameData, u uVar) {
        final Map<String, String> mapCreate = RequestHeader.create(uVar.c());
        final UpdateGameDataRequest updateGameDataRequest = new UpdateGameDataRequest();
        updateGameDataRequest.gameToken = gameData.toGameToken();
        h.d(new Callable() { // from class: m8.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f32213a.i(mapCreate, updateGameDataRequest, gameData);
            }
        });
    }

    private void k(final GameData gameData) {
        if (y.q(TGApplication.d()) == 0) {
            if (this.f32217a < 5) {
                sendMessageDelayed(g(gameData), 5000L);
                this.f32217a++;
                return;
            }
            return;
        }
        s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            this.f32217a = 0;
        } else {
            sVarB.W3(false).i(new OnSuccessListener() { // from class: m8.b
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    this.f32211a.j(gameData, (u) obj);
                }
            });
        }
    }

    void h(GameData gameData) {
        removeMessages(5);
        sendMessage(g(gameData));
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        k((GameData) message.obj);
    }
}
