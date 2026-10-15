package b1;

import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;

/* JADX INFO: compiled from: SupportSQLiteDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public interface g extends Closeable {
    String L2();

    boolean O2();

    Cursor P1(String str);

    void V();

    void X1();

    Cursor c1(j jVar);

    List<Pair<String, String>> d0();

    void execSQL(String str) throws SQLException;

    boolean h3();

    boolean isOpen();

    Cursor s0(j jVar, CancellationSignal cancellationSignal);

    void u1();

    k w0(String str);

    void x1(String str, Object[] objArr) throws SQLException;

    void z1();
}
