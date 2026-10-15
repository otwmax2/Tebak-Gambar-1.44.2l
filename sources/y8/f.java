package y8;

import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.net.Uri;
import androidx.browser.customtabs.d;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.QuestionSavedData;
import com.tebakgambar.selfie.EditFrameActivity;

/* JADX INFO: compiled from: DeeplinkNavigator.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final UriMatcher f37044a;

    static {
        UriMatcher uriMatcher = new UriMatcher(1);
        f37044a = uriMatcher;
        uriMatcher.addURI("home", null, 1);
        uriMatcher.addURI("howto", null, 2);
        uriMatcher.addURI("send-ideas", null, 3);
        uriMatcher.addURI("popup", "login", 4);
        uriMatcher.addURI("photo-frame", null, 5);
        uriMatcher.addURI("webview", null, 13);
        uriMatcher.addURI("browser", null, 14);
        uriMatcher.addURI("photo-frame", "#", 6);
        uriMatcher.addURI("sticker", "wa", 7);
        uriMatcher.addURI("sticker", "wa/#", 8);
        uriMatcher.addURI("level", null, 9);
        uriMatcher.addURI("level", "reguler", 9);
        uriMatcher.addURI("level", "reguler/#", 10);
        uriMatcher.addURI("level", "reguler/#/#", 11);
        uriMatcher.addURI("level", "event/#", 12);
    }

    private static t1.h<Uri> d(final Uri uri) {
        final t1.i iVar = new t1.i();
        g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            return t1.h.q(uri);
        }
        sVarB.W3(false).c(new OnCompleteListener() { // from class: y8.c
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                f.g(uri, iVar, task);
            }
        });
        return iVar.a();
    }

    private static t1.h<Intent> e(Uri uri) {
        return d(uri).x(new t1.f() { // from class: y8.e
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return f.h(hVar);
            }
        });
    }

    private static t1.h<Intent> f(final Context context, Uri uri) {
        return d(uri).x(new t1.f() { // from class: y8.d
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return f.i(context, hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(Uri uri, t1.i iVar, Task task) {
        if (!task.t() || task.p() == null) {
            iVar.d(uri);
        } else {
            iVar.d(uri.buildUpon().appendQueryParameter("token", ((g5.u) task.p()).c()).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Intent h(t1.h hVar) throws Exception {
        Uri uri = (Uri) hVar.s();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Intent i(Context context, t1.h hVar) throws Exception {
        Uri uri = (Uri) hVar.s();
        Intent intent = new d.a().d(context.getResources().getColor(R.color.color_dark_green_1)).a().f1276a;
        intent.setData(uri);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v10, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v14, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v17, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v25, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v26, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v27, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v30, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v38, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v41, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v45, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v48, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v51, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v54, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v60, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v64, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r3v65 */
    /* JADX WARN: Type inference failed for: r3v66 */
    /* JADX WARN: Type inference failed for: r3v67 */
    /* JADX WARN: Type inference failed for: r3v68 */
    /* JADX WARN: Type inference failed for: r3v69 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v70 */
    /* JADX WARN: Type inference failed for: r3v71 */
    /* JADX WARN: Type inference failed for: r3v72 */
    /* JADX WARN: Type inference failed for: r3v73 */
    public static t1.h<Intent> j(Context context, Uri uri) {
        String scheme = uri.getScheme();
        String host = uri.getHost();
        if (("http".equals(scheme) || TournamentShareDialogURIBuilder.scheme.equals(scheme)) && !"tebakgambar.com".equals(host)) {
            return f(context, uri);
        }
        Uri uri2 = Uri.parse(uri.toString().replaceFirst("https://tebakgambar.com/", "tebakgambar://"));
        switch (f37044a.match(uri2)) {
            case 2:
                context = Henson.with(context).c().build();
                break;
            case 3:
                context = Henson.with(context).j().build();
                break;
            case 4:
                context = Henson.with(context).b().showLoginImmediately(true).build();
                break;
            case 5:
                context = Henson.with(context).i().build();
                break;
            case 6:
                try {
                    int iS = y.s(context);
                    int i10 = Integer.parseInt(uri2.getPathSegments().get(0));
                    context = iS >= i10 ? new Intent((Context) context, (Class<?>) EditFrameActivity.class).putExtra("frameLevel", i10) : Henson.with(context).i().build();
                } catch (Exception unused) {
                    context = Henson.with(context).i().build();
                }
                break;
            case 7:
                context = Henson.with(context).m().build();
                break;
            case 8:
                try {
                    context = Henson.with(context).l().campaignDetailId(Integer.valueOf(Integer.parseInt(uri2.getPathSegments().get(1)))).a();
                } catch (Exception unused2) {
                    context = Henson.with(context).i().build();
                }
                break;
            case 9:
                context = Henson.with(context).e().build();
                break;
            case 10:
                try {
                    Level levelFromId = Level.fromId(Integer.parseInt(uri2.getPathSegments().get(1)));
                    if (levelFromId == null || levelFromId.isLocked()) {
                        context = Henson.with(context).e().isLevelNotEligible(true).build();
                    } else {
                        levelFromId.generateLevelIfNeeded(context);
                        context = levelFromId.isAvailable() ? Henson.with(context).g().level(levelFromId.id).a() : Henson.with(context).d().level(levelFromId.id).a();
                    }
                } catch (Exception unused3) {
                    context = Henson.with(context).e().build();
                }
                break;
            case 11:
                try {
                    int i11 = Integer.parseInt(uri2.getPathSegments().get(2));
                    Level levelFromGlobalIndex = Level.fromGlobalIndex(i11);
                    if (levelFromGlobalIndex == null || levelFromGlobalIndex.isLocked()) {
                        context = Henson.with(context).e().isLevelNotEligible(true).build();
                    } else {
                        levelFromGlobalIndex.generateLevelIfNeeded(context);
                        if (levelFromGlobalIndex.isAvailable()) {
                            QuestionSavedData questionSavedData = levelFromGlobalIndex.getQuestionSavedData(i11);
                            context = (questionSavedData == null || !questionSavedData.open) ? Henson.with(context).g().level(levelFromGlobalIndex.id).b(true).a() : Henson.with(context).h().questionGlobalIndex(i11).build();
                        } else {
                            context = Henson.with(context).d().level(levelFromGlobalIndex.id).a();
                        }
                    }
                } catch (Exception unused4) {
                    context = Henson.with(context).e().build();
                }
                break;
            case 12:
                try {
                    context = Henson.with(context).e().eventId(Integer.parseInt(uri2.getPathSegments().get(1))).build();
                } catch (Exception unused5) {
                    context = Henson.with(context).e().build();
                }
                break;
            case 13:
                return f(context, Uri.parse(Uri.decode(uri2.getQueryParameter("url"))));
            case 14:
                return e(Uri.parse(Uri.decode(uri2.getQueryParameter("url"))));
            default:
                context = Henson.with(context).b().build();
                break;
        }
        return t1.h.q(context);
    }

    public static t1.h<Intent> k(Context context, String str) {
        try {
            return j(context, Uri.parse(str));
        } catch (Exception e10) {
            return t1.h.p(e10);
        }
    }
}
