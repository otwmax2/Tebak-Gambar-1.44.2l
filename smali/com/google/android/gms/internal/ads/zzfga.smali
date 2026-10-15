###### Class com.google.android.gms.internal.ads.zzfga (com.google.android.gms.internal.ads.zzfga)
.class public final Lcom/google/android/gms/internal/ads/zzfga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final r:Lcom/google/android/gms/internal/ads/zzfga;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private o:Z

.field private p:Z

.field private q:Lcom/google/android/gms/internal/ads/zzfgf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfga;->r:Lcom/google/android/gms/internal/ads/zzfga;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzfga;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfga;->r:Lcom/google/android/gms/internal/ads/zzfga;

    return-object v0
.end method

.method private final e()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->p:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffz;->a()Lcom/google/android/gms/internal/ads/zzffz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffz;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzffo;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzffo;->g()Lcom/google/android/gms/internal/ads/zzfgl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfgl;->k()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    if-eq v3, v0, :cond_2a

    const-string v4, "foregrounded"

    goto :goto_2c

    :cond_2a
    const-string v4, "backgrounded"

    :goto_2c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfge;->a()Lcom/google/android/gms/internal/ads/zzfge;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfgl;->a()Landroid/webkit/WebView;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "setState"

    .line 3
    invoke-virtual {v5, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzfge;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_3f
    return-void
.end method

.method private final f(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->p:Z

    if-eq v0, p1, :cond_24

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfga;->p:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->o:Z

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfga;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->q:Lcom/google/android/gms/internal/ads/zzfgf;

    if-eqz v0, :cond_24

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1d

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhb;->d()Lcom/google/android/gms/internal/ads/zzfhb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhb;->i()V

    return-void

    .line 3
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhb;->d()Lcom/google/android/gms/internal/ads/zzfhb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhb;->h()V

    :cond_24
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->p:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfga;->e()V

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->o:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfga;->q:Lcom/google/android/gms/internal/ads/zzfgf;

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzfgf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfga;->q:Lcom/google/android/gms/internal/ads/zzfgf;

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfga;->f(Z)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 8

    .line 1
    new-instance p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 3
    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffz;->a()Lcom/google/android/gms/internal/ads/zzffz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffz;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzffo;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzffo;->j()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzffo;->f()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x0

    goto :goto_19

    :cond_39
    const/16 v0, 0x64

    if-eq p1, v0, :cond_40

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    .line 8
    :goto_41
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzfga;->f(Z)V

    return-void
.end method
