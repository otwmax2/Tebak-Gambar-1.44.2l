package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaqc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Cipher f9711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f9712b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f9713c = new Object();

    public zzaqc(SecureRandom secureRandom) {
    }

    private static final Cipher c() throws NoSuchPaddingException, NoSuchAlgorithmException {
        Cipher cipher;
        synchronized (f9713c) {
            if (f9711a == null) {
                f9711a = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f9711a;
        }
        return cipher;
    }

    public final String a(byte[] bArr, byte[] bArr2) throws zzaqb {
        byte[] bArrDoFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f9712b) {
                c().init(1, secretKeySpec, (SecureRandom) null);
                bArrDoFinal = c().doFinal(bArr2);
                iv = c().getIV();
            }
            int length2 = bArrDoFinal.length + iv.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
            byteBufferAllocate.put(iv).put(bArrDoFinal);
            byteBufferAllocate.flip();
            byte[] bArr3 = new byte[length2];
            byteBufferAllocate.get(bArr3);
            return zzaoh.a(bArr3, false);
        } catch (InvalidKeyException e10) {
            throw new zzaqb(this, e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new zzaqb(this, e11);
        } catch (BadPaddingException e12) {
            throw new zzaqb(this, e12);
        } catch (IllegalBlockSizeException e13) {
            throw new zzaqb(this, e13);
        } catch (NoSuchPaddingException e14) {
            throw new zzaqb(this, e14);
        }
    }

    public final byte[] b(byte[] bArr, String str) throws zzaqb {
        byte[] bArrDoFinal;
        int length = bArr.length;
        try {
            byte[] bArrB = zzaoh.b(str, false);
            int length2 = bArrB.length;
            if (length2 <= 16) {
                throw new zzaqb(this);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
            byteBufferAllocate.put(bArrB);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[length2 - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f9712b) {
                c().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                bArrDoFinal = c().doFinal(bArr3);
            }
            return bArrDoFinal;
        } catch (IllegalArgumentException e10) {
            throw new zzaqb(this, e10);
        } catch (InvalidAlgorithmParameterException e11) {
            throw new zzaqb(this, e11);
        } catch (InvalidKeyException e12) {
            throw new zzaqb(this, e12);
        } catch (NoSuchAlgorithmException e13) {
            throw new zzaqb(this, e13);
        } catch (BadPaddingException e14) {
            throw new zzaqb(this, e14);
        } catch (IllegalBlockSizeException e15) {
            throw new zzaqb(this, e15);
        } catch (NoSuchPaddingException e16) {
            throw new zzaqb(this, e16);
        }
    }
}
