package com.google.gson;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: compiled from: JsonElement.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l {
    public boolean c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public float i() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int j() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public i k() {
        if (p()) {
            return (i) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public o l() {
        if (r()) {
            return (o) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public r m() {
        if (s()) {
            return (r) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public long n() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String o() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean p() {
        return this instanceof i;
    }

    public boolean q() {
        return this instanceof n;
    }

    public boolean r() {
        return this instanceof o;
    }

    public boolean s() {
        return this instanceof r;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            h7.c cVar = new h7.c(stringWriter);
            cVar.u(true);
            c7.l.b(this, cVar);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
