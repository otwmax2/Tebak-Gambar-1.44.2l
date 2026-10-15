package com.google.firebase.installations;

import b5.m;

/* JADX INFO: compiled from: FirebaseInstallationsException.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends m {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final a f26362o;

    /* JADX INFO: compiled from: FirebaseInstallationsException.java */
    public enum a {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public d(a aVar) {
        this.f26362o = aVar;
    }

    public d(String str, a aVar) {
        super(str);
        this.f26362o = aVar;
    }
}
