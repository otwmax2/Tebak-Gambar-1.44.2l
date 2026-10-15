package z0;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import androidx.room.h0;
import b1.j;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;

/* JADX INFO: compiled from: DBUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    public static void a(b1.g gVar) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor cursorP1 = gVar.P1("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (cursorP1.moveToNext()) {
            try {
                arrayList.add(cursorP1.getString(0));
            } catch (Throwable th) {
                cursorP1.close();
                throw th;
            }
        }
        cursorP1.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                gVar.execSQL("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    public static Cursor b(h0 h0Var, j jVar, boolean z10, CancellationSignal cancellationSignal) {
        Cursor cursorZ = h0Var.z(jVar, cancellationSignal);
        if (!z10 || !(cursorZ instanceof AbstractWindowedCursor)) {
            return cursorZ;
        }
        AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) cursorZ;
        int count = abstractWindowedCursor.getCount();
        return (Build.VERSION.SDK_INT < 23 || (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count) ? b.a(abstractWindowedCursor) : cursorZ;
    }

    public static int c(File file) throws IOException {
        FileChannel fileChannel = null;
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(byteBufferAllocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            byteBufferAllocate.rewind();
            int i10 = byteBufferAllocate.getInt();
            channel.close();
            return i10;
        } catch (Throwable th) {
            if (0 != 0) {
                fileChannel.close();
            }
            throw th;
        }
    }
}
