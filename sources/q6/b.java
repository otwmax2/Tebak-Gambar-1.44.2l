package q6;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth-interop@@19.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34063a;

    @KeepForSdk
    public b(String str) {
        this.f34063a = str;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return Objects.b(this.f34063a, ((b) obj).f34063a);
        }
        return false;
    }

    public int hashCode() {
        return Objects.c(this.f34063a);
    }

    public String toString() {
        return Objects.d(this).a("token", this.f34063a).toString();
    }
}
