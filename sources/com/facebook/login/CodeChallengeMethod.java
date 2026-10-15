package com.facebook.login;

import java.util.Arrays;

/* JADX INFO: compiled from: CodeChallengeMethod.kt */
/* JADX INFO: loaded from: classes.dex */
public enum CodeChallengeMethod {
    S256("S256"),
    PLAIN("plain");

    CodeChallengeMethod(String str) {
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static CodeChallengeMethod[] valuesCustom() {
        CodeChallengeMethod[] codeChallengeMethodArrValuesCustom = values();
        return (CodeChallengeMethod[]) Arrays.copyOf(codeChallengeMethodArrValuesCustom, codeChallengeMethodArrValuesCustom.length);
    }

    /* synthetic */ CodeChallengeMethod(String str, int i10, t9.g gVar) {
        this((i10 & 1) != 0 ? "S256" : str);
    }
}
