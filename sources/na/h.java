package na;

import ja.d0;
import ja.v;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealResponseBody.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends d0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private final String f32533p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f32534q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final okio.e f32535r;

    public h(@Nullable String str, long j10, okio.e eVar) {
        this.f32533p = str;
        this.f32534q = j10;
        this.f32535r = eVar;
    }

    @Override // ja.d0
    public long contentLength() {
        return this.f32534q;
    }

    @Override // ja.d0
    public v contentType() {
        String str = this.f32533p;
        if (str != null) {
            return v.d(str);
        }
        return null;
    }

    @Override // ja.d0
    public okio.e source() {
        return this.f32535r;
    }
}
