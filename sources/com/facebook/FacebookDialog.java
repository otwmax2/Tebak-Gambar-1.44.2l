package com.facebook;

import com.facebook.CallbackManager;

/* JADX INFO: compiled from: FacebookDialog.kt */
/* JADX INFO: loaded from: classes.dex */
public interface FacebookDialog<CONTENT, RESULT> {
    boolean canShow(CONTENT content);

    e.a<CONTENT, CallbackManager.ActivityResultParameters> createActivityResultContractForShowingDialog(CallbackManager callbackManager);

    void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback);

    void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback, int i10);

    void show(CONTENT content);
}
