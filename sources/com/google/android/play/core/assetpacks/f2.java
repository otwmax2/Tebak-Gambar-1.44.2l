package com.google.android.play.core.assetpacks;

import android.util.Base64;
import com.facebook.internal.Utility;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f2 {
    static String a(List<File> list) throws NoSuchAlgorithmException, IOException {
        int i10;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        byte[] bArr = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            FileInputStream fileInputStream = new FileInputStream(it.next());
            do {
                try {
                    i10 = fileInputStream.read(bArr);
                    if (i10 > 0) {
                        messageDigest.update(bArr, 0, i10);
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            } while (i10 != -1);
            fileInputStream.close();
        }
        return Base64.encodeToString(messageDigest.digest(), 11);
    }
}
