package a2;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* JADX INFO: compiled from: ByteArrayFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements c<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f33a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34b;

    public b(byte[] bArr, String str) {
        this.f33a = bArr;
        this.f34b = str;
    }

    @Override // a2.c
    public String a() {
        return this.f34b;
    }

    @Override // a2.c
    public void c() {
    }

    @Override // a2.c
    public void cancel() {
    }

    @Override // a2.c
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public InputStream b(v1.i iVar) {
        return new ByteArrayInputStream(this.f33a);
    }
}
