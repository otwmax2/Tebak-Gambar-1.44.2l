package com.tebakgambar.broadcastreceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.facebook.GraphResponse;

/* JADX INFO: loaded from: classes2.dex */
public class TweetReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS".equals(intent.getAction())) {
            Toast.makeText(context, GraphResponse.SUCCESS_KEY, 1).show();
        } else {
            Toast.makeText(context, "failed", 1).show();
        }
    }
}
