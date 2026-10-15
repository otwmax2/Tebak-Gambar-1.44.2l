###### Class com.google.android.gms.internal.ads.zzatg (com.google.android.gms.internal.ads.zzatg)
.class public final Lcom/google/android/gms/internal/ads/zzatg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final D:J


# instance fields
.field private final A:Ljava/util/HashSet;

.field private final B:Landroid/util/DisplayMetrics;

.field private final C:Landroid/graphics/Rect;

.field private final o:Landroid/content/Context;

.field private p:Landroid/app/Application;

.field private final q:Landroid/view/WindowManager;

.field private final r:Landroid/os/PowerManager;

.field private final s:Landroid/app/KeyguardManager;

.field t:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private u:Ljava/lang/ref/WeakReference;

.field final v:Ljava/lang/ref/WeakReference;

.field private w:Lcom/google/android/gms/internal/ads/zzats;

.field private final x:Lcom/google/android/gms/ads/internal/util/zzbz;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->f1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/zzatg;->D:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbz;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzatg;->D:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbz;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->x:Lcom/google/android/gms/ads/internal/util/zzbz;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->y:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->z:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->A:Ljava/util/HashSet;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->o:Landroid/content/Context;

    const-string v1, "window"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzatg;->q:Landroid/view/WindowManager;

    const-string v2, "power"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzatg;->r:Landroid/os/PowerManager;

    const-string v2, "keyguard"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzatg;->s:Landroid/app/KeyguardManager;

    .line 6
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_4c

    .line 7
    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->p:Landroid/app/Application;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzats;

    .line 8
    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/ads/zzats;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzatg;->w:Lcom/google/android/gms/internal/ads/zzats;

    .line 9
    :cond_4c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->B:Landroid/util/DisplayMetrics;

    new-instance p1, Landroid/graphics/Rect;

    .line 10
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->C:Landroid/graphics/Rect;

    .line 11
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 12
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->v:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7c

    .line 13
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_7d

    :cond_7c
    const/4 p1, 0x0

    :goto_7d
    if-eqz p1, :cond_85

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->m(Landroid/view/View;)V

    :cond_85
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->v:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_9a

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_97

    .line 18
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzatg;->l(Landroid/view/View;)V

    .line 19
    :cond_97
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_9a
    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzatg;I)V
    .registers 2

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    return-void
.end method

.method private final h(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->B:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final i(Landroid/app/Activity;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->v:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 2
    :cond_c
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->v:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_28

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzatg;->z:I

    :cond_28
    return-void
.end method

.method private final j(I)V
    .registers 34

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatg;->A:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatg;->v:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_12

    return-void

    .line 2
    :cond_12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v8, v0, [I

    new-array v0, v0, [I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_68

    .line 7
    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    .line 8
    invoke-virtual {v3, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 9
    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 10
    :try_start_41
    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception v0

    const-string v14, "Failure getting view location."

    .line 12
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_4e
    aget v0, v8, v11

    .line 14
    iput v0, v4, Landroid/graphics/Rect;->left:I

    aget v8, v8, v10

    .line 15
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 17
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    move-object v8, v3

    goto :goto_6b

    :cond_68
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 18
    :goto_6b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->i1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_bc

    if-eqz v8, :cond_bc

    :try_start_7f
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 23
    :goto_88
    instance-of v15, v14, Landroid/view/View;

    if-eqz v15, :cond_c0

    .line 24
    move-object v15, v14

    check-cast v15, Landroid/view/View;

    new-instance v11, Landroid/graphics/Rect;

    .line 25
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 26
    invoke-virtual {v15}, Landroid/view/View;->isScrollContainer()Z

    move-result v17

    if-eqz v17, :cond_a7

    .line 27
    invoke-virtual {v15, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_a7

    .line 28
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzatg;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_a7
    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_ab} :catch_ad

    const/4 v11, 0x0

    goto :goto_88

    :catch_ad
    move-exception v0

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v11

    const-string v14, "PositionWatcher.getParentScrollViewRects"

    invoke-virtual {v11, v0, v14}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_c0

    .line 32
    :cond_bc
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_c0
    :goto_c0
    move-object/from16 v31, v0

    if-eqz v8, :cond_c9

    .line 33
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    goto :goto_cb

    :cond_c9
    const/16 v11, 0x8

    :goto_cb
    iget v14, v1, Lcom/google/android/gms/internal/ads/zzatg;->z:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d1

    move v11, v14

    .line 34
    :cond_d1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzs;->R(Landroid/view/View;)J

    move-result-wide v26

    sget-object v14, Lcom/google/android/gms/internal/ads/zzbar;->V8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v14

    .line 36
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_115

    if-eqz v3, :cond_12d

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzatg;->r:Landroid/os/PowerManager;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzatg;->s:Landroid/app/KeyguardManager;

    .line 38
    invoke-static {v8, v3, v14}, Lcom/google/android/gms/ads/internal/util/zzs;->p(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    if-eqz v3, :cond_12d

    if-eqz v12, :cond_12d

    if-eqz v13, :cond_12d

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->Y8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v14, v3

    cmp-long v3, v26, v14

    if-ltz v3, :cond_12d

    if-nez v11, :cond_12d

    goto :goto_12a

    :cond_115
    if-eqz v3, :cond_12d

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzatg;->r:Landroid/os/PowerManager;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzatg;->s:Landroid/app/KeyguardManager;

    .line 42
    invoke-static {v8, v3, v14}, Lcom/google/android/gms/ads/internal/util/zzs;->p(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    if-eqz v3, :cond_12d

    if-eqz v12, :cond_12d

    if-eqz v13, :cond_12d

    if-nez v11, :cond_12d

    :goto_12a
    const/4 v3, 0x1

    const/4 v11, 0x0

    goto :goto_12e

    :cond_12d
    const/4 v3, 0x0

    .line 43
    :goto_12e
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbar;->a9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v14

    .line 45
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_18b

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzatg;->r:Landroid/os/PowerManager;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzatg;->s:Landroid/app/KeyguardManager;

    invoke-static {v8, v14, v15}, Lcom/google/android/gms/ads/internal/util/zzs;->p(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v14

    if-eq v10, v14, :cond_14f

    const/4 v14, 0x0

    goto :goto_151

    :cond_14f
    const/16 v14, 0x40

    :goto_151
    if-eq v10, v12, :cond_155

    const/4 v15, 0x0

    goto :goto_157

    :cond_155
    const/16 v15, 0x8

    :goto_157
    if-eq v10, v13, :cond_15c

    const/16 v17, 0x0

    goto :goto_15e

    :cond_15c
    const/16 v17, 0x10

    :goto_15e
    if-nez v11, :cond_163

    const/16 v11, 0x80

    goto :goto_164

    :cond_163
    const/4 v11, 0x0

    :goto_164
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->Y8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v26, v9

    if-ltz v0, :cond_17c

    const/16 v0, 0x20

    goto :goto_17d

    :cond_17c
    const/4 v0, 0x0

    :goto_17d
    or-int v9, v14, v15

    or-int v9, v9, v17

    or-int/2addr v9, v11

    or-int/2addr v0, v9

    or-int/2addr v0, v3

    .line 49
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    const/4 v9, 0x0

    invoke-static {v8, v0, v9}, Lcom/google/android/gms/ads/internal/util/zzs;->f(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_18b
    const/4 v9, 0x1

    if-ne v2, v9, :cond_19c

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatg;->x:Lcom/google/android/gms/ads/internal/util/zzbz;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->b()Z

    move-result v0

    if-nez v0, :cond_19c

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzatg;->y:Z

    if-eq v3, v0, :cond_19b

    goto :goto_19c

    :cond_19b
    return-void

    :cond_19c
    :goto_19c
    if-nez v3, :cond_1a7

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzatg;->y:Z

    if-nez v0, :cond_1a7

    const/4 v9, 0x1

    if-eq v2, v9, :cond_1a6

    goto :goto_1a8

    :cond_1a6
    return-void

    :cond_1a7
    const/4 v9, 0x1

    :goto_1a8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzate;

    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v10

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzatg;->r:Landroid/os/PowerManager;

    .line 52
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v17

    if-eqz v8, :cond_1c1

    .line 53
    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1c1

    goto :goto_1c2

    :cond_1c1
    const/4 v9, 0x0

    :goto_1c2
    if-eqz v8, :cond_1cb

    .line 54
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    move/from16 v19, v2

    goto :goto_1cd

    :cond_1cb
    const/16 v19, 0x8

    :goto_1cd
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzatg;->C:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzatg;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v20

    .line 56
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzatg;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    .line 57
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzatg;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    .line 58
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzatg;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v24

    .line 59
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzatg;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v28

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzatg;->B:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v29, v2

    move-object v14, v0

    move-wide v15, v10

    move/from16 v18, v9

    move/from16 v23, v12

    move/from16 v25, v13

    move/from16 v30, v3

    invoke-direct/range {v14 .. v31}, Lcom/google/android/gms/internal/ads/zzate;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZJLandroid/graphics/Rect;FZLjava/util/List;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzatg;->A:Ljava/util/HashSet;

    .line 60
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1fc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzatf;

    .line 61
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzatf;->H0(Lcom/google/android/gms/internal/ads/zzate;)V

    goto :goto_1fc

    :cond_20c
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzatg;->y:Z

    return-void
.end method

.method private final k()V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzatc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzatc;-><init>(Lcom/google/android/gms/internal/ads/zzatg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final l(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->u:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->t:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_41

    new-instance p1, Landroid/content/IntentFilter;

    .line 6
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatd;

    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzatd;-><init>(Lcom/google/android/gms/internal/ads/zzatg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->t:Landroid/content/BroadcastReceiver;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->x()Lcom/google/android/gms/ads/internal/util/zzcg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatg;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatg;->t:Landroid/content/BroadcastReceiver;

    .line 12
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzcg;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->p:Landroid/app/Application;

    if-eqz p1, :cond_51

    :try_start_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->w:Lcom/google/android/gms/internal/ads/zzats;

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_51
    return-void
.end method

.method private final m(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatg;->u:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_19

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 4
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->u:Ljava/lang/ref/WeakReference;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v1

    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_22
    :goto_22
    :try_start_22
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception p1

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    .line 10
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->t:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_5c

    .line 12
    :try_start_3d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->x()Lcom/google/android/gms/ads/internal/util/zzcg;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatg;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatg;->t:Landroid/content/BroadcastReceiver;

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzcg;->d(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_48} :catch_54
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_5a

    :catch_49
    move-exception p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    .line 15
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5a

    :catch_54
    move-exception p1

    const-string v1, "Failed trying to unregister the receiver"

    .line 16
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :goto_5a
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->t:Landroid/content/BroadcastReceiver;

    :cond_5c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->p:Landroid/app/Application;

    if-eqz p1, :cond_6c

    :try_start_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->w:Lcom/google/android/gms/internal/ads/zzats;

    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_66

    return-void

    :catch_66
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzatg;->h(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzatg;->h(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzatg;->h(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->h(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzatf;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->A:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    return-void
.end method

.method final synthetic d()V
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzatf;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->A:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->x:Lcom/google/android/gms/ads/internal/util/zzbz;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzatg;->D:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbz;->a(J)V

    return-void
.end method

.method public final g(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->x:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbz;->a(J)V

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzatg;->i(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzatg;->i(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzatg;->i(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzatg;->i(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->z:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->l(Landroid/view/View;)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->z:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzatg;->j(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;->k()V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatg;->m(Landroid/view/View;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzatc (com.google.android.gms.internal.ads.zzatc)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzatc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzatg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzatg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatc;->o:Lcom/google/android/gms/internal/ads/zzatg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->o:Lcom/google/android/gms/internal/ads/zzatg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatg;->d()V

    return-void
.end method
