package l3;

import android.annotation.SuppressLint;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import javax.inject.Singleton;

/* JADX INFO: compiled from: ExecutionModule.java */
/* JADX INFO: loaded from: classes.dex */
abstract class j {
    @Singleton
    @SuppressLint({"ThreadPoolCreation"})
    static Executor a() {
        return new n(Executors.newSingleThreadExecutor());
    }
}
