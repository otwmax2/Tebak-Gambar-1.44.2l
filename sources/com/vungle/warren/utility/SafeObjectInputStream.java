package com.vungle.warren.utility;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class SafeObjectInputStream extends ObjectInputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List<Class<?>> f28591o;

    SafeObjectInputStream(InputStream inputStream, List<Class<?>> list) throws IOException {
        super(inputStream);
        this.f28591o = list;
    }

    @Override // java.io.ObjectInputStream
    protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException, IOException {
        Class<?> clsResolveClass = super.resolveClass(objectStreamClass);
        if (this.f28591o == null || Number.class.isAssignableFrom(clsResolveClass) || String.class.equals(clsResolveClass) || Boolean.class.equals(clsResolveClass) || clsResolveClass.isArray() || this.f28591o.contains(clsResolveClass)) {
            return clsResolveClass;
        }
        throw new IOException("Deserialization is not allowed for " + objectStreamClass.getName());
    }
}
