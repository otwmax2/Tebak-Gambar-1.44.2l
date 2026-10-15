package a9;

import a9.a;
import java.text.Normalizer;

/* JADX INFO: compiled from: Validator.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f87a = 23;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f88b = 23;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f89c = new a();

    public int a(String str) {
        String strNormalize = Normalizer.normalize(str, Normalizer.Form.NFC);
        int iCodePointCount = strNormalize.codePointCount(0, strNormalize.length());
        for (a.C0004a c0004a : this.f89c.a(strNormalize)) {
            iCodePointCount = iCodePointCount + (c0004a.f57a - c0004a.f58b) + (c0004a.f59c.toLowerCase().startsWith("https://") ? this.f88b : this.f87a);
        }
        return iCodePointCount;
    }
}
