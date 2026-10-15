package f9;

import com.facebook.share.internal.ShareConstants;
import java.util.List;

/* JADX INFO: compiled from: TweetEntities.java */
/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final o f29579f = new o(null, null, null, null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @b7.c("urls")
    public final List<Object> f29580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @b7.c("user_mentions")
    public final List<Object> f29581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @b7.c(ShareConstants.WEB_DIALOG_PARAM_MEDIA)
    public final List<Object> f29582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @b7.c("hashtags")
    public final List<Object> f29583d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @b7.c("symbols")
    public final List<Object> f29584e;

    private o() {
        this(null, null, null, null, null);
    }

    public o(List<Object> list, List<Object> list2, List<Object> list3, List<Object> list4, List<Object> list5) {
        this.f29580a = j.a(list);
        this.f29581b = j.a(list2);
        this.f29582c = j.a(list3);
        this.f29583d = j.a(list4);
        this.f29584e = j.a(list5);
    }
}
