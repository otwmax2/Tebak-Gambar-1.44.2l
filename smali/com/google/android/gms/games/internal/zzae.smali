###### Class com.google.android.gms.games.internal.zzae (com.google.android.gms.games.internal.zzae)
.class public final Lcom/google/android/gms/games/internal/zzae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private o:Lcom/google/android/gms/games/internal/zzf;

.field private p:Lcom/google/android/gms/internal/games/zzfg;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/zzf;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzae;->r:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzae;->o:Lcom/google/android/gms/games/internal/zzf;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/games/zzfg;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/games/zzfg;-><init>(ILandroid/os/IBinder;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzae;->p:Lcom/google/android/gms/internal/games/zzfg;

    return-void
.end method

.method public static b(Lcom/google/android/gms/games/internal/zzf;I)Lcom/google/android/gms/games/internal/zzae;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzae;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/zzae;-><init>(Lcom/google/android/gms/games/internal/zzf;I)V

    return-object v0
.end method

.method private final h(Landroid/view/View;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->c()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 4
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 8
    iget-object v4, p0, Lcom/google/android/gms/games/internal/zzae;->p:Lcom/google/android/gms/internal/games/zzfg;

    iput v1, v4, Lcom/google/android/gms/internal/games/zzfg;->c:I

    .line 9
    iput-object v0, v4, Lcom/google/android/gms/internal/games/zzfg;->a:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 10
    aget v1, v2, v0

    iput v1, v4, Lcom/google/android/gms/internal/games/zzfg;->d:I

    const/4 v1, 0x1

    .line 11
    aget v5, v2, v1

    iput v5, v4, Lcom/google/android/gms/internal/games/zzfg;->e:I

    .line 12
    aget v0, v2, v0

    add-int/2addr v0, v3

    iput v0, v4, Lcom/google/android/gms/internal/games/zzfg;->f:I

    .line 13
    aget v0, v2, v1

    add-int/2addr v0, p1

    iput v0, v4, Lcom/google/android/gms/internal/games/zzfg;->g:I

    .line 14
    iget-boolean p1, p0, Lcom/google/android/gms/games/internal/zzae;->r:Z

    if-eqz p1, :cond_44

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzae;->g()V

    :cond_44
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->p:Lcom/google/android/gms/internal/games/zzfg;

    iput p1, v0, Lcom/google/android/gms/internal/games/zzfg;->b:I

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->o:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzf;->O1()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3b

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzae;->o:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_25

    .line 5
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_25

    .line 6
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_25
    if-eqz v0, :cond_3b

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->b()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3b

    .line 11
    :cond_38
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->q:Ljava/lang/ref/WeakReference;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->o:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PopupManager"

    if-nez p1, :cond_66

    .line 14
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_66

    .line 15
    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    .line 16
    :try_start_51
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_55
    .catch Ljava/lang/IllegalStateException; {:try_start_51 .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    nop

    :goto_57
    if-nez p1, :cond_61

    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    :cond_61
    const-string v0, "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments"

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzz;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    if-eqz p1, :cond_7d

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzae;->h(Landroid/view/View;)V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->q:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_7d
    const-string p1, "No content view usable to display popups. Popups will not be displayed in response to this client\'s calls. Use setViewForPopups() to set your content view."

    .line 24
    invoke-static {v1, p1}, Lcom/google/android/gms/games/internal/zzz;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->p:Lcom/google/android/gms/internal/games/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfg;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->p:Lcom/google/android/gms/internal/games/zzfg;

    iget-object v0, v0, Lcom/google/android/gms/internal/games/zzfg;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/games/zzfg;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->p:Lcom/google/android/gms/internal/games/zzfg;

    return-object v0
.end method

.method public final g()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->p:Lcom/google/android/gms/internal/games/zzfg;

    iget-object v1, v0, Lcom/google/android/gms/internal/games/zzfg;->a:Landroid/os/IBinder;

    if-eqz v1, :cond_13

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzae;->o:Lcom/google/android/gms/games/internal/zzf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfg;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/games/internal/zzf;->w0(Landroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzae;->r:Z

    return-void

    :cond_13
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzae;->r:Z

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->q:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_e

    return-void

    .line 3
    :cond_e
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/zzae;->h(Landroid/view/View;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzae;->h(Landroid/view/View;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzae;->o:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzf;->O1()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
