package z6;

import android.net.Uri;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import da.o0;
import h9.o;
import h9.t;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import m9.k;
import org.json.JSONObject;
import s9.p;
import t9.m;
import t9.y;

/* JADX INFO: compiled from: RemoteSettingsFetcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d implements z6.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f37246d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x6.b f37247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k9.g f37248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f37249c;

    /* JADX INFO: compiled from: RemoteSettingsFetcher.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: RemoteSettingsFetcher.kt */
    @m9.f(c = "com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2", f = "RemoteSettingsFetcher.kt", l = {68, 70, 73}, m = "invokeSuspend")
    static final class b extends k implements p<o0, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f37250s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ Map<String, String> f37252u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final /* synthetic */ p<JSONObject, k9.d<? super t>, Object> f37253v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        final /* synthetic */ p<String, k9.d<? super t>, Object> f37254w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Map<String, String> map, p<? super JSONObject, ? super k9.d<? super t>, ? extends Object> pVar, p<? super String, ? super k9.d<? super t>, ? extends Object> pVar2, k9.d<? super b> dVar) {
            super(2, dVar);
            this.f37252u = map;
            this.f37253v = pVar;
            this.f37254w = pVar2;
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            return d.this.new b(this.f37252u, this.f37253v, this.f37254w, dVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [T, java.lang.String] */
        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f37250s;
            try {
                if (i10 == 0) {
                    o.b(obj);
                    URLConnection uRLConnectionOpenConnection = d.this.c().openConnection();
                    m.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                    httpsURLConnection.setRequestMethod("GET");
                    httpsURLConnection.setRequestProperty("Accept", "application/json");
                    for (Map.Entry<String, String> entry : this.f37252u.entrySet()) {
                        httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        InputStream inputStream = httpsURLConnection.getInputStream();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                        StringBuilder sb = new StringBuilder();
                        y yVar = new y();
                        while (true) {
                            ?? line = bufferedReader.readLine();
                            yVar.f35552o = line;
                            if (line == 0) {
                                break;
                            }
                            sb.append((String) line);
                        }
                        bufferedReader.close();
                        inputStream.close();
                        JSONObject jSONObject = new JSONObject(sb.toString());
                        p<JSONObject, k9.d<? super t>, Object> pVar = this.f37253v;
                        this.f37250s = 1;
                        if (pVar.invoke(jSONObject, this) == objC) {
                            return objC;
                        }
                    } else {
                        p<String, k9.d<? super t>, Object> pVar2 = this.f37254w;
                        String str = "Bad response code: " + responseCode;
                        this.f37250s = 2;
                        if (pVar2.invoke(str, this) == objC) {
                            return objC;
                        }
                    }
                } else {
                    if (i10 != 1 && i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    o.b(obj);
                }
            } catch (Exception e10) {
                p<String, k9.d<? super t>, Object> pVar3 = this.f37254w;
                String message = e10.getMessage();
                if (message == null) {
                    message = e10.toString();
                }
                this.f37250s = 3;
                if (pVar3.invoke(message, this) == objC) {
                    return objC;
                }
            }
            return t.f30301a;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super t> dVar) {
            return ((b) d(o0Var, dVar)).i(t.f30301a);
        }
    }

    public d(x6.b bVar, k9.g gVar, String str) {
        m.e(bVar, "appInfo");
        m.e(gVar, "blockingDispatcher");
        m.e(str, "baseUrl");
        this.f37247a = bVar;
        this.f37248b = gVar;
        this.f37249c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL c() {
        return new URL(new Uri.Builder().scheme(TournamentShareDialogURIBuilder.scheme).authority(this.f37249c).appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.f37247a.b()).appendPath("settings").appendQueryParameter("build_version", this.f37247a.a().a()).appendQueryParameter("display_version", this.f37247a.a().f()).build().toString());
    }

    @Override // z6.a
    public Object a(Map<String, String> map, p<? super JSONObject, ? super k9.d<? super t>, ? extends Object> pVar, p<? super String, ? super k9.d<? super t>, ? extends Object> pVar2, k9.d<? super t> dVar) {
        Object objE = da.h.e(this.f37248b, new b(map, pVar, pVar2, null), dVar);
        return objE == l9.d.c() ? objE : t.f30301a;
    }

    public /* synthetic */ d(x6.b bVar, k9.g gVar, String str, int i10, t9.g gVar2) {
        this(bVar, gVar, (i10 & 4) != 0 ? "firebase-settings.crashlytics.com" : str);
    }
}
