package com.vungle.warren.network.converters;

import com.google.gson.f;
import com.google.gson.g;
import com.google.gson.o;
import ja.d0;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class JsonConverter implements Converter<d0, o> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f f28228a = new g().b();

    @Override // com.vungle.warren.network.converters.Converter
    public o convert(d0 d0Var) throws IOException {
        try {
            return (o) f28228a.k(d0Var.string(), o.class);
        } finally {
            d0Var.close();
        }
    }
}
