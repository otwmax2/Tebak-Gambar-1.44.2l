###### Class com.vungle.warren.ui.view.LocalAdView (com.vungle.warren.ui.view.LocalAdView)
.class public Lcom/vungle/warren/ui/view/LocalAdView;
.super Lcom/vungle/warren/ui/view/BaseAdView;
.source "LocalAdView.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/warren/ui/view/BaseAdView<",
        "Lcom/vungle/warren/ui/presenter/LocalAdPresenter;",
        ">;",
        "Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;",
        "Landroid/media/MediaPlayer$OnErrorListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;"
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

.field private v:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

.field private w:Z

.field private x:Landroid/media/MediaPlayer;

.field private y:Z

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/ui/view/BaseAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    .line 3
    iput-boolean p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->y:Z

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->A:Landroid/os/Handler;

    .line 5
    new-instance p1, Lcom/vungle/warren/ui/view/LocalAdView$1;

    invoke-direct {p1, p0}, Lcom/vungle/warren/ui/view/LocalAdView$1;-><init>(Lcom/vungle/warren/ui/view/LocalAdView;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->B:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    .line 6
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/LocalAdView;->i()V

    return-void
.end method

.method static synthetic b(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->v:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    return-object p0
.end method

.method static synthetic c(Lcom/vungle/warren/ui/view/LocalAdView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->y:Z

    return p0
.end method

.method static synthetic d(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->x:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic e(Lcom/vungle/warren/ui/view/LocalAdView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/LocalAdView;->j()V

    return-void
.end method

.method static synthetic f(Lcom/vungle/warren/ui/view/LocalAdView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    return p0
.end method

.method static synthetic g(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->A:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/vungle/warren/ui/view/LocalAdView;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method private i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->B:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->setOnItemClickListener(Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->x:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-boolean v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/LocalAdView;->l()V

    return-void
.end method

.method private k()V
    .registers 3

    .line 1
    new-instance v0, Lcom/vungle/warren/ui/view/LocalAdView$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/LocalAdView$2;-><init>(Lcom/vungle/warren/ui/view/LocalAdView;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->z:Ljava/lang/Runnable;

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->x:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 2
    :try_start_4
    iget-boolean v1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_c

    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    :goto_c
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/ui/view/BaseAdView;->r:Ljava/lang/String;

    const-string v2, "Exception On Mute/Unmute"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/ui/view/BaseAdView;->close()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->A:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getVideoPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getCurrentVideoPosition()I

    move-result v0

    return v0
.end method

.method public isVideoPlaying()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->isVideoPlaying()Z

    move-result v0

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1e

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1a

    const/16 v1, 0x64

    if-eq p2, v1, :cond_14

    const-string p2, "UNKNOWN"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_14
    const-string p2, "MEDIA_ERROR_SERVER_DIED"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_1a
    const-string p2, "MEDIA_ERROR_UNKNOWN"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1f
    const/16 p2, 0x3a

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p2, -0x3f2

    if-eq p3, p2, :cond_56

    const/16 p2, -0x3ef

    if-eq p3, p2, :cond_50

    const/16 p2, -0x3ec

    if-eq p3, p2, :cond_4a

    const/16 p2, -0x6e

    if-eq p3, p2, :cond_44

    const/16 p2, 0xc8

    if-eq p3, p2, :cond_3e

    const-string p2, "MEDIA_ERROR_SYSTEM"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_3e
    const-string p2, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_44
    const-string p2, "MEDIA_ERROR_TIMED_OUT"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_4a
    const-string p2, "MEDIA_ERROR_IO"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_50
    const-string p2, "MEDIA_ERROR_MALFORMED"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_56
    const-string p2, "MEDIA_ERROR_UNSUPPORTED"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :goto_5b
    iget-object p2, p0, Lcom/vungle/warren/ui/view/LocalAdView;->v:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onMediaError(Ljava/lang/String;)Z

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->x:Landroid/media/MediaPlayer;

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/LocalAdView;->l()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    new-instance v1, Lcom/vungle/warren/ui/view/LocalAdView$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/LocalAdView$3;-><init>(Lcom/vungle/warren/ui/view/LocalAdView;)V

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->v:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/LocalAdView;->getVideoPosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-float p1, p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onVideoStart(IF)V

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/LocalAdView;->k()V

    return-void
.end method

.method public pauseVideo()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->pausePlayback()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->z:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public playVideo(Ljava/io/File;ZI)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    if-nez v0, :cond_9

    if-eqz p2, :cond_7

    goto :goto_9

    :cond_7
    const/4 p2, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p2, 0x1

    :goto_a
    iput-boolean p2, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    if-eqz p1, :cond_2a

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/LocalAdView;->k()V

    .line 3
    iget-object p2, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/vungle/warren/ui/view/FullAdWidget;->playVideo(Landroid/net/Uri;I)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-boolean p2, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    invoke-virtual {p1, p2}, Lcom/vungle/warren/ui/view/FullAdWidget;->setMuted(Z)V

    .line 5
    iget-boolean p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->w:Z

    if-eqz p1, :cond_2a

    .line 6
    iget-object p2, p0, Lcom/vungle/warren/ui/view/LocalAdView;->v:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    invoke-interface {p2, p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onMute(Z)V

    :cond_2a
    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/LocalAdView;->setPresenter(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->v:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    return-void
.end method

.method public showCTAOverlay(ZZ)V
    .registers 4

    .line 1
    iput-boolean p2, p0, Lcom/vungle/warren/ui/view/LocalAdView;->y:Z

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->setCtaEnabled(Z)V

    return-void
.end method

.method public showWebsite(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->stopPlayback()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->showWebsite(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->A:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView;->z:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView;->x:Landroid/media/MediaPlayer;

    return-void
.end method

###### Class com.vungle.warren.ui.view.LocalAdView.AnonymousClass1 (com.vungle.warren.ui.view.LocalAdView$1)
.class Lcom/vungle/warren/ui/view/LocalAdView$1;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/LocalAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/LocalAdView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_54

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_22

    const/4 v0, 0x5

    if-eq p1, v0, :cond_10

    goto :goto_67

    .line 1
    :cond_10
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->c(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->b(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onDownload()V

    goto :goto_67

    .line 3
    :cond_22
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->b(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onPrivacy()V

    goto :goto_67

    .line 4
    :cond_2c
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->d(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->e(Lcom/vungle/warren/ui/view/LocalAdView;)V

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->b(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->f(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onMute(Z)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, p1, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->f(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->setMuted(Z)V

    goto :goto_67

    .line 8
    :cond_54
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->b(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onDownload()V

    goto :goto_67

    .line 9
    :cond_5e
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->a:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->b(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->handleExit()Z

    :cond_67
    :goto_67
    return-void
.end method

###### Class com.vungle.warren.ui.view.LocalAdView.AnonymousClass2 (com.vungle.warren.ui.view.LocalAdView$2)
.class Lcom/vungle/warren/ui/view/LocalAdView$2;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/LocalAdView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field o:F

.field final synthetic p:Lcom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/LocalAdView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->p:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40000000    # -2.0f

    .line 2
    iput p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->o:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->p:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->p:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getCurrentVideoPosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->p:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v1, v1, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->getVideoDuration()I

    move-result v1

    if-lez v1, :cond_3b

    .line 4
    iget v2, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->o:F

    const/high16 v3, -0x40000000    # -2.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_27

    int-to-float v1, v1

    .line 5
    iput v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->o:F

    .line 6
    :cond_27
    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->p:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v1}, Lcom/vungle/warren/ui/view/LocalAdView;->b(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v1

    iget v2, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->o:F

    invoke-interface {v1, v0, v2}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onProgressUpdate(IF)V

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->p:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v1, v1, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget v2, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->o:F

    invoke-virtual {v1, v0, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->setProgress(IF)V

    .line 8
    :cond_3b
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->p:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->g(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_50

    .line 9
    :catch_47
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->p:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lcom/vungle/warren/ui/view/BaseAdView;->r:Ljava/lang/String;

    const-string v1, "IllegalStateException while reporting progress indicates activity was killed via SIGKILL."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method

###### Class com.vungle.warren.ui.view.LocalAdView.AnonymousClass3 (com.vungle.warren.ui.view.LocalAdView$3)
.class Lcom/vungle/warren/ui/view/LocalAdView$3;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/LocalAdView;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/LocalAdView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->o:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->o:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lcom/vungle/warren/ui/view/BaseAdView;->r:Ljava/lang/String;

    const-string v1, "mediaplayer onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->o:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->h(Lcom/vungle/warren/ui/view/LocalAdView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->o:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->g(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->o:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v1}, Lcom/vungle/warren/ui/view/LocalAdView;->h(Lcom/vungle/warren/ui/view/LocalAdView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_20
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$3;->o:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->b(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-float p1, p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onProgressUpdate(IF)V

    return-void
.end method
