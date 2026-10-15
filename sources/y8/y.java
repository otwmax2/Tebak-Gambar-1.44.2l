package y8;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.media.SoundPool;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import com.tebakgambar.model.DataEvent;
import com.tebakgambar.model.DataEventClue;
import com.tebakgambar.model.Homes;
import com.tebakgambar.model.Level;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: Utilities.java */
/* JADX INFO: loaded from: classes2.dex */
public class y {
    private static String A = "hint-json-";
    private static Integer B = Integer.valueOf(R.raw.blank_sound);
    private static y8.k C = new y8.k();
    private static SoundPool D = new SoundPool(10, 3, 0);
    public static String E = "https://matchingimages.com/api/1.5";
    public static String F = "/soalevent/soaleventrand";
    public static String G = "/soalsogam/soalsogamrand";
    public static String H = "/v1/game/event";
    public static String I = "GET_EVENT";
    public static String J = "GET_HOME_DATA";
    public static String K = "GET_SOAL_SOGAM";
    public static String L = "GET_SOAL_EVENT";
    public static int M = 30;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f37096a = "selfie-level-";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f37097b = "list-soal-level-";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f37098c = "status-hint-";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f37099d = "daily-quiz-closed-";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f37100e = "tebakgambar";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f37101f = "gpgs-signed";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f37102g = "gpgs-id";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f37103h = "gpgs-lb-me";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f37104i = "gpgs-lb-me-temp";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f37105j = "gpgs-lb-me-flag";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f37106k = "gpgs-lb-tutorial-me-flag";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f37107l = "gpgs-lb-me-done-flag";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f37108m = "gpgs-lb-me-share-flag";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f37109n = "sound-effect";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f37110o = "level";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static String f37111p = "is-new-soal";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static String f37112q = "username";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static String f37113r = "email";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static String f37114s = "home-sogam";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static String f37115t = "home-sogam-message";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static String f37116u = "soal-sogam-done";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static String f37117v = "soal-sogam-last";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static String f37118w = "event-list";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static String f37119x = "event-list-done";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static String f37120y = " event-score";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static String f37121z = "event-clue";

    /* JADX INFO: compiled from: Utilities.java */
    class a extends g7.a<List<DataEventClue>> {
        a() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class b extends g7.a<List<DataEventClue>> {
        b() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class c implements SoundPool.OnLoadCompleteListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f37122a;

        c(float f10) {
            this.f37122a = f10;
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int i10, int i11) {
            int iIntValue = y.B.intValue();
            float f10 = this.f37122a;
            soundPool.play(iIntValue, f10, f10, 1, 0, 1.0f);
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class d extends g7.a<ArrayList<DataEvent>> {
        d() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class e extends g7.a<ArrayList<DataEvent>> {
        e() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class f extends g7.a<ArrayList<DataEvent>> {
        f() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class g extends g7.a<ArrayList<DataEvent>> {
        g() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class h extends g7.a<ArrayList<DataEvent>> {
        h() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class i extends g7.a<List<DataEventClue>> {
        i() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class j extends g7.a<List<DataEventClue>> {
        j() {
        }
    }

    /* JADX INFO: compiled from: Utilities.java */
    class k extends g7.a<List<DataEventClue>> {
        k() {
        }
    }

    public static String A(Context context, int i10) {
        String strT = T(context, f37098c + i10);
        if (strT.length() <= 0) {
            return BuildConfig.FLAVOR;
        }
        try {
            String str = h(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), strT).split("#")[0];
            return Integer.parseInt(str) > 5 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : str;
        } catch (Exception unused) {
            return AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
    }

    public static void A0(Context context, String str) {
        B0(context, f37109n, str);
    }

    public static Homes B(Context context) {
        String strC = C(context);
        if (!TextUtils.isEmpty(strC)) {
            try {
                return (Homes) new com.google.gson.f().k(strC, Homes.class);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static void B0(Context context, String str, String str2) {
        context.getSharedPreferences(f37100e, 0).edit().putString(str, str2).commit();
    }

    public static String C(Context context) {
        return T(context, f37114s);
    }

    public static void C0(Context context, String str) {
        B0(context, f37112q, str);
    }

    private static Integer D(Context context, String str) {
        return Integer.valueOf(context.getSharedPreferences(f37100e, 0).getInt(str, 0));
    }

    public static String E(Context context) {
        try {
            return h(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), T(context, f37110o));
        } catch (Exception unused) {
            return AppEventsConstants.EVENT_PARAM_VALUE_YES;
        }
    }

    public static String F(Context context) {
        return T(context, f37118w);
    }

    public static String G(Context context, int i10) {
        try {
            if (T(context, f37097b + i10).equals(BuildConfig.FLAVOR)) {
                return BuildConfig.FLAVOR;
            }
            return h(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), T(context, f37097b + i10));
        } catch (Exception unused) {
            return BuildConfig.FLAVOR;
        }
    }

    public static BitmapDrawable H(Context context, Bitmap bitmap) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        bitmapDrawable.setTileModeXY(tileMode, tileMode);
        return bitmapDrawable;
    }

    public static String I(Context context) {
        try {
            return h(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), T(context, f37102g)).split("#")[0];
        } catch (Exception unused) {
            return BuildConfig.FLAVOR;
        }
    }

    public static boolean J(Context context, String str) {
        return context.getSharedPreferences(f37100e, 0).getBoolean(str, false);
    }

    public static long K(Context context, String str) {
        return context.getSharedPreferences(f37100e, 0).getLong(str, 0L);
    }

    public static String L(Context context, String str) {
        String strT = T(context, str);
        try {
            if (TextUtils.isEmpty(strT)) {
                return null;
            }
            return h(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), strT);
        } catch (Exception e10) {
            e10.printStackTrace();
            com.google.firebase.crashlytics.a.a().d(e10);
            return null;
        }
    }

    public static Bitmap M(Bitmap bitmap, int i10, int i11) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i11 / width, i10 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
    }

    public static SharedPreferences N(Context context) {
        return context.getSharedPreferences(f37100e, 0);
    }

    public static String O(Context context, String str) {
        String strT = T(context, f37119x);
        if (strT.length() <= 0) {
            return AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        com.google.gson.f fVar = new com.google.gson.f();
        Type type = new h().getType();
        new ArrayList();
        for (DataEvent dataEvent : (ArrayList) fVar.l(strT, type)) {
            if (dataEvent.id.equals(str)) {
                String strReplace = fVar.t(dataEvent.finished).replace("[", BuildConfig.FLAVOR).replace("]", BuildConfig.FLAVOR).replace("\"", BuildConfig.FLAVOR);
                return strReplace.length() == 0 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : strReplace;
            }
        }
        return AppEventsConstants.EVENT_PARAM_VALUE_NO;
    }

    public static String P(Context context, String str) {
        String strT = T(context, f37119x);
        if (strT.length() <= 0) {
            return AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        com.google.gson.f fVar = new com.google.gson.f();
        Type type = new g().getType();
        new ArrayList();
        for (DataEvent dataEvent : (ArrayList) fVar.l(strT, type)) {
            if (dataEvent.id.equals(str)) {
                return fVar.t(dataEvent.last).replace("\"", BuildConfig.FLAVOR);
            }
        }
        return AppEventsConstants.EVENT_PARAM_VALUE_NO;
    }

    public static String Q(Context context) {
        String strT = T(context, f37116u).length() > 0 ? T(context, f37116u) : AppEventsConstants.EVENT_PARAM_VALUE_NO;
        if (strT.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
            return strT;
        }
        String[] strArrSplit = strT.split(",");
        int[] iArr = new int[strArrSplit.length];
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            try {
                iArr[i10] = Integer.parseInt(strArrSplit[i10]);
            } catch (Exception unused) {
            }
        }
        Arrays.sort(iArr);
        return Arrays.toString(iArr).replace("[", BuildConfig.FLAVOR).replace("]", BuildConfig.FLAVOR).replace(", ", ",").replace(",   ", ",");
    }

    public static String R(Context context) {
        return T(context, f37109n);
    }

    public static String S(Context context) {
        try {
            return T(context, f37111p);
        } catch (Exception unused) {
            return BuildConfig.FLAVOR;
        }
    }

    private static String T(Context context, String str) {
        return context.getSharedPreferences(f37100e, 0).getString(str, BuildConfig.FLAVOR);
    }

    public static String U(Context context) {
        String strT = T(context, f37112q);
        if (TextUtils.isEmpty(strT)) {
            return null;
        }
        return strT;
    }

    public static boolean V(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList = (ArrayList) new com.google.gson.f().l(w(context), new a().getType());
        } catch (Exception unused) {
        }
        if (arrayList == null) {
            return false;
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((DataEventClue) arrayList.get(i10)).id.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean W(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() != null;
    }

    public static boolean X(Context context, int i10) {
        try {
            List listAsList = Arrays.asList(S(context).split("#"));
            return !listAsList.contains(i10 + BuildConfig.FLAVOR);
        } catch (Exception unused) {
            return true;
        }
    }

    public static String Y(String str) {
        try {
            InputStream inputStreamOpen = TGApplication.d().getAssets().open(str);
            byte[] bArr = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(bArr);
            inputStreamOpen.close();
            return new String(bArr, "UTF-8");
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void Z(Context context, Integer num) {
        try {
            Integer numValueOf = Integer.valueOf(Boolean.valueOf(R(context)).booleanValue() ? num.intValue() : R.raw.blank_sound);
            B = numValueOf;
            B = Integer.valueOf(D.load(context, numValueOf.intValue(), 1));
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            D.setOnLoadCompleteListener(new c(audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
            return f(messageDigest.digest());
        } catch (Exception unused) {
            return BuildConfig.FLAVOR;
        }
    }

    public static void a0(Context context) {
        String strT = T(context, f37118w);
        String strT2 = T(context, f37119x);
        com.google.gson.f fVar = new com.google.gson.f();
        if (strT2.length() > 0) {
            Type type = new d().getType();
            new ArrayList();
            ArrayList arrayList = (ArrayList) fVar.l(strT2, type);
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                if (!strT.contains("\"id\":" + ((DataEvent) arrayList.get(i10)).id + ",")) {
                    arrayList.remove(i10);
                }
            }
            B0(context, f37119x, fVar.t(arrayList));
        }
    }

    public static void b0(Context context) {
        B0(context, f37103h, BuildConfig.FLAVOR);
        B0(context, f37105j, BuildConfig.FLAVOR);
        B0(context, f37106k, BuildConfig.FLAVOR);
        B0(context, f37104i, BuildConfig.FLAVOR);
        B0(context, f37107l, BuildConfig.FLAVOR);
        B0(context, f37108m, BuildConfig.FLAVOR);
    }

    public static void c(Context context, int i10, int i11) {
        try {
            String strG = G(context, i10);
            new ArrayList();
            List<Level> listE = e(strG);
            for (int i12 = 0; i12 < listE.size(); i12++) {
                Level level = listE.get(i12);
                if (level.indexSoal.equals(String.valueOf(i11))) {
                    level.status = true;
                    listE.set(i12, level);
                }
            }
            q0(context, i10, d(listE));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void c0(Context context, int i10) {
        int i11;
        try {
            String strG = G(context, i10);
            new ArrayList();
            List<Level> listE = e(strG);
            int i12 = 1;
            if (i10 > 10) {
                i11 = 1;
                for (int i13 = 1; i13 < listE.size(); i13++) {
                    if (listE.get(i13).status) {
                        i11 = i13;
                    }
                }
            } else {
                i11 = 1;
            }
            if (i11 >= 10 && i11 <= 19) {
                i12 = 11;
            }
            while (i12 < listE.size()) {
                Level level = listE.get(i12);
                level.status = false;
                listE.set(i12, level);
                i12++;
            }
            q0(context, i10, d(listE));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String d(List<Level> list) {
        String str = BuildConfig.FLAVOR;
        for (Level level : list) {
            str = str + "#" + level.indexSoal + "-" + level.status;
        }
        return str.substring(1, str.length());
    }

    public static void d0(Context context, String str) {
        B0(context, f37113r, str);
    }

    public static List<Level> e(String str) {
        String[] strArrSplit = str.split("#");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split("-");
            Level level = new Level();
            level.indexSoal = strArrSplit2[0];
            level.status = Boolean.valueOf(strArrSplit2[1]).booleanValue();
            arrayList.add(level);
        }
        return arrayList;
    }

    public static void e0(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        com.google.gson.f fVar = new com.google.gson.f();
        try {
            arrayList = (ArrayList) fVar.l(w(context), new b().getType());
        } catch (Exception unused) {
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((DataEventClue) arrayList.get(i10)).id.equals(str)) {
                ArrayList<String> arrayList2 = new ArrayList<>();
                for (int i11 = 0; i11 < ((DataEventClue) arrayList.get(i10)).soal_clue.size(); i11++) {
                    arrayList2.add(((DataEventClue) arrayList.get(i10)).soal_clue.get(i11).replace("-", BuildConfig.FLAVOR));
                }
                ((DataEventClue) arrayList.get(i10)).soal_clue = arrayList2;
            }
        }
        B0(context, f37121z, fVar.t(arrayList));
    }

    private static String f(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = (bArr[i10] >>> 4) & 15;
            int i12 = 0;
            while (true) {
                if (i11 < 0 || i11 > 9) {
                    stringBuffer.append((char) ((i11 - 10) + 97));
                } else {
                    stringBuffer.append((char) (i11 + 48));
                }
                i11 = bArr[i10] & 15;
                int i13 = i12 + 1;
                if (i12 >= 1) {
                    break;
                }
                i12 = i13;
            }
        }
        return stringBuffer.toString();
    }

    public static void f0(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        com.google.gson.f fVar = new com.google.gson.f();
        try {
            arrayList = (ArrayList) fVar.l(w(context), new k().getType());
        } catch (Exception unused) {
        }
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((DataEventClue) arrayList.get(i10)).id.equals("-" + str)) {
                ((DataEventClue) arrayList.get(i10)).id = str;
            }
        }
        B0(context, f37121z, fVar.t(arrayList));
    }

    public static String g(String str, String str2) {
        long[] jArrD = new y8.i("d78034b1630c3659076765d354111c3a1f5410372d14b5539234411a3e74b86b7b76d93cc").d(str);
        String str3 = BuildConfig.FLAVOR;
        for (long j10 : jArrD) {
            str3 = str3 + Character.toString((char) j10);
        }
        return str3;
    }

    public static void g0(Context context, String str, String str2, String str3) {
        com.google.gson.f fVar = new com.google.gson.f();
        ArrayList<DataEventClue> arrayList = new ArrayList();
        try {
            arrayList = (ArrayList) fVar.l(w(context), new j().getType());
        } catch (Exception unused) {
        }
        for (DataEventClue dataEventClue : arrayList) {
            if (dataEventClue.id.equals(str)) {
                int iIntValue = Integer.valueOf(str2).intValue();
                String[] strArrSplit = dataEventClue.soal_clue.get(iIntValue).split("#");
                strArrSplit[1] = strArrSplit[1].replace(str3, "-" + str3);
                dataEventClue.soal_clue.remove(iIntValue);
                dataEventClue.soal_clue.add(iIntValue, strArrSplit[0] + "#" + strArrSplit[1]);
            }
        }
        B0(context, f37121z, fVar.t(arrayList));
    }

    public static String h(String str, String str2, String str3) throws Exception {
        return new String(C.b(str3)).trim();
    }

    public static void h0(Context context, String str, Integer num) {
        m0(context, f37120y + str, num);
    }

    public static void i(Context context, int i10) {
        String string = context.getResources().getString(R.string.secretkey);
        StringBuilder sb = new StringBuilder();
        sb.append(a(string + i10));
        sb.append(".zip");
        context.deleteFile(sb.toString());
    }

    public static void i0(Context context, String str) {
        try {
            B0(context, f37101f, str);
        } catch (Exception unused) {
            B0(context, f37101f, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
    }

    public static void j(Context context, int i10) {
        B0(context, A + i10, BuildConfig.FLAVOR);
    }

    public static void j0(Context context, int i10, int[] iArr) {
        Arrays.sort(iArr);
        JSONArray jSONArray = new JSONArray();
        for (int i11 : iArr) {
            jSONArray.put(i11);
        }
        B0(context, A + i10, jSONArray.toString());
    }

    public static void k(String str, Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(f37100e, 0);
        Set<String> setKeySet = sharedPreferences.getAll().keySet();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (String str2 : setKeySet) {
            if (str2.contains(str)) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.commit();
    }

    public static void k0(Context context, int i10, String str) {
        try {
            if (Integer.parseInt(str) > 5 || Integer.parseInt(str) < 0) {
                str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
            B0(context, f37098c + i10, n(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), str + "#" + System.currentTimeMillis()));
            m8.a.f().x(i10, Integer.parseInt(str));
        } catch (Exception e10) {
            e10.printStackTrace();
            B0(context, f37098c + i10, AppEventsConstants.EVENT_PARAM_VALUE_NO);
            m8.a.f().x(i10, 0);
        }
    }

    public static float l(Context context, Float f10) {
        return f10.floatValue() * (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static void l0(Context context, String str) {
        B0(context, f37114s, str);
    }

    public static String m(String str) {
        long[] jArr = new long[str.length()];
        for (int i10 = 0; i10 < str.length(); i10++) {
            jArr[i10] = Long.valueOf(str.charAt(i10)).longValue();
        }
        return new y8.i("d78034b1630c3659076765d354111c3a1f5410372d14b5539234411a3e74b86b7b76d93cc", 4).e(jArr);
    }

    private static void m0(Context context, String str, Integer num) {
        context.getSharedPreferences(f37100e, 0).edit().putInt(str, num.intValue()).commit();
    }

    public static String n(String str, String str2, String str3) throws Exception {
        return y8.k.a(C.c(str3));
    }

    public static void n0(Context context, int i10) {
        try {
            B0(context, f37111p, S(context) + i10 + "#");
        } catch (Exception unused) {
        }
    }

    public static String o(int i10, int i11) {
        return p(i10, i11, false);
    }

    public static void o0(Context context, String str) {
        try {
            if (s(context) <= Integer.parseInt(str)) {
                B0(context, f37110o, n(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), str));
                m8.a.f().y(Integer.parseInt(str));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            B0(context, f37110o, BuildConfig.FLAVOR);
        }
    }

    public static String p(int i10, int i11, boolean z10) {
        String str = BuildConfig.FLAVOR;
        if (i10 < 180) {
            for (int i12 = i10; i12 < i11; i12++) {
                Random random = new Random();
                int i13 = i11 - i10;
                String strValueOf = String.valueOf(random.nextInt(i13) + i10);
                while (true) {
                    if (!str.contains("#" + strValueOf + "-false")) {
                        if (!str.contains("#" + strValueOf + "-true")) {
                            break;
                        }
                    }
                    strValueOf = String.valueOf(random.nextInt(i13) + i10);
                }
                str = i12 == i10 ? str + "#" + strValueOf + "-true" : str + "#" + strValueOf + "-false";
            }
        } else if (i10 >= 180) {
            int i14 = i10 + 9;
            int i15 = 0;
            for (int i16 = i10; i16 < i11; i16++) {
                Random random2 = new Random();
                int i17 = i11 - i10;
                String strValueOf2 = String.valueOf(random2.nextInt(i17) + i10);
                while (true) {
                    if (!str.contains("#" + strValueOf2 + "-false")) {
                        if (!str.contains("#" + strValueOf2 + "-true") && (!strValueOf2.equals(String.valueOf(i14)) || i15 == 9)) {
                            break;
                        }
                    }
                    strValueOf2 = String.valueOf(random2.nextInt(i17) + i10);
                }
                if (i16 == i10) {
                    str = str + "#" + strValueOf2 + "-true";
                } else if (i15 == 9) {
                    str = str + "#" + i14 + "-false";
                } else {
                    str = str + "#" + strValueOf2 + "-false";
                }
                i15++;
            }
        }
        String str2 = str.substring(1, str.length()) + "#" + i11 + "-false";
        return z10 ? str2.replaceAll("false", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) : str2;
    }

    public static void p0(Context context, String str) {
        B0(context, f37118w, str);
        a0(context);
    }

    public static int q(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 0) ? 1 : 0;
        }
        return 0;
    }

    public static void q0(Context context, int i10, String str) {
        try {
            B0(context, f37097b + i10, n(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), str));
            m8.a.f().z(i10, str);
        } catch (Exception e10) {
            e10.printStackTrace();
            B0(context, f37097b + i10, BuildConfig.FLAVOR);
        }
    }

    public static byte[] r(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr, 0, 1024);
            if (i10 == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static void r0(Context context, String str) {
        try {
            if (!str.equals(I(context))) {
                b0(context);
            }
            B0(context, f37102g, n(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), str + "#" + System.currentTimeMillis()));
        } catch (Exception unused) {
        }
    }

    public static int s(Context context) {
        return Integer.valueOf(E(context)).intValue();
    }

    public static void s0(Context context, String str, boolean z10) {
        context.getSharedPreferences(f37100e, 0).edit().putBoolean(str, z10).commit();
    }

    public static long t(Date date, Date date2, TimeUnit timeUnit) {
        return timeUnit.convert(date2.getTime() - date.getTime(), TimeUnit.MILLISECONDS);
    }

    public static void t0(Context context, String str, long j10) {
        context.getSharedPreferences(f37100e, 0).edit().putLong(str, j10).commit();
    }

    public static float u(Context context, Integer num) {
        return Float.parseFloat(context.getResources().getString(num.intValue()).substring(0, context.getResources().getString(num.intValue()).length() - 2));
    }

    public static void u0(Context context, String str, String str2) {
        try {
            B0(context, str, n(context.getResources().getString(R.string.ivkey), context.getResources().getString(R.string.secretkey), str2));
        } catch (Exception e10) {
            e10.printStackTrace();
            com.google.firebase.crashlytics.a.a().d(e10);
        }
    }

    public static String v(Context context) {
        String strT = T(context, f37113r);
        return strT != null ? strT : BuildConfig.FLAVOR;
    }

    public static void v0(Context context, String str) {
        B0(context, f37115t, str + BuildConfig.FLAVOR);
    }

    public static String w(Context context) {
        return TextUtils.isEmpty(T(context, f37121z)) ? BuildConfig.FLAVOR : T(context, f37121z);
    }

    public static void w0(Context context, String str, String str2) {
        String strT = T(context, f37119x);
        com.google.gson.f fVar = new com.google.gson.f();
        if (strT.length() <= 0) {
            DataEvent dataEvent = new DataEvent();
            dataEvent.id = str;
            ArrayList<String> arrayList = new ArrayList<>();
            dataEvent.finished = arrayList;
            arrayList.add(str2);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(dataEvent);
            B0(context, f37119x, fVar.t(arrayList2));
            return;
        }
        Type type = new f().getType();
        new ArrayList();
        ArrayList arrayList3 = (ArrayList) fVar.l(strT, type);
        new ArrayList();
        boolean z10 = false;
        Iterator it = arrayList3.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            DataEvent dataEvent2 = (DataEvent) it.next();
            if (dataEvent2.id.equals(str)) {
                ArrayList<String> arrayList4 = dataEvent2.finished;
                if (str2.equals("-2")) {
                    while (arrayList4.remove("-1")) {
                    }
                    dataEvent2.finished = arrayList4;
                } else {
                    if (!str2.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                        arrayList4.add(str2);
                    }
                    dataEvent2.finished = new ArrayList<>(new LinkedHashSet(arrayList4));
                }
                z10 = true;
            }
        }
        if (!z10) {
            DataEvent dataEvent3 = new DataEvent();
            dataEvent3.id = str;
            ArrayList<String> arrayList5 = new ArrayList<>();
            dataEvent3.finished = arrayList5;
            arrayList5.add(str2);
            dataEvent3.last = str2;
            arrayList3.add(dataEvent3);
        }
        B0(context, f37119x, fVar.t(arrayList3));
    }

    public static ArrayList<Integer> x(Context context, String str) {
        com.google.gson.f fVar = new com.google.gson.f();
        ArrayList<DataEventClue> arrayList = new ArrayList();
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        try {
            arrayList = (ArrayList) fVar.l(w(context), new i().getType());
        } catch (Exception unused) {
        }
        for (DataEventClue dataEventClue : arrayList) {
            if (dataEventClue.id.equals(str)) {
                for (String str2 : dataEventClue.soal_clue) {
                    if (!str2.contains("-4")) {
                        String[] strArrSplit = str2.split("#");
                        try {
                            if (!str2.contains("-")) {
                                return new ArrayList<>(Arrays.asList(Integer.valueOf(Integer.parseInt(strArrSplit[0])), 0, 1, 2, 3, 4));
                            }
                            String[] strArrSplit2 = strArrSplit[1].split(",");
                            arrayList2.add(Integer.valueOf(Integer.parseInt(strArrSplit[0])));
                            for (String str3 : strArrSplit2) {
                                if (!str3.contains("-")) {
                                    arrayList2.add(Integer.valueOf(str3));
                                }
                            }
                            return arrayList2;
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
        }
        return arrayList2;
    }

    public static void x0(Context context, String str, String str2) {
        String strT = T(context, f37119x);
        com.google.gson.f fVar = new com.google.gson.f();
        if (strT.length() <= 0) {
            DataEvent dataEvent = new DataEvent();
            dataEvent.id = str;
            dataEvent.finished = new ArrayList<>();
            dataEvent.last = str2;
            ArrayList arrayList = new ArrayList();
            arrayList.add(dataEvent);
            B0(context, f37119x, fVar.t(arrayList));
            return;
        }
        Type type = new e().getType();
        new ArrayList();
        ArrayList arrayList2 = (ArrayList) fVar.l(strT, type);
        boolean z10 = false;
        Iterator it = arrayList2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            DataEvent dataEvent2 = (DataEvent) it.next();
            if (dataEvent2.id.equals(str)) {
                dataEvent2.last = str2;
                if (str2.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                    dataEvent2.finished = new ArrayList<>();
                }
                z10 = true;
            }
        }
        if (!z10) {
            DataEvent dataEvent3 = new DataEvent();
            dataEvent3.id = str;
            dataEvent3.finished = new ArrayList<>();
            dataEvent3.last = str2;
            arrayList2.add(dataEvent3);
        }
        B0(context, f37119x, fVar.t(arrayList2));
    }

    public static Integer y(Context context, String str) {
        return D(context, f37120y + str);
    }

    public static void y0(Context context, String str) {
        B0(context, f37116u, str);
    }

    public static int[] z(Context context, int i10) {
        try {
            JSONArray jSONArray = new JSONArray(T(context, A + i10));
            int[] iArr = new int[jSONArray.length()];
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                iArr[i11] = jSONArray.getInt(i11);
            }
            return iArr;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return new int[0];
        }
    }

    public static void z0(Context context, String str) {
        B0(context, f37117v, str);
    }
}
