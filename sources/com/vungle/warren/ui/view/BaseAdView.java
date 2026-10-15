package com.vungle.warren.ui.view;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.OrientationDelegate;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter;
import com.vungle.warren.utility.ActivityManager;
import com.vungle.warren.utility.ExternalRouter;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseAdView<T extends AdContract.AdvertisementPresenter> implements AdContract.AdView<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final OrientationDelegate f28454o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final CloseDelegate f28455p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected Handler f28456q = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected final String f28457r = getClass().getSimpleName();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final FullAdWidget f28458s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected final Context f28459t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected Dialog f28460u;

    private static class DialogClickListenerProxy implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private AtomicReference<DialogInterface.OnClickListener> f28465o = new AtomicReference<>();

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private AtomicReference<DialogInterface.OnDismissListener> f28466p = new AtomicReference<>();

        public DialogClickListenerProxy(DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
            this.f28465o.set(onClickListener);
            this.f28466p.set(onDismissListener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(Dialog dialog) {
            dialog.setOnDismissListener(this);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
            DialogInterface.OnClickListener onClickListener = this.f28465o.get();
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i10);
            }
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            DialogInterface.OnDismissListener onDismissListener = this.f28466p.get();
            if (onDismissListener != null) {
                onDismissListener.onDismiss(dialogInterface);
            }
            this.f28466p.set(null);
            this.f28465o.set(null);
        }
    }

    public BaseAdView(Context context, FullAdWidget fullAdWidget, OrientationDelegate orientationDelegate, CloseDelegate closeDelegate) {
        this.f28458s = fullAdWidget;
        this.f28459t = context;
        this.f28454o = orientationDelegate;
        this.f28455p = closeDelegate;
    }

    protected DialogInterface.OnDismissListener a() {
        return new DialogInterface.OnDismissListener() { // from class: com.vungle.warren.ui.view.BaseAdView.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BaseAdView.this.f28460u = null;
            }
        };
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void close() {
        this.f28455p.close();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void destroyAdView(long j10) {
        this.f28458s.release(j10);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public String getWebsiteUrl() {
        return this.f28458s.getUrl();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public boolean hasWebView() {
        return this.f28458s.hasWebView();
    }

    public boolean isDialogVisible() {
        return this.f28460u != null;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void open(String str, ActivityManager.LeftApplicationCallback leftApplicationCallback) {
        Log.d(this.f28457r, "Opening " + str);
        if (ExternalRouter.launch(str, this.f28459t, leftApplicationCallback)) {
            return;
        }
        Log.e(this.f28457r, "Cannot open url " + str);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void pauseWeb() {
        this.f28458s.pauseWeb();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void refreshDialogIfVisible() {
        if (isDialogVisible()) {
            this.f28460u.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.vungle.warren.ui.view.BaseAdView.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    BaseAdView baseAdView = BaseAdView.this;
                    baseAdView.f28460u.setOnDismissListener(baseAdView.a());
                }
            });
            this.f28460u.dismiss();
            this.f28460u.show();
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void removeWebView() {
        this.f28458s.destroyWebView(0L);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void resumeWeb() {
        this.f28458s.resumeWeb();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setImmersiveMode() {
        this.f28458s.setImmersiveMode();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setOrientation(int i10) {
        this.f28454o.setOrientation(i10);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showCloseButton() {
        this.f28458s.showCloseButton(true);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showDialog(String str, String str2, String str3, String str4, final DialogInterface.OnClickListener onClickListener) {
        Context context = this.f28459t;
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, context.getApplicationInfo().theme));
        DialogClickListenerProxy dialogClickListenerProxy = new DialogClickListenerProxy(new DialogInterface.OnClickListener() { // from class: com.vungle.warren.ui.view.BaseAdView.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                BaseAdView.this.f28460u = null;
                DialogInterface.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(dialogInterface, i10);
                }
            }
        }, a());
        if (!TextUtils.isEmpty(str)) {
            builder.setTitle(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            builder.setMessage(str2);
        }
        builder.setPositiveButton(str3, dialogClickListenerProxy);
        builder.setNegativeButton(str4, dialogClickListenerProxy);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        this.f28460u = alertDialogCreate;
        dialogClickListenerProxy.b(alertDialogCreate);
        this.f28460u.show();
    }
}
