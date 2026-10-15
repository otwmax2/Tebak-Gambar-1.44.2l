package f9;

import com.facebook.appevents.UserDataStore;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: Place.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @b7.c("attributes")
    public final Map<String, String> f29536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @b7.c("bounding_box")
    public final a f29537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @b7.c(UserDataStore.COUNTRY)
    public final String f29538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @b7.c("country_code")
    public final String f29539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @b7.c("full_name")
    public final String f29540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @b7.c("id")
    public final String f29541f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @b7.c("name")
    public final String f29542g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @b7.c("place_type")
    public final String f29543h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @b7.c("url")
    public final String f29544i;

    /* JADX INFO: compiled from: Place.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @b7.c("coordinates")
        public final List<List<List<Double>>> f29545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @b7.c("type")
        public final String f29546b;

        private a() {
            this(null, null);
        }

        public a(List<List<List<Double>>> list, String str) {
            this.f29545a = j.a(list);
            this.f29546b = str;
        }
    }
}
