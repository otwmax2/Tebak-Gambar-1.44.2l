package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class FirebaseMessagingService extends g {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Queue<String> f26400t = new ArrayDeque(10);

    private boolean j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue<String> queue = f26400t;
        if (!queue.contains(str)) {
            if (queue.size() >= 10) {
                queue.remove();
            }
            queue.add(str);
            return false;
        }
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        String strValueOf = String.valueOf(str);
        Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Received duplicate message: ".concat(strValueOf) : new String("Received duplicate message: "));
        return true;
    }

    private void k(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("androidx.content.wakelockid");
        if (g0.t(extras)) {
            g0 g0Var = new g0(extras);
            ExecutorService executorServiceD = p.d();
            try {
                if (new c(this, g0Var, executorServiceD).a()) {
                    return;
                }
                executorServiceD.shutdown();
                if (e0.A(intent)) {
                    e0.t(intent);
                }
            } finally {
                executorServiceD.shutdown();
            }
        }
        o(new h0(extras));
    }

    private String l(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    private void m(Intent intent) {
        if (j(intent.getStringExtra("google.message_id"))) {
            return;
        }
        s(intent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void s(android.content.Intent r7) {
        /*
            r6 = this;
            java.lang.String r0 = "message_type"
            java.lang.String r0 = r7.getStringExtra(r0)
            java.lang.String r1 = "gcm"
            if (r0 != 0) goto Lb
            r0 = r1
        Lb:
            int r2 = r0.hashCode()
            r3 = 3
            r4 = 2
            r5 = 1
            switch(r2) {
                case -2062414158: goto L32;
                case 102161: goto L2a;
                case 814694033: goto L20;
                case 814800675: goto L16;
                default: goto L15;
            }
        L15:
            goto L3c
        L16:
            java.lang.String r1 = "send_event"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3c
            r1 = 2
            goto L3d
        L20:
            java.lang.String r1 = "send_error"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3c
            r1 = 3
            goto L3d
        L2a:
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3c
            r1 = 0
            goto L3d
        L32:
            java.lang.String r1 = "deleted_messages"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3c
            r1 = 1
            goto L3d
        L3c:
            r1 = -1
        L3d:
            if (r1 == 0) goto L7f
            if (r1 == r5) goto L7b
            if (r1 == r4) goto L71
            if (r1 == r3) goto L5e
            java.lang.String r7 = "Received message with unknown type: "
            int r1 = r0.length()
            if (r1 == 0) goto L52
            java.lang.String r7 = r7.concat(r0)
            goto L58
        L52:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r7)
            r7 = r0
        L58:
            java.lang.String r0 = "FirebaseMessaging"
            android.util.Log.w(r0, r7)
            return
        L5e:
            java.lang.String r0 = r6.l(r7)
            com.google.firebase.messaging.l0 r1 = new com.google.firebase.messaging.l0
            java.lang.String r2 = "error"
            java.lang.String r7 = r7.getStringExtra(r2)
            r1.<init>(r7)
            r6.r(r0, r1)
            return
        L71:
            java.lang.String r0 = "google.message_id"
            java.lang.String r7 = r7.getStringExtra(r0)
            r6.p(r7)
            return
        L7b:
            r6.n()
            return
        L7f:
            com.google.firebase.messaging.e0.v(r7)
            r6.k(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.s(android.content.Intent):void");
    }

    @Override // com.google.firebase.messaging.g
    protected Intent c(Intent intent) {
        return m0.b().c();
    }

    @Override // com.google.firebase.messaging.g
    public void d(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(action)) {
            m(intent);
        } else if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
            q(intent.getStringExtra("token"));
        } else {
            String strValueOf = String.valueOf(intent.getAction());
            Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Unknown intent action: ".concat(strValueOf) : new String("Unknown intent action: "));
        }
    }

    public void n() {
    }

    public void o(h0 h0Var) {
    }

    public void p(String str) {
    }

    public void q(String str) {
    }

    public void r(String str, Exception exc) {
    }
}
