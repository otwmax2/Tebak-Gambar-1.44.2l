package x7;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f36497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f36498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f36499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f36500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f36501e;

    private b(e eVar, g gVar, h hVar, h hVar2, boolean z10) {
        this.f36500d = eVar;
        this.f36501e = gVar;
        this.f36497a = hVar;
        if (hVar2 == null) {
            this.f36498b = h.NONE;
        } else {
            this.f36498b = hVar2;
        }
        this.f36499c = z10;
    }

    public static b a(e eVar, g gVar, h hVar, h hVar2, boolean z10) {
        a8.e.b(eVar, "CreativeType is null");
        a8.e.b(gVar, "ImpressionType is null");
        a8.e.b(hVar, "Impression owner is null");
        a8.e.e(hVar, eVar, gVar);
        return new b(eVar, gVar, hVar, hVar2, z10);
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        a8.b.g(jSONObject, "impressionOwner", this.f36497a);
        a8.b.g(jSONObject, "mediaEventsOwner", this.f36498b);
        a8.b.g(jSONObject, "creativeType", this.f36500d);
        a8.b.g(jSONObject, "impressionType", this.f36501e);
        a8.b.g(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f36499c));
        return jSONObject;
    }
}
