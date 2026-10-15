package m3;

import android.content.Context;
import com.google.auto.value.AutoValue;

/* JADX INFO: compiled from: CreationContext.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class h {
    public static h a(Context context, v3.a aVar, v3.a aVar2, String str) {
        return new c(context, aVar, aVar2, str);
    }

    public abstract Context b();

    public abstract String c();

    public abstract v3.a d();

    public abstract v3.a e();
}
