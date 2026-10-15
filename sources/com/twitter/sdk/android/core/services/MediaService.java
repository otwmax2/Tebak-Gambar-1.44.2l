package com.twitter.sdk.android.core.services;

import com.facebook.share.internal.ShareConstants;
import f9.i;
import ja.b0;
import wa.b;
import ya.l;
import ya.o;
import ya.q;

/* JADX INFO: loaded from: classes2.dex */
public interface MediaService {
    @l
    @o("https://upload.twitter.com/1.1/media/upload.json")
    b<i> upload(@q(ShareConstants.WEB_DIALOG_PARAM_MEDIA) b0 b0Var, @q("media_data") b0 b0Var2, @q("additional_owners") b0 b0Var3);
}
