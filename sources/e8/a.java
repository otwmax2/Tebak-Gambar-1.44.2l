package e8;

import e8.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final HashSet<String> f28959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f28960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f28961e;

    public a(b.InterfaceC0155b interfaceC0155b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0155b);
        this.f28959c = new HashSet<>(hashSet);
        this.f28960d = jSONObject;
        this.f28961e = j10;
    }
}
