###### Class com.google.android.gms.internal.ads.zzarf (com.google.android.gms.internal.ads.zzarf)
.class public final Lcom/google/android/gms/internal/ads/zzarf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final A:Landroid/os/Handler;


# instance fields
.field private final o:Landroid/content/Context;

.field private p:Landroid/app/Application;

.field private final q:Landroid/os/PowerManager;

.field private final r:Landroid/app/KeyguardManager;

.field private s:Landroid/content/BroadcastReceiver;

.field private final t:Lcom/google/android/gms/internal/ads/zzaqq;

.field private u:Ljava/lang/ref/WeakReference;

.field private v:Ljava/lang/ref/WeakReference;

.field private w:Lcom/google/android/gms/internal/ads/zzaqm;

.field private x:B

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzarf;->A:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqq;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->x:B

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->y:I

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->z:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarf;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarf;->t:Lcom/google/android/gms/internal/ads/zzaqq;

    const-string p2, "power"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarf;->q:Landroid/os/PowerManager;

    const-string p2, "keyguard"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarf;->r:Landroid/app/KeyguardManager;

    .line 4
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_37

    .line 5
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarf;->p:Landroid/app/Application;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaqm;

    .line 6
    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzaqm;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarf;->w:Lcom/google/android/gms/internal/ads/zzaqm;

    :cond_37
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzarf;->d(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzarf;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method private final e(Landroid/app/Activity;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->v:Ljava/lang/ref/WeakReference;

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

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzarf;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_24

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzarf;->y:I

    :cond_24
    return-void
.end method

.method private final f()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->v:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzarf;->b()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x3

    if-nez v0, :cond_13

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzarf;->z:J

    iput-byte v1, p0, Lcom/google/android/gms/internal/ads/zzarf;->x:B

    return-void

    .line 2
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 3
    :goto_1c
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_24

    or-int/lit8 v4, v4, 0x2

    :cond_24
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzarf;->q:Landroid/os/PowerManager;

    if-eqz v5, :cond_30

    .line 4
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_30

    or-int/lit8 v4, v4, 0x4

    :cond_30
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzarf;->t:Lcom/google/android/gms/internal/ads/zzaqq;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaqq;->a()Z

    move-result v5

    if-nez v5, :cond_60

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzarf;->r:Landroid/app/KeyguardManager;

    if-eqz v5, :cond_5e

    .line 6
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzarb;->b(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_49

    goto :goto_5e

    .line 8
    :cond_49
    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_51

    const/4 v5, 0x0

    goto :goto_55

    .line 9
    :cond_51
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    :goto_55
    if-eqz v5, :cond_5e

    .line 10
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-nez v5, :cond_60

    :cond_5e
    :goto_5e
    or-int/lit8 v4, v4, 0x8

    .line 11
    :cond_60
    new-instance v5, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_6d

    or-int/lit8 v4, v4, 0x10

    :cond_6d
    new-instance v5, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_7a

    or-int/lit8 v4, v4, 0x20

    .line 14
    :cond_7a
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzarf;->y:I

    if-eq v5, v1, :cond_83

    move v0, v5

    :cond_83
    if-eqz v0, :cond_87

    or-int/lit8 v4, v4, 0x40

    :cond_87
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->x:B

    if-eq v0, v4, :cond_9a

    int-to-byte v0, v4

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->x:B

    if-nez v4, :cond_95

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_98

    :cond_95
    int-to-long v0, v4

    sub-long v0, v2, v0

    :goto_98
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->z:J

    :cond_9a
    return-void
.end method

.method private final g()V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarf;->A:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzard;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzard;-><init>(Lcom/google/android/gms/internal/ads/zzarf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final h(Landroid/view/View;)V
    .registers 4

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

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->u:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarf;->s:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_3b

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

    new-instance v0, Lcom/google/android/gms/internal/ads/zzare;

    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzare;-><init>(Lcom/google/android/gms/internal/ads/zzarf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->s:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarf;->o:Landroid/content/Context;

    .line 11
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarf;->p:Landroid/app/Application;

    if-eqz p1, :cond_44

    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->w:Lcom/google/android/gms/internal/ads/zzaqm;

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    return-void
.end method

.method private final i(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarf;->u:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1b

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->u:Ljava/lang/ref/WeakReference;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1b

    .line 5
    :catch_1b
    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    nop

    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarf;->s:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_38

    :try_start_31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarf;->o:Landroid/content/Context;

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_36

    :catch_36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->s:Landroid/content/BroadcastReceiver;

    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarf;->p:Landroid/app/Application;

    if-eqz p1, :cond_41

    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->w:Lcom/google/android/gms/internal/ads/zzaqm;

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->z:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzarf;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->z:J

    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->z:J

    return-wide v0
.end method

.method final b()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method final d(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzarf;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzarf;->i(Landroid/view/View;)V

    :cond_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->v:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2e

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    .line 6
    :cond_23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzarf;->h(Landroid/view/View;)V

    .line 7
    :cond_26
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-wide/16 v0, -0x2

    :goto_2b
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->z:J

    return-void

    :cond_2e
    const-wide/16 v0, -0x3

    goto :goto_2b
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzarf;->e(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzarf;->e(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzarf;->e(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->g()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzarf;->e(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->y:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzarf;->h(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->y:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->f()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarf;->g()V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzarf;->i(Landroid/view/View;)V

    return-void
.end method
