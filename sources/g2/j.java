package g2;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: LazyHeaders.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, List<i>> f29817c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Map<String, String> f29818d;

    /* JADX INFO: compiled from: LazyHeaders.java */
    public static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final String f29819e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Map<String, List<i>> f29820f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f29821a = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map<String, List<i>> f29822b = f29820f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f29823c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f29824d = true;

        static {
            String property = System.getProperty("http.agent");
            f29819e = property;
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(property)) {
                map.put("User-Agent", Collections.singletonList(new b(property)));
            }
            map.put("Accept-Encoding", Collections.singletonList(new b("identity")));
            f29820f = Collections.unmodifiableMap(map);
        }

        public j a() {
            this.f29821a = true;
            return new j(this.f29822b);
        }
    }

    /* JADX INFO: compiled from: LazyHeaders.java */
    static final class b implements i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f29825a;

        b(String str) {
            this.f29825a = str;
        }

        @Override // g2.i
        public String a() {
            return this.f29825a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f29825a.equals(((b) obj).f29825a);
            }
            return false;
        }

        public int hashCode() {
            return this.f29825a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f29825a + "'}";
        }
    }

    j(Map<String, List<i>> map) {
        this.f29817c = Collections.unmodifiableMap(map);
    }

    private Map<String, String> b() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.f29817c.entrySet()) {
            StringBuilder sb = new StringBuilder();
            List<i> value = entry.getValue();
            for (int i10 = 0; i10 < value.size(); i10++) {
                sb.append(value.get(i10).a());
                if (i10 != value.size() - 1) {
                    sb.append(',');
                }
            }
            map.put(entry.getKey(), sb.toString());
        }
        return map;
    }

    @Override // g2.e
    public Map<String, String> a() {
        if (this.f29818d == null) {
            synchronized (this) {
                if (this.f29818d == null) {
                    this.f29818d = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f29818d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f29817c.equals(((j) obj).f29817c);
        }
        return false;
    }

    public int hashCode() {
        return this.f29817c.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f29817c + '}';
    }
}
