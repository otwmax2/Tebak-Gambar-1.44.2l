package com.vungle.warren.ui.view;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.OrientationDelegate;
import com.vungle.warren.ui.contract.LocalAdContract;
import com.vungle.warren.ui.presenter.LocalAdPresenter;
import com.vungle.warren.ui.view.FullAdWidget;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class LocalAdView extends BaseAdView<LocalAdPresenter> implements LocalAdContract.LocalView, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private Handler A;
    private FullAdWidget.OnItemClickListener B;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private LocalAdContract.LocalPresenter f28488v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f28489w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private MediaPlayer f28490x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f28491y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Runnable f28492z;

    public LocalAdView(Context context, FullAdWidget fullAdWidget, OrientationDelegate orientationDelegate, CloseDelegate closeDelegate) {
        super(context, fullAdWidget, orientationDelegate, closeDelegate);
        this.f28489w = false;
        this.f28491y = false;
        this.A = new Handler(Looper.getMainLooper());
        this.B = new FullAdWidget.OnItemClickListener() { // from class: com.vungle.warren.ui.view.LocalAdView.1
            @Override // com.vungle.warren.ui.view.FullAdWidget.OnItemClickListener
            public void onItemClicked(int i10) {
                if (i10 == 1) {
                    LocalAdView.this.f28488v.handleExit();
                    return;
                }
                if (i10 == 2) {
                    LocalAdView.this.f28488v.onDownload();
                    return;
                }
                if (i10 == 3) {
                    if (LocalAdView.this.f28490x != null) {
                        LocalAdView.this.j();
                        LocalAdView.this.f28488v.onMute(LocalAdView.this.f28489w);
                        LocalAdView localAdView = LocalAdView.this;
                        localAdView.f28458s.setMuted(localAdView.f28489w);
                        return;
                    }
                    return;
                }
                if (i10 == 4) {
                    LocalAdView.this.f28488v.onPrivacy();
                } else if (i10 == 5 && LocalAdView.this.f28491y) {
                    LocalAdView.this.f28488v.onDownload();
                }
            }
        };
        i();
    }

    private void i() {
        this.f28458s.setOnItemClickListener(this.B);
        this.f28458s.setOnPreparedListener(this);
        this.f28458s.setOnErrorListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f28490x == null) {
            return;
        }
        this.f28489w = !this.f28489w;
        l();
    }

    private void k() {
        Runnable runnable = new Runnable() { // from class: com.vungle.warren.ui.view.LocalAdView.2

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            float f28494o = -2.0f;

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (LocalAdView.this.f28458s.isVideoPlaying()) {
                        int currentVideoPosition = LocalAdView.this.f28458s.getCurrentVideoPosition();
                        int videoDuration = LocalAdView.this.f28458s.getVideoDuration();
                        if (videoDuration > 0) {
                            if (this.f28494o == -2.0f) {
                                this.f28494o = videoDuration;
                            }
                            LocalAdView.this.f28488v.onProgressUpdate(currentVideoPosition, this.f28494o);
                            LocalAdView.this.f28458s.setProgress(currentVideoPosition, this.f28494o);
                        }
                    }
                    LocalAdView.this.A.postDelayed(this, 1000L);
                } catch (IllegalStateException unused) {
                    Log.v(LocalAdView.this.f28457r, "IllegalStateException while reporting progress indicates activity was killed via SIGKILL.");
                }
            }
        };
        this.f28492z = runnable;
        this.A.post(runnable);
    }

    private void l() {
        MediaPlayer mediaPlayer = this.f28490x;
        if (mediaPlayer != null) {
            try {
                float f10 = this.f28489w ? 0.0f : 1.0f;
                mediaPlayer.setVolume(f10, f10);
            } catch (IllegalStateException e10) {
                Log.i(this.f28457r, "Exception On Mute/Unmute", e10);
            }
        }
    }

    @Override // com.vungle.warren.ui.view.BaseAdView, com.vungle.warren.ui.contract.AdContract.AdView
    public void close() {
        super.close();
        this.A.removeCallbacksAndMessages(null);
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public int getVideoPosition() {
        return this.f28458s.getCurrentVideoPosition();
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public boolean isVideoPlaying() {
        return this.f28458s.isVideoPlaying();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
        StringBuilder sb = new StringBuilder(30);
        if (i10 == 1) {
            sb.append("MEDIA_ERROR_UNKNOWN");
        } else if (i10 != 100) {
            sb.append("UNKNOWN");
        } else {
            sb.append("MEDIA_ERROR_SERVER_DIED");
        }
        sb.append(':');
        if (i11 == -1010) {
            sb.append("MEDIA_ERROR_UNSUPPORTED");
        } else if (i11 == -1007) {
            sb.append("MEDIA_ERROR_MALFORMED");
        } else if (i11 == -1004) {
            sb.append("MEDIA_ERROR_IO");
        } else if (i11 == -110) {
            sb.append("MEDIA_ERROR_TIMED_OUT");
        } else if (i11 != 200) {
            sb.append("MEDIA_ERROR_SYSTEM");
        } else {
            sb.append("MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK");
        }
        this.f28488v.onMediaError(sb.toString());
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f28490x = mediaPlayer;
        l();
        this.f28458s.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.vungle.warren.ui.view.LocalAdView.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer2) {
                Log.d(LocalAdView.this.f28457r, "mediaplayer onCompletion");
                if (LocalAdView.this.f28492z != null) {
                    LocalAdView.this.A.removeCallbacks(LocalAdView.this.f28492z);
                }
                LocalAdView.this.f28488v.onProgressUpdate(mediaPlayer2.getDuration(), mediaPlayer2.getDuration());
            }
        });
        this.f28488v.onVideoStart(getVideoPosition(), mediaPlayer.getDuration());
        k();
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public void pauseVideo() {
        this.f28458s.pausePlayback();
        Runnable runnable = this.f28492z;
        if (runnable != null) {
            this.A.removeCallbacks(runnable);
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public void playVideo(File file, boolean z10, int i10) {
        this.f28489w = this.f28489w || z10;
        if (file != null) {
            k();
            this.f28458s.playVideo(Uri.fromFile(file), i10);
            this.f28458s.setMuted(this.f28489w);
            boolean z11 = this.f28489w;
            if (z11) {
                this.f28488v.onMute(z11);
            }
        }
    }

    @Override // com.vungle.warren.ui.contract.LocalAdContract.LocalView
    public void showCTAOverlay(boolean z10, boolean z11) {
        this.f28491y = z11;
        this.f28458s.setCtaEnabled(z10 && z11);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showWebsite(String str) {
        this.f28458s.stopPlayback();
        this.f28458s.showWebsite(str);
        this.A.removeCallbacks(this.f28492z);
        this.f28490x = null;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setPresenter(LocalAdPresenter localAdPresenter) {
        this.f28488v = localAdPresenter;
    }
}
