package i5;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class v0 extends d implements Api.ApiOptions.HasOptions {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f30450p;

    private v0(String str) {
        this.f30450p = Preconditions.h(str, "A valid API key must be provided");
    }

    @Override // i5.d
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ d clone() {
        return (v0) clone();
    }

    public final String b() {
        return this.f30450p;
    }

    @Override // i5.d
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new y0(this.f30450p).a();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v0) {
            return Objects.b(this.f30450p, ((v0) obj).f30450p);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f30450p);
    }

    /* synthetic */ v0(String str, w0 w0Var) {
        this(str);
    }
}
