package com.google.gson;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* JADX INFO: compiled from: JsonParser.java */
/* JADX INFO: loaded from: classes2.dex */
public final class q {
    public static l a(h7.a aVar) throws u, m {
        boolean zK = aVar.k();
        aVar.E(true);
        try {
            try {
                return c7.l.a(aVar);
            } catch (OutOfMemoryError e10) {
                throw new p("Failed parsing JSON source: " + aVar + " to Json", e10);
            } catch (StackOverflowError e11) {
                throw new p("Failed parsing JSON source: " + aVar + " to Json", e11);
            }
        } finally {
            aVar.E(zK);
        }
    }

    public static l b(Reader reader) throws u, m {
        try {
            h7.a aVar = new h7.a(reader);
            l lVarA = a(aVar);
            if (!lVarA.q() && aVar.x() != h7.b.END_DOCUMENT) {
                throw new u("Did not consume the entire document.");
            }
            return lVarA;
        } catch (h7.d e10) {
            throw new u(e10);
        } catch (IOException e11) {
            throw new m(e11);
        } catch (NumberFormatException e12) {
            throw new u(e12);
        }
    }

    public static l c(String str) throws u {
        return b(new StringReader(str));
    }
}
