package v0;

import android.app.Application;
import android.content.Context;

/* JADX INFO: compiled from: MultiDexApplication.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends Application {
    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        a.l(this);
    }
}
