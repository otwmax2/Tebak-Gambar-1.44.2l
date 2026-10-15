package com.tebakgambar.network;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import com.tebakgambar.model.Event2;
import com.tebakgambar.model.FreeAnswer;
import com.tebakgambar.model.Homes;
import com.tebakgambar.model.SoalSogam;
import com.tebakgambar.model.request.LoginRequest;
import com.tebakgambar.model.request.UpdateGameDataRequest;
import com.tebakgambar.model.response.ApiResponse;
import com.tebakgambar.model.response.ApiResponse2;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.model.response.GameTokenResult;
import com.tebakgambar.model.response.KirimSoalResult;
import com.tebakgambar.model.response.LoginResult;
import com.tebakgambar.model.response.StickerCampaignResult;
import com.tebakgambar.sticker.model.StickerCampaignDetail;
import ja.d0;
import ja.x;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import ta.a;
import wa.b;
import wa.m;
import ya.a;
import ya.d;
import ya.e;
import ya.f;
import ya.j;
import ya.o;
import ya.s;
import ya.t;
import ya.u;
import ya.w;
import ya.x;

/* JADX INFO: loaded from: classes.dex */
public class TebakGambarApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Interface f27012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static InterfaceOld f27013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static DownloadInterface f27014c;

    /* JADX INFO: loaded from: classes2.dex */
    public interface DownloadInterface {
        @w
        @f
        b<d0> downloadFile(@x String str);

        @f("http://apis.tebakgambar.com/v4/SoalReguler/get/{versionHash}")
        b<ApiResponse2> getLevel(@s("versionHash") String str);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface Interface {
        @o("https://api.tebakgambar.com/v1/free-answer/add-progress")
        b<ApiResponse3<FreeAnswer>> addProgress(@j Map<String, String> map);

        @f("https://api.tebakgambar.com/cmp/v1/home")
        b<ApiResponse3<StickerCampaignResult>> getCampaign();

        @f("https://api.tebakgambar.com/cmp/v1/detail/{id}")
        b<ApiResponse3<StickerCampaignDetail>> getCampaignDetail(@j Map<String, String> map, @s("id") String str);

        @f("https://api.tebakgambar.com/v1/game/event")
        b<ApiResponse3<Event2>> getEvent(@j Map<String, String> map);

        @f("https://api.tebakgambar.com/v1/game/event/{eventId}/questions/{questionIds}")
        b<ApiResponse<ArrayList<SoalSogam>>> getEventSoal(@s("eventId") String str, @s("questionIds") String str2, @u Map<String, Integer> map);

        @f("https://api.tebakgambar.com/v1/free-answer")
        b<ApiResponse3<FreeAnswer>> getFreeAnswer(@t("question_type") String str, @j Map<String, String> map);

        @f("https://api.tebakgambar.com/acn/v1/game")
        b<ApiResponse3<GameTokenResult>> getGameData(@j Map<String, String> map);

        @o("https://api.tebakgambar.com/acn/v1/login")
        b<ApiResponse3<LoginResult>> login(@j Map<String, String> map, @a LoginRequest loginRequest);

        @o("https://api.tebakgambar.com/acn/v1/game")
        b<ApiResponse3<Object>> updateGameData(@j Map<String, String> map, @a UpdateGameDataRequest updateGameDataRequest);

        @o("https://api.tebakgambar.com/v1/free-answer/use")
        b<ApiResponse3<FreeAnswer>> useFreeAnswer(@j Map<String, String> map);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface InterfaceOld {
        @f("homes/active/1/{versionName}")
        b<Homes> getHome(@s("versionName") String str);

        @o("soalsogam/postsoalsogam")
        @e
        b<KirimSoalResult> postSoalSogam(@d Map<String, String> map);
    }

    public static DownloadInterface a() {
        DownloadInterface downloadInterface = f27014c;
        if (downloadInterface != null) {
            return downloadInterface;
        }
        throw new RuntimeException("TebakGambarApi Interface not initialized");
    }

    public static Interface b() {
        Interface r02 = f27012a;
        if (r02 != null) {
            return r02;
        }
        throw new RuntimeException("TebakGambarApi Interface not initialized");
    }

    public static InterfaceOld c() {
        InterfaceOld interfaceOld = f27013b;
        if (interfaceOld != null) {
            return interfaceOld;
        }
        throw new RuntimeException("TebakGambarApi Interface not initialized");
    }

    public static void d(Context context) {
        ta.a aVar = new ta.a();
        aVar.c(a.EnumC0257a.BODY);
        x.b bVar = new x.b();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ja.x xVarD = bVar.g(20L, timeUnit).j(20L, timeUnit).k(20L, timeUnit).a(aVar).d();
        f27012a = (Interface) new m.b().c(context.getString(R.string.api_host)).f(xVarD).a(xa.a.d()).d().d(Interface.class);
        f27013b = (InterfaceOld) new m.b().c(context.getString(R.string.api_host_old)).f(xVarD).a(xa.a.d()).d().d(InterfaceOld.class);
        x.b bVar2 = new x.b();
        TimeUnit timeUnit2 = TimeUnit.MINUTES;
        f27014c = (DownloadInterface) new m.b().c(context.getString(R.string.api_host)).f(bVar2.g(5L, timeUnit2).j(5L, timeUnit2).k(5L, timeUnit2).a(aVar).d()).a(xa.a.d()).d().d(DownloadInterface.class);
    }

    public static String e() {
        PackageInfo packageInfo;
        String packageName = TGApplication.d().getPackageName();
        try {
            packageInfo = TGApplication.d().getPackageManager().getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            packageInfo = null;
        }
        return Base64.encodeToString((packageName + "&" + packageInfo.versionName + "&" + new SimpleDateFormat("yyyy-MM-dd").format(new Date())).getBytes(), 3);
    }
}
