package g1;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: TransitionValues.java */
/* JADX INFO: loaded from: classes.dex */
public class s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f29775b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f29774a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<m> f29776c = new ArrayList<>();

    @Deprecated
    public s() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.f29775b == sVar.f29775b && this.f29774a.equals(sVar.f29774a);
    }

    public int hashCode() {
        return (this.f29775b.hashCode() * 31) + this.f29774a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f29775b + "\n") + "    values:";
        for (String str2 : this.f29774a.keySet()) {
            str = str + "    " + str2 + ": " + this.f29774a.get(str2) + "\n";
        }
        return str;
    }

    public s(View view) {
        this.f29775b = view;
    }
}
