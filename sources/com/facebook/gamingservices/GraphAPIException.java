package com.facebook.gamingservices;

import t9.m;

/* JADX INFO: compiled from: TournamentFetcher.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GraphAPIException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphAPIException(String str) {
        super(str);
        m.e(str, "message");
    }
}
