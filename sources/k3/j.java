package k3;

import com.google.auto.value.AutoValue;
import java.util.List;

/* JADX INFO: compiled from: BatchedLogRequest.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class j {
    public static j a(List<m> list) {
        return new d(list);
    }

    public static d6.a b() {
        return new f6.d().j(b.f31370a).k(true).i();
    }

    public abstract List<m> c();
}
