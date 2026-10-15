package x2;

import android.util.Log;
import com.facebook.internal.NativeProtocol;
import java.util.Queue;

/* JADX INFO: compiled from: ByteArrayPool.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f36241b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<byte[]> f36242a = h.d(0);

    private a() {
    }

    public static a a() {
        return f36241b;
    }

    public byte[] b() {
        byte[] bArrPoll;
        synchronized (this.f36242a) {
            bArrPoll = this.f36242a.poll();
        }
        if (bArrPoll == null) {
            bArrPoll = new byte[NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST];
            if (Log.isLoggable("ByteArrayPool", 3)) {
                Log.d("ByteArrayPool", "Created temp bytes");
            }
        }
        return bArrPoll;
    }

    public boolean c(byte[] bArr) {
        boolean z10 = false;
        if (bArr.length != 65536) {
            return false;
        }
        synchronized (this.f36242a) {
            if (this.f36242a.size() < 32) {
                z10 = true;
                this.f36242a.offer(bArr);
            }
        }
        return z10;
    }
}
