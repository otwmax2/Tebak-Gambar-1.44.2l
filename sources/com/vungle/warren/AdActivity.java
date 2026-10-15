package com.vungle.warren;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.vungle.warren.PresentationFactory;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.OrientationDelegate;
import com.vungle.warren.ui.VungleActivity;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.state.BundleOptionsState;
import com.vungle.warren.ui.state.OptionsState;
import com.vungle.warren.ui.view.FullAdWidget;
import java.util.concurrent.atomic.AtomicBoolean;
import u0.a;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdActivity extends Activity {
    public static final String PRESENTER_STATE = "presenter_state";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static AdContract.AdvertisementPresenter.EventListener f27616x;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private AdContract.AdvertisementPresenter f27617o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private BroadcastReceiver f27618p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AdRequest f27619q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private PresentationFactory f27620r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private OptionsState f27621s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private AtomicBoolean f27622t = new AtomicBoolean(false);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f27623u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f27624v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private PresentationFactory.FullScreenCallback f27625w = new PresentationFactory.FullScreenCallback() { // from class: com.vungle.warren.AdActivity.4
        @Override // com.vungle.warren.PresentationFactory.FullScreenCallback
        public void onResult(Pair<AdContract.AdView, AdContract.AdvertisementPresenter> pair, VungleException vungleException) {
            if (vungleException != null) {
                AdActivity.this.f27620r = null;
                AdActivity.this.l(vungleException.getExceptionCode(), AdActivity.this.f27619q);
                AdActivity.this.finish();
                return;
            }
            AdActivity.this.f27617o = (AdContract.AdvertisementPresenter) pair.second;
            AdActivity.this.f27617o.setEventListener(AdActivity.f27616x);
            AdActivity.this.f27617o.attach((AdContract.AdView) pair.first, AdActivity.this.f27621s);
            if (AdActivity.this.f27622t.getAndSet(false)) {
                AdActivity.this.n();
            }
        }
    };

    public static Intent createIntent(Context context, AdRequest adRequest) {
        Intent intent = new Intent(context, (Class<?>) VungleActivity.class);
        intent.addFlags(268435456);
        Bundle bundle = new Bundle();
        bundle.putSerializable("request", adRequest);
        intent.putExtras(bundle);
        return intent;
    }

    private void k() {
        this.f27618p = new BroadcastReceiver() { // from class: com.vungle.warren.AdActivity.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String stringExtra = intent.getStringExtra(AdContract.AdvertisementBus.COMMAND);
                stringExtra.hashCode();
                if (stringExtra.equals(AdContract.AdvertisementBus.STOP_ALL)) {
                    AdActivity.this.finish();
                    return;
                }
                VungleLogger.warn(AdActivity.class.getSimpleName() + "#connectBroadcastReceiver", String.format("Receiving Invalid Broadcast: %1$s", stringExtra));
            }
        };
        a.b(getApplicationContext()).c(this.f27618p, new IntentFilter(AdContract.AdvertisementBus.ACTION));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i10, AdRequest adRequest) {
        VungleException vungleException = new VungleException(i10);
        AdContract.AdvertisementPresenter.EventListener eventListener = f27616x;
        if (eventListener != null) {
            eventListener.onError(vungleException, adRequest.getPlacementId());
        }
        VungleLogger.error(AdActivity.class.getSimpleName() + "#deliverError", vungleException.getLocalizedMessage());
    }

    static AdRequest m(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            return (AdRequest) extras.getSerializable("request");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.f27617o == null) {
            this.f27622t.set(true);
        } else if (!this.f27623u && this.f27624v && hasWindowFocus()) {
            this.f27617o.start();
            this.f27623u = true;
        }
    }

    private void o() {
        if (this.f27617o != null && this.f27623u) {
            this.f27617o.stop((isChangingConfigurations() ? 1 : 0) | (isFinishing() ? 2 : 0));
            this.f27623u = false;
        }
        this.f27622t.set(false);
    }

    public static void setEventListener(AdContract.AdvertisementPresenter.EventListener eventListener) {
        f27616x = eventListener;
    }

    protected abstract boolean j();

    @Override // android.app.Activity
    @SuppressLint({"ResourceType"})
    public void onBackPressed() {
        AdContract.AdvertisementPresenter advertisementPresenter = this.f27617o;
        if (advertisementPresenter != null) {
            advertisementPresenter.handleExit();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i10 = configuration.orientation;
        if (i10 == 2) {
            Log.d("VungleActivity", "landscape");
        } else if (i10 == 1) {
            Log.d("VungleActivity", "portrait");
        }
        AdContract.AdvertisementPresenter advertisementPresenter = this.f27617o;
        if (advertisementPresenter != null) {
            advertisementPresenter.onViewConfigurationChanged();
        }
    }

    @Override // android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled"})
    protected void onCreate(Bundle bundle) {
        AdRequest adRequest;
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(16777216, 16777216);
        this.f27619q = m(getIntent());
        ServiceLocator serviceLocatorF = ServiceLocator.f(this);
        if (!((VungleStaticApi) serviceLocatorF.h(VungleStaticApi.class)).isInitialized() || f27616x == null || (adRequest = this.f27619q) == null || TextUtils.isEmpty(adRequest.getPlacementId())) {
            finish();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        VungleLogger.verbose(true, "VungleActivity", AdLoader.TT_DOWNLOAD_CONTEXT, String.format("Creating ad, request = %1$s, at: %2$d", this.f27619q, Long.valueOf(jCurrentTimeMillis)));
        try {
            FullAdWidget fullAdWidget = new FullAdWidget(this, getWindow());
            this.f27620r = (PresentationFactory) serviceLocatorF.h(PresentationFactory.class);
            OptionsState optionsState = bundle == null ? null : (OptionsState) bundle.getParcelable(PRESENTER_STATE);
            this.f27621s = optionsState;
            this.f27620r.getFullScreenPresentation(this, this.f27619q, fullAdWidget, optionsState, new CloseDelegate() { // from class: com.vungle.warren.AdActivity.1
                @Override // com.vungle.warren.ui.CloseDelegate
                public void close() {
                    AdActivity.this.finish();
                }
            }, new OrientationDelegate() { // from class: com.vungle.warren.AdActivity.2
                @Override // com.vungle.warren.ui.OrientationDelegate
                public void setOrientation(int i10) {
                    AdActivity.this.setRequestedOrientation(i10);
                }
            }, bundle, this.f27625w);
            setContentView(fullAdWidget, fullAdWidget.getLayoutParams());
            k();
            VungleLogger.verbose(true, "VungleActivity", AdLoader.TT_DOWNLOAD_CONTEXT, String.format("Ad created, request = %1$s, elapsed time: %2$dms", this.f27619q, Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
        } catch (InstantiationException unused) {
            l(10, this.f27619q);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        a.b(getApplicationContext()).e(this.f27618p);
        AdContract.AdvertisementPresenter advertisementPresenter = this.f27617o;
        if (advertisementPresenter != null) {
            advertisementPresenter.detach((isChangingConfigurations() ? 1 : 0) | 2);
        } else {
            PresentationFactory presentationFactory = this.f27620r;
            if (presentationFactory != null) {
                presentationFactory.destroy();
                this.f27620r = null;
                l(25, this.f27619q);
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        AdRequest adRequestM = m(getIntent());
        AdRequest adRequestM2 = m(intent);
        String placementId = adRequestM != null ? adRequestM.getPlacementId() : null;
        String placementId2 = adRequestM2 != null ? adRequestM2.getPlacementId() : null;
        if (placementId == null || placementId2 == null || placementId.equals(placementId2)) {
            return;
        }
        Log.d("VungleActivity", "Tried to play another placement " + placementId2 + " while playing " + placementId);
        l(15, adRequestM2);
        StringBuilder sb = new StringBuilder();
        sb.append(AdActivity.class.getSimpleName());
        sb.append("#onNewIntent");
        VungleLogger.warn(sb.toString(), String.format("Tried to play another placement %1$s while playing %2$s", placementId2, placementId));
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f27624v = false;
        o();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        AdContract.AdvertisementPresenter advertisementPresenter;
        super.onRestoreInstanceState(bundle);
        Log.d("VungleActivity", "onRestoreInstanceState(" + bundle + ")");
        if (bundle == null || (advertisementPresenter = this.f27617o) == null) {
            return;
        }
        advertisementPresenter.restoreFromSave((OptionsState) bundle.getParcelable(PRESENTER_STATE));
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f27624v = true;
        n();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        Log.d("VungleActivity", "onSaveInstanceState");
        BundleOptionsState bundleOptionsState = new BundleOptionsState();
        AdContract.AdvertisementPresenter advertisementPresenter = this.f27617o;
        if (advertisementPresenter != null) {
            advertisementPresenter.generateSaveState(bundleOptionsState);
            bundle.putParcelable(PRESENTER_STATE, bundleOptionsState);
        }
        PresentationFactory presentationFactory = this.f27620r;
        if (presentationFactory != null) {
            presentationFactory.saveState(bundle);
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            n();
        } else {
            o();
        }
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i10) {
        if (j()) {
            super.setRequestedOrientation(i10);
        }
    }
}
