package ja;

import java.io.IOException;

/* JADX INFO: compiled from: Callback.java */
/* JADX INFO: loaded from: classes2.dex */
public interface f {
    void onFailure(e eVar, IOException iOException);

    void onResponse(e eVar, c0 c0Var) throws IOException;
}
