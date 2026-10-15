package g2;

import android.util.Log;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: StreamEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class o implements z1.b<InputStream> {
    @Override // z1.b
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // z1.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(InputStream inputStream, OutputStream outputStream) {
        byte[] bArrB = x2.a.a().b();
        while (true) {
            try {
                int i10 = inputStream.read(bArrB);
                if (i10 == -1) {
                    return true;
                }
                outputStream.write(bArrB, 0, i10);
            } catch (IOException e10) {
                if (Log.isLoggable("StreamEncoder", 3)) {
                    Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e10);
                }
                return false;
            } finally {
                x2.a.a().c(bArrB);
            }
        }
    }
}
