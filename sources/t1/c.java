package t1;

import java.util.Locale;

/* JADX INFO: compiled from: CancellationToken.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f35186a;

    c(e eVar) {
        this.f35186a = eVar;
    }

    public boolean a() {
        return this.f35186a.e();
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(this.f35186a.e()));
    }
}
