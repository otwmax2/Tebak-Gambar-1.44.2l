###### Class com.google.android.gms.internal.ads.zzyc (com.google.android.gms.internal.ads.zzyc)
.class final Lcom/google/android/gms/internal/ads/zzyc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final t:Lcom/google/android/gms/internal/ads/zzyc;


# instance fields
.field public volatile o:J

.field private final p:Landroid/os/Handler;

.field private final q:Landroid/os/HandlerThread;

.field private r:Landroid/view/Choreographer;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyc;->t:Lcom/google/android/gms/internal/ads/zzyc;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyc;->o:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:FrameReleaseChoreographer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyc;->q:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzew;->c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyc;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzyc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzyc;->t:Lcom/google/android/gms/internal/ads/zzyc;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyc;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyc;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final doFrame(J)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->o:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->r:Landroid/view/Choreographer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x1f4

    .line 2
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_32

    if-eq p1, v0, :cond_23

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->r:Landroid/view/Choreographer;

    if-eqz p1, :cond_22

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyc;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzyc;->s:I

    if-nez v1, :cond_22

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzyc;->o:J

    :cond_22
    return v0

    .line 3
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->r:Landroid/view/Choreographer;

    if-eqz p1, :cond_31

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyc;->s:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzyc;->s:I

    if-ne v1, v0, :cond_31

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_31
    return v0

    .line 5
    :cond_32
    :try_start_32
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->r:Landroid/view/Choreographer;
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_38} :catch_39

    goto :goto_41

    :catch_39
    move-exception p1

    const-string v1, "VideoFrameReleaseHelper"

    const-string v2, "Vsync sampling disabled due to platform error"

    .line 6
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzee;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_41
    return v0
.end method
