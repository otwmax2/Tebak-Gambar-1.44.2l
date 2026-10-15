###### Class com.vungle.warren.VungleBanner (com.vungle.warren.VungleBanner)
.class public Lcom/vungle/warren/VungleBanner;
.super Landroid/widget/RelativeLayout;
.source "VungleBanner.java"


# static fields
.field private static final B:Ljava/lang/String;


# instance fields
.field private A:Lcom/vungle/warren/LoadAdCallback;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/vungle/warren/ui/view/VungleNativeView;

.field private v:Lcom/vungle/warren/BannerAdConfig;

.field private w:Lcom/vungle/warren/PlayAdCallback;

.field private x:Lcom/vungle/warren/utility/RefreshHandler;

.field private y:Z

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/AdMarkup;ILcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/PlayAdCallback;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v4, Lcom/vungle/warren/VungleBanner$1;

    invoke-direct {v4, v0}, Lcom/vungle/warren/VungleBanner$1;-><init>(Lcom/vungle/warren/VungleBanner;)V

    iput-object v4, v0, Lcom/vungle/warren/VungleBanner;->z:Ljava/lang/Runnable;

    .line 3
    new-instance v4, Lcom/vungle/warren/VungleBanner$2;

    invoke-direct {v4, v0}, Lcom/vungle/warren/VungleBanner$2;-><init>(Lcom/vungle/warren/VungleBanner;)V

    iput-object v4, v0, Lcom/vungle/warren/VungleBanner;->A:Lcom/vungle/warren/LoadAdCallback;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    sget-object v6, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v8, v11

    const-string v10, "Creating banner ad, id = %1$s, at: %2$d"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "ttDownloadContext"

    .line 7
    invoke-static {v11, v6, v10, v8}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object v2, v0, Lcom/vungle/warren/VungleBanner;->o:Ljava/lang/String;

    .line 9
    iput-object v3, v0, Lcom/vungle/warren/VungleBanner;->v:Lcom/vungle/warren/BannerAdConfig;

    .line 10
    invoke-virtual/range {p5 .. p5}, Lcom/vungle/warren/BannerAdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v8

    move-object/from16 v12, p6

    .line 11
    iput-object v12, v0, Lcom/vungle/warren/VungleBanner;->w:Lcom/vungle/warren/PlayAdCallback;

    .line 12
    invoke-virtual {v8}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v12

    invoke-static {v1, v12}, Lcom/vungle/warren/utility/ViewUtility;->dpToPixels(Landroid/content/Context;I)I

    move-result v12

    iput v12, v0, Lcom/vungle/warren/VungleBanner;->q:I

    .line 13
    invoke-virtual {v8}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v8

    invoke-static {v1, v8}, Lcom/vungle/warren/utility/ViewUtility;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/VungleBanner;->p:I

    .line 14
    new-instance v1, Lcom/vungle/warren/AdConfig;

    invoke-direct {v1, v3}, Lcom/vungle/warren/AdConfig;-><init>(Lcom/vungle/warren/BaseAdConfig;)V

    .line 15
    iget-object v3, v0, Lcom/vungle/warren/VungleBanner;->w:Lcom/vungle/warren/PlayAdCallback;

    move-object/from16 v8, p3

    invoke-static {v2, v8, v1, v3}, Lcom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/VungleBanner;->u:Lcom/vungle/warren/ui/view/VungleNativeView;

    .line 16
    new-instance v1, Lcom/vungle/warren/utility/RefreshHandler;

    new-instance v3, Lcom/vungle/warren/utility/WeakRunnable;

    iget-object v8, v0, Lcom/vungle/warren/VungleBanner;->z:Ljava/lang/Runnable;

    invoke-direct {v3, v8}, Lcom/vungle/warren/utility/WeakRunnable;-><init>(Ljava/lang/Runnable;)V

    move/from16 v8, p4

    int-to-long v12, v8

    const-wide/16 v14, 0x3e8

    mul-long v12, v12, v14

    invoke-direct {v1, v3, v12, v13}, Lcom/vungle/warren/utility/RefreshHandler;-><init>(Ljava/lang/Runnable;J)V

    iput-object v1, v0, Lcom/vungle/warren/VungleBanner;->x:Lcom/vungle/warren/utility/RefreshHandler;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v9

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Banner ad created, id = %1$s, elapsed time: %2$dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v11, v6, v10, v1}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/vungle/warren/VungleBanner;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/VungleBanner;->s:Z

    return p0
.end method

.method static synthetic c(Lcom/vungle/warren/VungleBanner;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/VungleBanner;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/vungle/warren/VungleBanner;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/VungleBanner;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/vungle/warren/VungleBanner;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/VungleBanner;->l(Z)V

    return-void
.end method

.method static synthetic f(Lcom/vungle/warren/VungleBanner;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleBanner;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/BannerAdConfig;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleBanner;->v:Lcom/vungle/warren/BannerAdConfig;

    return-object p0
.end method

.method static synthetic h(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/PlayAdCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleBanner;->w:Lcom/vungle/warren/PlayAdCallback;

    return-object p0
.end method

.method static synthetic i(Lcom/vungle/warren/VungleBanner;Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/view/VungleNativeView;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner;->u:Lcom/vungle/warren/ui/view/VungleNativeView;

    return-object p1
.end method

.method static synthetic j(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/utility/RefreshHandler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleBanner;->x:Lcom/vungle/warren/utility/RefreshHandler;

    return-object p0
.end method

.method private k()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->r:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->t:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->y:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private l(Z)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->x:Lcom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/RefreshHandler;->clean()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->u:Lcom/vungle/warren/ui/view/VungleNativeView;

    if-eqz v0, :cond_13

    .line 4
    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner;->u:Lcom/vungle/warren/ui/view/VungleNativeView;

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 7
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method


# virtual methods
.method public destroyAd()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/vungle/warren/VungleBanner;->l(Z)V

    .line 2
    iput-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->r:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/vungle/warren/VungleBanner;->w:Lcom/vungle/warren/PlayAdCallback;

    return-void
.end method

.method public disableLifeCycleManagement(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/VungleBanner;->t:Z

    return-void
.end method

.method public finishAd()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/vungle/warren/VungleBanner;->l(Z)V

    return-void
.end method

.method protected m()V
    .registers 5

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    const-string v1, "Loading Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/VungleBanner;->v:Lcom/vungle/warren/BannerAdConfig;

    new-instance v2, Lcom/vungle/warren/utility/WeakLoadAdCallback;

    iget-object v3, p0, Lcom/vungle/warren/VungleBanner;->A:Lcom/vungle/warren/LoadAdCallback;

    invoke-direct {v2, v3}, Lcom/vungle/warren/utility/WeakLoadAdCallback;-><init>(Lcom/vungle/warren/LoadAdCallback;)V

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    sget-object v0, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    const-string v1, "Banner onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->t:Z

    if-eqz v0, :cond_f

    return-void

    .line 4
    :cond_f
    invoke-virtual {p0}, Lcom/vungle/warren/VungleBanner;->renderAd()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->t:Z

    if-eqz v0, :cond_f

    .line 3
    sget-object v0, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    const-string v1, "Banner onDetachedFromWindow: render management disabled, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/vungle/warren/VungleBanner;->l(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 2
    :goto_8
    invoke-virtual {p0, p1}, Lcom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 2
    sget-object v0, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner onWindowVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 3
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    return-void
.end method

.method public renderAd()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->y:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    return-void

    .line 3
    :cond_a
    iget-object v1, p0, Lcom/vungle/warren/VungleBanner;->u:Lcom/vungle/warren/ui/view/VungleNativeView;

    if-nez v1, :cond_1a

    .line 4
    invoke-direct {p0}, Lcom/vungle/warren/VungleBanner;->k()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5
    iput-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->s:Z

    .line 6
    invoke-virtual {p0}, Lcom/vungle/warren/VungleBanner;->m()V

    :cond_19
    return-void

    .line 7
    :cond_1a
    invoke-virtual {v1}, Lcom/vungle/warren/ui/view/VungleNativeView;->renderNativeView()Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_32

    .line 9
    iget v1, p0, Lcom/vungle/warren/VungleBanner;->p:I

    iget v2, p0, Lcom/vungle/warren/VungleBanner;->q:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 10
    sget-object v0, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    const-string v1, "Add VungleNativeView to Parent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_32
    sget-object v0, Lcom/vungle/warren/VungleBanner;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendering new ad for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/VungleBanner;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 13
    iget v1, p0, Lcom/vungle/warren/VungleBanner;->q:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    iget v1, p0, Lcom/vungle/warren/VungleBanner;->p:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 16
    :cond_5b
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->x:Lcom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/RefreshHandler;->start()V

    return-void
.end method

.method public setAdVisibility(Z)V
    .registers 3

    if-eqz p1, :cond_e

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/VungleBanner;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->x:Lcom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/RefreshHandler;->start()V

    goto :goto_13

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->x:Lcom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/RefreshHandler;->pause()V

    .line 4
    :goto_13
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->u:Lcom/vungle/warren/ui/view/VungleNativeView;

    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    :cond_1a
    return-void
.end method

###### Class com.vungle.warren.VungleBanner.AnonymousClass1 (com.vungle.warren.VungleBanner$1)
.class Lcom/vungle/warren/VungleBanner$1;
.super Ljava/lang/Object;
.source "VungleBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/VungleBanner;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleBanner;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner$1;->o:Lcom/vungle/warren/VungleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/VungleBanner;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refresh Timeout Reached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$1;->o:Lcom/vungle/warren/VungleBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/warren/VungleBanner;->c(Lcom/vungle/warren/VungleBanner;Z)Z

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$1;->o:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Lcom/vungle/warren/VungleBanner;->m()V

    return-void
.end method

###### Class com.vungle.warren.VungleBanner.AnonymousClass2 (com.vungle.warren.VungleBanner$2)
.class Lcom/vungle/warren/VungleBanner$2;
.super Ljava/lang/Object;
.source "VungleBanner.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/VungleBanner;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleBanner;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/vungle/warren/VungleBanner;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->b(Lcom/vungle/warren/VungleBanner;)Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->d(Lcom/vungle/warren/VungleBanner;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vungle/warren/VungleBanner;->c(Lcom/vungle/warren/VungleBanner;Z)Z

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1, v0}, Lcom/vungle/warren/VungleBanner;->e(Lcom/vungle/warren/VungleBanner;Z)V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->f(Lcom/vungle/warren/VungleBanner;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/vungle/warren/AdConfig;

    iget-object v2, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    .line 6
    invoke-static {v2}, Lcom/vungle/warren/VungleBanner;->g(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/BannerAdConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vungle/warren/AdConfig;-><init>(Lcom/vungle/warren/BaseAdConfig;)V

    iget-object v2, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {v2}, Lcom/vungle/warren/VungleBanner;->h(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v2

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdMarkup;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {v0, p1}, Lcom/vungle/warren/VungleBanner;->i(Lcom/vungle/warren/VungleBanner;Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/view/VungleNativeView;

    .line 9
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {p1}, Lcom/vungle/warren/VungleBanner;->renderAd()V

    goto :goto_88

    .line 10
    :cond_5c
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->f(Lcom/vungle/warren/VungleBanner;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/VungleBanner$2;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#loadAdCallback; onAdLoad"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VungleNativeView is null"

    invoke-static {p1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    :goto_88
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/vungle/warren/VungleBanner;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Load Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Message : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->d(Lcom/vungle/warren/VungleBanner;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->a:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->j(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/utility/RefreshHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/utility/RefreshHandler;->start()V

    :cond_3d
    return-void
.end method
