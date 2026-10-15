package f9;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.share.internal.ShareConstants;
import java.util.List;

/* JADX INFO: compiled from: Tweet.java */
/* JADX INFO: loaded from: classes2.dex */
public class n {

    @b7.c(alternate = {"full_text"}, value = "text")
    public final String A;

    @b7.c("display_text_range")
    public final List<Integer> B;

    @b7.c("truncated")
    public final boolean C;

    @b7.c("user")
    public final p D;

    @b7.c("withheld_copyright")
    public final boolean E;

    @b7.c("withheld_in_countries")
    public final List<String> F;

    @b7.c("withheld_scope")
    public final String G;

    @b7.c("card")
    public final e H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @b7.c("coordinates")
    public final f f29553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @b7.c("created_at")
    public final String f29554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @b7.c("current_user_retweet")
    public final Object f29555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @b7.c("entities")
    public final o f29556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @b7.c("extended_entities")
    public final o f29557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @b7.c("favorite_count")
    public final Integer f29558f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @b7.c("favorited")
    public final boolean f29559g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @b7.c("filter_level")
    public final String f29560h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @b7.c("id")
    public final long f29561i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @b7.c("id_str")
    public final String f29562j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @b7.c("in_reply_to_screen_name")
    public final String f29563k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @b7.c("in_reply_to_status_id")
    public final long f29564l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @b7.c("in_reply_to_status_id_str")
    public final String f29565m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @b7.c("in_reply_to_user_id")
    public final long f29566n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @b7.c("in_reply_to_user_id_str")
    public final String f29567o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @b7.c("lang")
    public final String f29568p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @b7.c("place")
    public final k f29569q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @b7.c("possibly_sensitive")
    public final boolean f29570r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @b7.c("scopes")
    public final Object f29571s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @b7.c("quoted_status_id")
    public final long f29572t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @b7.c("quoted_status_id_str")
    public final String f29573u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @b7.c("quoted_status")
    public final n f29574v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @b7.c("retweet_count")
    public final int f29575w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @b7.c("retweeted")
    public final boolean f29576x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @b7.c("retweeted_status")
    public final n f29577y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @b7.c(ShareConstants.FEED_SOURCE_PARAM)
    public final String f29578z;

    /* JADX WARN: Illegal instructions before constructor call */
    private n() {
        o oVar = o.f29579f;
        this(null, null, null, oVar, oVar, 0, false, null, 0L, AppEventsConstants.EVENT_PARAM_VALUE_NO, null, 0L, AppEventsConstants.EVENT_PARAM_VALUE_NO, 0L, AppEventsConstants.EVENT_PARAM_VALUE_NO, null, null, false, null, 0L, AppEventsConstants.EVENT_PARAM_VALUE_NO, null, 0, false, null, null, null, null, false, null, false, null, null, null);
    }

    public long a() {
        return this.f29561i;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof n) && this.f29561i == ((n) obj).f29561i;
    }

    public int hashCode() {
        return (int) this.f29561i;
    }

    public n(f fVar, String str, Object obj, o oVar, o oVar2, Integer num, boolean z10, String str2, long j10, String str3, String str4, long j11, String str5, long j12, String str6, String str7, k kVar, boolean z11, Object obj2, long j13, String str8, n nVar, int i10, boolean z12, n nVar2, String str9, String str10, List<Integer> list, boolean z13, p pVar, boolean z14, List<String> list2, String str11, e eVar) {
        this.f29553a = fVar;
        this.f29554b = str;
        this.f29555c = obj;
        this.f29556d = oVar == null ? o.f29579f : oVar;
        this.f29557e = oVar2 == null ? o.f29579f : oVar2;
        this.f29558f = num;
        this.f29559g = z10;
        this.f29560h = str2;
        this.f29561i = j10;
        this.f29562j = str3;
        this.f29563k = str4;
        this.f29564l = j11;
        this.f29565m = str5;
        this.f29566n = j12;
        this.f29567o = str6;
        this.f29568p = str7;
        this.f29569q = kVar;
        this.f29570r = z11;
        this.f29571s = obj2;
        this.f29572t = j13;
        this.f29573u = str8;
        this.f29574v = nVar;
        this.f29575w = i10;
        this.f29576x = z12;
        this.f29577y = nVar2;
        this.f29578z = str9;
        this.A = str10;
        this.B = j.a(list);
        this.C = z13;
        this.D = pVar;
        this.E = z14;
        this.F = j.a(list2);
        this.G = str11;
        this.H = eVar;
    }
}
