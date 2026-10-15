package v4;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class v {
    public static long a(w wVar, InputStream inputStream, OutputStream outputStream, long j10) throws IOException {
        byte[] bArr = new byte[16384];
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 4096));
        int i10 = dataInputStream.readInt();
        if (i10 != -771763713) {
            String strValueOf = String.valueOf(String.format("%x", Integer.valueOf(i10)));
            throw new u(strValueOf.length() != 0 ? "Unexpected magic=".concat(strValueOf) : new String("Unexpected magic="));
        }
        int i11 = dataInputStream.read();
        if (i11 != 4) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Unexpected version=");
            sb.append(i11);
            throw new u(sb.toString());
        }
        long j11 = 0;
        while (true) {
            long j12 = j10 - j11;
            try {
                int unsignedShort = dataInputStream.read();
                if (unsignedShort == -1) {
                    throw new IOException("Patch file overrun");
                }
                if (unsignedShort == 0) {
                    return j11;
                }
                switch (unsignedShort) {
                    case 247:
                        unsignedShort = dataInputStream.readUnsignedShort();
                        c(bArr, dataInputStream, outputStream, unsignedShort, j12);
                        break;
                    case 248:
                        unsignedShort = dataInputStream.readInt();
                        c(bArr, dataInputStream, outputStream, unsignedShort, j12);
                        break;
                    case 249:
                        long unsignedShort2 = dataInputStream.readUnsignedShort();
                        unsignedShort = dataInputStream.read();
                        if (unsignedShort == -1) {
                            throw new IOException("Unexpected end of patch");
                        }
                        b(bArr, wVar, outputStream, unsignedShort2, unsignedShort, j12);
                        break;
                        break;
                    case 250:
                        long unsignedShort3 = dataInputStream.readUnsignedShort();
                        unsignedShort = dataInputStream.readUnsignedShort();
                        b(bArr, wVar, outputStream, unsignedShort3, unsignedShort, j12);
                        break;
                    case 251:
                        long unsignedShort4 = dataInputStream.readUnsignedShort();
                        unsignedShort = dataInputStream.readInt();
                        b(bArr, wVar, outputStream, unsignedShort4, unsignedShort, j12);
                        break;
                    case 252:
                        long j13 = dataInputStream.readInt();
                        unsignedShort = dataInputStream.read();
                        if (unsignedShort == -1) {
                            throw new IOException("Unexpected end of patch");
                        }
                        b(bArr, wVar, outputStream, j13, unsignedShort, j12);
                        break;
                        break;
                    case 253:
                        long j14 = dataInputStream.readInt();
                        unsignedShort = dataInputStream.readUnsignedShort();
                        b(bArr, wVar, outputStream, j14, unsignedShort, j12);
                        break;
                    case 254:
                        long j15 = dataInputStream.readInt();
                        unsignedShort = dataInputStream.readInt();
                        b(bArr, wVar, outputStream, j15, unsignedShort, j12);
                        break;
                    case 255:
                        long j16 = dataInputStream.readLong();
                        unsignedShort = dataInputStream.readInt();
                        b(bArr, wVar, outputStream, j16, unsignedShort, j12);
                        break;
                    default:
                        c(bArr, dataInputStream, outputStream, unsignedShort, j12);
                        break;
                }
                j11 += (long) unsignedShort;
            } finally {
                outputStream.flush();
            }
        }
    }

    private static void b(byte[] bArr, w wVar, OutputStream outputStream, long j10, int i10, long j11) throws IOException {
        int i11 = i10;
        if (i11 < 0) {
            throw new IOException("copyLength negative");
        }
        if (j10 < 0) {
            throw new IOException("inputOffset negative");
        }
        long j12 = i11;
        if (j12 > j11) {
            throw new IOException("Output length overrun");
        }
        try {
            InputStream inputStreamD = new x(wVar, j10, j12).d();
            while (i11 > 0) {
                try {
                    int iMin = Math.min(i11, 16384);
                    int i12 = 0;
                    while (i12 < iMin) {
                        int i13 = inputStreamD.read(bArr, i12, iMin - i12);
                        if (i13 == -1) {
                            throw new IOException("truncated input stream");
                        }
                        i12 += i13;
                    }
                    outputStream.write(bArr, 0, iMin);
                    i11 -= iMin;
                } catch (Throwable th) {
                    try {
                        inputStreamD.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
            inputStreamD.close();
        } catch (EOFException e10) {
            throw new IOException("patch underrun", e10);
        }
    }

    private static void c(byte[] bArr, DataInputStream dataInputStream, OutputStream outputStream, int i10, long j10) throws IOException {
        if (i10 < 0) {
            throw new IOException("copyLength negative");
        }
        if (i10 > j10) {
            throw new IOException("Output length overrun");
        }
        while (i10 > 0) {
            try {
                int iMin = Math.min(i10, 16384);
                dataInputStream.readFully(bArr, 0, iMin);
                outputStream.write(bArr, 0, iMin);
                i10 -= iMin;
            } catch (EOFException unused) {
                throw new IOException("patch underrun");
            }
        }
    }
}
