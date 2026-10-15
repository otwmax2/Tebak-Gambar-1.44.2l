package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.internal.AppCall;
import t9.m;

/* JADX INFO: compiled from: ResultProcessor.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ResultProcessor {
    private final FacebookCallback<?> appCallback;

    public ResultProcessor(FacebookCallback<?> facebookCallback) {
        this.appCallback = facebookCallback;
    }

    public void onCancel(AppCall appCall) {
        m.e(appCall, "appCall");
        FacebookCallback<?> facebookCallback = this.appCallback;
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onCancel();
    }

    public void onError(AppCall appCall, FacebookException facebookException) {
        m.e(appCall, "appCall");
        m.e(facebookException, "error");
        FacebookCallback<?> facebookCallback = this.appCallback;
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onError(facebookException);
    }

    public abstract void onSuccess(AppCall appCall, Bundle bundle);
}
