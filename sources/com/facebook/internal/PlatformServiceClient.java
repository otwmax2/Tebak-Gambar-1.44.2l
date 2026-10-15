package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;

/* JADX INFO: compiled from: PlatformServiceClient.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class PlatformServiceClient implements ServiceConnection {
    private final String applicationId;
    private final Context context;
    private final Handler handler;
    private CompletedListener listener;
    private final String nonce;
    private final int protocolVersion;
    private final int replyMessage;
    private final int requestMessage;
    private boolean running;
    private Messenger sender;

    /* JADX INFO: compiled from: PlatformServiceClient.kt */
    public interface CompletedListener {
        void completed(Bundle bundle);
    }

    public PlatformServiceClient(Context context, int i10, int i11, int i12, String str, String str2) {
        t9.m.e(context, "context");
        t9.m.e(str, "applicationId");
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext != null ? applicationContext : context;
        this.requestMessage = i10;
        this.replyMessage = i11;
        this.applicationId = str;
        this.protocolVersion = i12;
        this.nonce = str2;
        this.handler = new Handler() { // from class: com.facebook.internal.PlatformServiceClient.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        t9.m.e(message, "message");
                        PlatformServiceClient.this.handleMessage(message);
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                } catch (Throwable th2) {
                    CrashShieldHandler.handleThrowable(th2, this);
                }
            }
        };
    }

    private final void callback(Bundle bundle) {
        if (this.running) {
            this.running = false;
            CompletedListener completedListener = this.listener;
            if (completedListener == null) {
                return;
            }
            completedListener.completed(bundle);
        }
    }

    private final void sendMessage() {
        Bundle bundle = new Bundle();
        bundle.putString(NativeProtocol.EXTRA_APPLICATION_ID, this.applicationId);
        String str = this.nonce;
        if (str != null) {
            bundle.putString(NativeProtocol.EXTRA_NONCE, str);
        }
        populateRequestBundle(bundle);
        Message messageObtain = Message.obtain((Handler) null, this.requestMessage);
        messageObtain.arg1 = this.protocolVersion;
        messageObtain.setData(bundle);
        messageObtain.replyTo = new Messenger(this.handler);
        try {
            Messenger messenger = this.sender;
            if (messenger == null) {
                return;
            }
            messenger.send(messageObtain);
        } catch (RemoteException unused) {
            callback(null);
        }
    }

    public final void cancel() {
        this.running = false;
    }

    protected final Context getContext() {
        return this.context;
    }

    public final String getNonce() {
        return this.nonce;
    }

    protected final void handleMessage(Message message) {
        t9.m.e(message, "message");
        if (message.what == this.replyMessage) {
            Bundle data = message.getData();
            if (data.getString(NativeProtocol.STATUS_ERROR_TYPE) != null) {
                callback(null);
            } else {
                callback(data);
            }
            try {
                this.context.unbindService(this);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        t9.m.e(componentName, "name");
        t9.m.e(iBinder, "service");
        this.sender = new Messenger(iBinder);
        sendMessage();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        t9.m.e(componentName, "name");
        this.sender = null;
        try {
            this.context.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        callback(null);
    }

    protected abstract void populateRequestBundle(Bundle bundle);

    public final void setCompletedListener(CompletedListener completedListener) {
        this.listener = completedListener;
    }

    public final boolean start() {
        synchronized (this) {
            boolean z10 = false;
            if (this.running) {
                return false;
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            if (NativeProtocol.getLatestAvailableProtocolVersionForService(this.protocolVersion) == -1) {
                return false;
            }
            Intent intentCreatePlatformServiceIntent = NativeProtocol.createPlatformServiceIntent(getContext());
            if (intentCreatePlatformServiceIntent != null) {
                this.running = true;
                getContext().bindService(intentCreatePlatformServiceIntent, this, 1);
                z10 = true;
            }
            return z10;
        }
    }
}
