package com.vungle.warren.network.converters;

import ja.d0;

/* JADX INFO: loaded from: classes2.dex */
public class EmptyResponseConverter implements Converter<d0, Void> {
    @Override // com.vungle.warren.network.converters.Converter
    public Void convert(d0 d0Var) {
        d0Var.close();
        return null;
    }
}
