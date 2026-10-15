package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.unzip.UnzipEngine;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseInputStream extends InputStream {
    @Override // java.io.InputStream
    public int available() throws IOException {
        return 0;
    }

    public UnzipEngine b() {
        return null;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return 0;
    }
}
