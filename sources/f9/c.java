package f9;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: BindingValues.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Object> f29520a;

    public c() {
        this(Collections.EMPTY_MAP);
    }

    public c(Map<String, Object> map) {
        this.f29520a = Collections.unmodifiableMap(map);
    }
}
