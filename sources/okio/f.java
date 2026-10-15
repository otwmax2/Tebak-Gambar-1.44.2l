package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ByteString.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements Serializable, Comparable<f> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final char[] f33357r = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final f f33358s = o(new byte[0]);
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final byte[] f33359o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    transient int f33360p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    transient String f33361q;

    f(byte[] bArr) {
        this.f33359o = bArr;
    }

    static int e(String str, int i10) {
        int length = str.length();
        int iCharCount = 0;
        int i11 = 0;
        while (iCharCount < length) {
            if (i11 == i10) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i11++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    @Nullable
    public static f g(String str) {
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        byte[] bArrA = b.a(str);
        if (bArrA != null) {
            return new f(bArrA);
        }
        return null;
    }

    public static f i(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((j(str.charAt(i11)) << 4) + j(str.charAt(i11 + 1)));
        }
        return o(bArr);
    }

    private static int j(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (c10 < 'a' || c10 > 'f') {
            c11 = 'A';
            if (c10 < 'A' || c10 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c10);
            }
        }
        return (c10 - c11) + 10;
    }

    private f k(String str) {
        try {
            return o(MessageDigest.getInstance(str).digest(this.f33359o));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static f l(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        f fVar = new f(str.getBytes(w.f33410a));
        fVar.f33361q = str;
        return fVar;
    }

    public static f o(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static f p(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        w.b(bArr.length, i10, i11);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new f(bArr2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        f fVarS = s(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = f.class.getDeclaredField("o");
            declaredField.setAccessible(true);
            declaredField.set(this, fVarS.f33359o);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    public static f s(InputStream inputStream, int i10) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + i10);
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = inputStream.read(bArr, i11, i10 - i11);
            if (i12 == -1) {
                throw new EOFException();
            }
            i11 += i12;
        }
        return new f(bArr);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f33359o.length);
        objectOutputStream.write(this.f33359o);
    }

    public f I() {
        return k("SHA-256");
    }

    public int J() {
        return this.f33359o.length;
    }

    public final boolean K(f fVar) {
        return q(0, fVar, 0, fVar.J());
    }

    public f L(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f33359o;
        if (i11 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f33359o.length + ")");
        }
        int i12 = i11 - i10;
        if (i12 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i10 == 0 && i11 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10, bArr2, 0, i12);
        return new f(bArr2);
    }

    public f M() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f33359o;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b10 = bArr[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArr2.length; i11++) {
                    byte b11 = bArr2[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArr2[i11] = (byte) (b11 + 32);
                    }
                }
                return new f(bArr2);
            }
            i10++;
        }
    }

    public byte[] N() {
        return (byte[]) this.f33359o.clone();
    }

    public String O() {
        String str = this.f33361q;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f33359o, w.f33410a);
        this.f33361q = str2;
        return str2;
    }

    void P(c cVar) {
        byte[] bArr = this.f33359o;
        cVar.W1(bArr, 0, bArr.length);
    }

    public String c() {
        return b.b(this.f33359o);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int iJ = fVar.J();
            byte[] bArr = this.f33359o;
            if (iJ == bArr.length && fVar.r(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        int iJ = J();
        int iJ2 = fVar.J();
        int iMin = Math.min(iJ, iJ2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iM = m(i10) & 255;
            int iM2 = fVar.m(i10) & 255;
            if (iM != iM2) {
                return iM < iM2 ? -1 : 1;
            }
        }
        if (iJ == iJ2) {
            return 0;
        }
        return iJ < iJ2 ? -1 : 1;
    }

    public int hashCode() {
        int i10 = this.f33360p;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.f33359o);
        this.f33360p = iHashCode;
        return iHashCode;
    }

    public byte m(int i10) {
        return this.f33359o[i10];
    }

    public String n() {
        byte[] bArr = this.f33359o;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f33357r;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public boolean q(int i10, f fVar, int i11, int i12) {
        return fVar.r(i11, this.f33359o, i10, i12);
    }

    public boolean r(int i10, byte[] bArr, int i11, int i12) {
        if (i10 >= 0) {
            byte[] bArr2 = this.f33359o;
            if (i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && w.a(bArr2, i10, bArr, i11, i12)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        if (this.f33359o.length == 0) {
            return "[size=0]";
        }
        String strO = O();
        int iE = e(strO, 64);
        if (iE == -1) {
            if (this.f33359o.length <= 64) {
                return "[hex=" + n() + "]";
            }
            return "[size=" + this.f33359o.length + " hex=" + L(0, 64).n() + "…]";
        }
        String strReplace = strO.substring(0, iE).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iE >= strO.length()) {
            return "[text=" + strReplace + "]";
        }
        return "[size=" + this.f33359o.length + " text=" + strReplace + "…]";
    }

    public f u() {
        return k("SHA-1");
    }
}
