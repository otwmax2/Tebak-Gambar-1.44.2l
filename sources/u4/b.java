package u4;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Object> f35591a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f35592b = new AtomicBoolean(false);

    private final synchronized void b() {
        this.f35591a.put("assetOnlyUpdates", Boolean.FALSE);
    }

    public final synchronized boolean a(String str) {
        if (!this.f35592b.get()) {
            b();
        }
        Object obj = this.f35591a.get("assetOnlyUpdates");
        if (!(obj instanceof Boolean)) {
            return false;
        }
        return ((Boolean) obj).booleanValue();
    }
}
