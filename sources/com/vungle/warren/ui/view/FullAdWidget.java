package com.vungle.warren.ui.view;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.utility.HandlerScheduler;
import com.vungle.warren.utility.ViewUtility;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class FullAdWidget extends RelativeLayout {
    private static final String I = FullAdWidget.class.getSimpleName();
    private MediaPlayer.OnErrorListener A;
    private MediaPlayer.OnCompletionListener B;
    private int C;
    private GestureDetector D;
    private Runnable E;
    private GestureDetector.SimpleOnGestureListener F;
    ViewTreeObserver.OnGlobalLayoutListener G;
    private View.OnClickListener H;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Map<View, Integer> f28467o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final RelativeLayout.LayoutParams f28468p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Window f28469q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final RelativeLayout f28470r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private WebView f28471s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final ProgressBar f28472t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final ImageView f28473u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final ImageView f28474v;
    public final VideoView videoView;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final ImageView f28475w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final ImageView f28476x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private OnItemClickListener f28477y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private MediaPlayer.OnPreparedListener f28478z;

    public static class AudioContextWrapper extends ContextWrapper {
        public AudioContextWrapper(Context context) {
            super(context);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            return "audio".equals(str) ? getApplicationContext().getSystemService(str) : super.getSystemService(str);
        }
    }

    private static class DestroyRunnable implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private WebView f28487o;

        DestroyRunnable(WebView webView) {
            this.f28487o = webView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f28487o.stopLoading();
            this.f28487o.setWebViewClient(null);
            if (Build.VERSION.SDK_INT >= 29) {
                this.f28487o.setWebViewRenderProcessClient(null);
            }
            this.f28487o.loadData(BuildConfig.FLAVOR, null, null);
            this.f28487o.destroy();
        }
    }

    public interface OnItemClickListener {
        void onItemClicked(int i10);
    }

    /* JADX INFO: loaded from: classes.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewEvent {
        public static final int CLOSE_CLICK = 1;
        public static final int CTA_CLICK = 2;
        public static final int MUTE_CLICK = 3;
        public static final int PRIVACY_CLICK = 4;
        public static final int VIDEO_CLICK = 5;
    }

    public FullAdWidget(Context context, Window window) throws InstantiationException {
        super(context);
        this.f28467o = new HashMap();
        this.F = new GestureDetector.SimpleOnGestureListener() { // from class: com.vungle.warren.ui.view.FullAdWidget.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                FullAdWidget.this.H.onClick(FullAdWidget.this.f28470r);
                return true;
            }
        };
        this.G = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.vungle.warren.ui.view.FullAdWidget.7
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                FullAdWidget.this.r();
                FullAdWidget.this.o();
            }
        };
        this.H = new View.OnClickListener() { // from class: com.vungle.warren.ui.view.FullAdWidget.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FullAdWidget.this.f28477y != null) {
                    FullAdWidget.this.f28477y.onItemClicked(FullAdWidget.this.p(view));
                }
            }
        };
        this.f28469q = window;
        Resources resources = getResources();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.f28468p = layoutParams;
        setLayoutParams(layoutParams);
        this.E = new Runnable() { // from class: com.vungle.warren.ui.view.FullAdWidget.1
            @Override // java.lang.Runnable
            public void run() {
                FullAdWidget.this.o();
            }
        };
        VideoView videoView = new VideoView(new AudioContextWrapper(context));
        this.videoView = videoView;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        videoView.setLayoutParams(layoutParams2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.f28470r = relativeLayout;
        relativeLayout.setTag("videoViewContainer");
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.addView(videoView, layoutParams2);
        addView(relativeLayout, layoutParams);
        this.D = new GestureDetector(context, this.F);
        WebView webView = ViewUtility.getWebView(context);
        this.f28471s = webView;
        webView.setLayoutParams(layoutParams);
        this.f28471s.setTag("webView");
        addView(this.f28471s, layoutParams);
        ProgressBar progressBar = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        this.f28472t = progressBar;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 4.0f, resources.getDisplayMetrics()));
        layoutParams3.addRule(12);
        progressBar.setLayoutParams(layoutParams3);
        progressBar.setMax(100);
        progressBar.setIndeterminate(false);
        progressBar.setVisibility(4);
        addView(progressBar);
        int iApplyDimension = (int) TypedValue.applyDimension(1, 24.0f, resources.getDisplayMetrics());
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(iApplyDimension, iApplyDimension);
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 12.0f, resources.getDisplayMetrics());
        layoutParams4.setMargins(iApplyDimension2, iApplyDimension2, iApplyDimension2, iApplyDimension2);
        ImageView imageView = new ImageView(context);
        this.f28473u = imageView;
        imageView.setImageBitmap(ViewUtility.getBitmap(ViewUtility.Asset.unMute, context));
        imageView.setLayoutParams(layoutParams4);
        imageView.setVisibility(8);
        addView(imageView);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(iApplyDimension, iApplyDimension);
        layoutParams5.setMargins(iApplyDimension2, iApplyDimension2, iApplyDimension2, iApplyDimension2);
        ImageView imageView2 = new ImageView(context);
        this.f28474v = imageView2;
        imageView2.setTag("closeButton");
        imageView2.setImageBitmap(ViewUtility.getBitmap(ViewUtility.Asset.close, context));
        layoutParams5.addRule(11);
        imageView2.setLayoutParams(layoutParams5);
        imageView2.setVisibility(8);
        addView(imageView2);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(iApplyDimension, iApplyDimension);
        layoutParams6.addRule(12);
        layoutParams6.addRule(11);
        layoutParams6.setMargins(iApplyDimension2, iApplyDimension2, iApplyDimension2, iApplyDimension2);
        ImageView imageView3 = new ImageView(context);
        this.f28475w = imageView3;
        imageView3.setTag("ctaOverlay");
        imageView3.setLayoutParams(layoutParams6);
        imageView3.setImageBitmap(ViewUtility.getBitmap(ViewUtility.Asset.cta, getContext()));
        imageView3.setVisibility(8);
        addView(imageView3);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(iApplyDimension, iApplyDimension);
        layoutParams7.addRule(12);
        layoutParams7.addRule(9);
        layoutParams7.setMargins(iApplyDimension2, iApplyDimension2, iApplyDimension2, iApplyDimension2);
        ImageView imageView4 = new ImageView(context);
        this.f28476x = imageView4;
        imageView4.setLayoutParams(layoutParams7);
        imageView4.setVisibility(8);
        addView(imageView4);
        n();
        q();
    }

    private void m(View view, int i10) {
        this.f28467o.put(view, Integer.valueOf(i10));
        view.setOnClickListener(this.H);
    }

    private void n() {
        m(this.f28474v, 1);
        m(this.f28475w, 2);
        m(this.f28473u, 3);
        m(this.f28476x, 4);
        this.f28467o.put(this.f28470r, 5);
        this.f28470r.setOnTouchListener(new View.OnTouchListener() { // from class: com.vungle.warren.ui.view.FullAdWidget.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                FullAdWidget.this.D.onTouchEvent(motionEvent);
                return true;
            }
        });
        this.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.vungle.warren.ui.view.FullAdWidget.4
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                if (Build.VERSION.SDK_INT >= 26) {
                    mediaPlayer.seekTo(FullAdWidget.this.C, 3);
                }
                if (FullAdWidget.this.f28478z != null) {
                    FullAdWidget.this.f28478z.onPrepared(mediaPlayer);
                }
                FullAdWidget.this.f28473u.setVisibility(0);
            }
        });
        this.videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.vungle.warren.ui.view.FullAdWidget.5
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                if (FullAdWidget.this.A != null) {
                    return FullAdWidget.this.A.onError(mediaPlayer, i10, i11);
                }
                return false;
            }
        });
        this.videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.vungle.warren.ui.view.FullAdWidget.6
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                if (FullAdWidget.this.B != null) {
                    FullAdWidget.this.B.onCompletion(mediaPlayer);
                }
                FullAdWidget.this.f28473u.setEnabled(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (Build.VERSION.SDK_INT < 30) {
            this.f28469q.getDecorView().setSystemUiVisibility(5894);
            return;
        }
        this.f28469q.setDecorFitsSystemWindows(false);
        WindowInsetsController insetsController = this.f28469q.getInsetsController();
        if (insetsController != null) {
            insetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
            insetsController.setSystemBarsBehavior(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int p(View view) {
        Integer num = this.f28467o.get(view);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @SuppressLint({"NewApi"})
    private void q() {
        WebView webView = this.f28471s;
        if (webView != null) {
            webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
            this.f28471s.setVisibility(8);
        }
        this.f28470r.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void r() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this.G);
    }

    public void destroyWebView(long j10) {
        WebView webView = this.f28471s;
        if (webView == null) {
            return;
        }
        webView.removeJavascriptInterface("Android");
        this.f28471s.setWebChromeClient(null);
        removeView(this.f28471s);
        this.f28471s.removeAllViews();
        if (j10 <= 0) {
            new DestroyRunnable(this.f28471s).run();
        } else {
            new HandlerScheduler().schedule(new DestroyRunnable(this.f28471s), j10);
        }
        this.f28471s = null;
    }

    public int getCurrentVideoPosition() {
        return this.videoView.getCurrentPosition();
    }

    public String getUrl() {
        WebView webView = this.f28471s;
        if (webView == null) {
            return null;
        }
        return webView.getUrl();
    }

    public int getVideoDuration() {
        return this.videoView.getDuration();
    }

    WebView getWebView() {
        return this.f28471s;
    }

    public boolean hasWebView() {
        return this.f28471s != null;
    }

    public boolean isVideoPlaying() {
        return this.videoView.isPlaying();
    }

    public void linkWebView(WebViewClient webViewClient, JavascriptBridge javascriptBridge) {
        WebView webView = this.f28471s;
        if (webView == null) {
            return;
        }
        WebSettingsUtils.applyDefault(webView);
        this.f28471s.setWebViewClient(webViewClient);
        this.f28471s.addJavascriptInterface(javascriptBridge, "Android");
    }

    public void pausePlayback() {
        this.videoView.pause();
    }

    public void pauseWeb() {
        WebView webView = this.f28471s;
        if (webView != null) {
            webView.onPause();
        }
        r();
        removeCallbacks(this.E);
    }

    public void playVideo(Uri uri, int i10) {
        this.f28470r.setVisibility(0);
        this.videoView.setVideoURI(uri);
        this.f28476x.setImageBitmap(ViewUtility.getBitmap(ViewUtility.Asset.privacy, getContext()));
        this.f28476x.setVisibility(0);
        this.f28472t.setVisibility(0);
        this.f28472t.setMax(this.videoView.getDuration());
        startPlayback(i10);
    }

    public void release(long j10) {
        this.videoView.stopPlayback();
        this.videoView.setOnCompletionListener(null);
        this.videoView.setOnErrorListener(null);
        this.videoView.setOnPreparedListener(null);
        this.videoView.suspend();
        destroyWebView(j10);
    }

    public void resumeWeb() {
        WebView webView = this.f28471s;
        if (webView != null) {
            webView.onResume();
        }
        post(this.E);
    }

    public void setCtaEnabled(boolean z10) {
        this.f28475w.setVisibility(z10 ? 0 : 8);
    }

    public void setImmersiveMode() {
        getViewTreeObserver().addOnGlobalLayoutListener(this.G);
    }

    public void setMuted(boolean z10) {
        Bitmap bitmap = ViewUtility.getBitmap(ViewUtility.Asset.mute, getContext());
        Bitmap bitmap2 = ViewUtility.getBitmap(ViewUtility.Asset.unMute, getContext());
        ImageView imageView = this.f28473u;
        if (!z10) {
            bitmap = bitmap2;
        }
        imageView.setImageBitmap(bitmap);
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.B = onCompletionListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.A = onErrorListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f28477y = onItemClickListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f28478z = onPreparedListener;
    }

    public void setProgress(int i10, float f10) {
        this.f28472t.setMax((int) f10);
        this.f28472t.setProgress(i10);
    }

    public void showCloseButton(boolean z10) {
        this.f28474v.setVisibility(z10 ? 0 : 8);
    }

    public void showWebsite(String str) {
        if (this.f28471s == null) {
            return;
        }
        Log.d(I, "loadJs: " + str);
        this.f28471s.loadUrl(str);
        this.f28471s.setVisibility(0);
        this.f28470r.setVisibility(8);
        this.f28470r.setOnClickListener(null);
        this.f28472t.setVisibility(8);
        this.f28474v.setVisibility(8);
        this.f28473u.setVisibility(8);
        this.f28475w.setVisibility(8);
        this.f28476x.setVisibility(8);
    }

    public boolean startPlayback(int i10) {
        if (!this.videoView.isPlaying()) {
            this.videoView.requestFocus();
            this.C = i10;
            if (Build.VERSION.SDK_INT < 26) {
                this.videoView.seekTo(i10);
            }
            this.videoView.start();
        }
        return this.videoView.isPlaying();
    }

    public void stopPlayback() {
        this.videoView.stopPlayback();
    }

    public void updateWindow() {
        this.f28469q.setFlags(1024, 1024);
        this.f28469q.getDecorView().setBackgroundColor(-16777216);
    }
}
