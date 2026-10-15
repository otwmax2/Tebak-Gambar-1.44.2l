###### Class com.google.android.gms.ads.internal.util.zzci (com.google.android.gms.ads.internal.util.zzci)
.class public final Lcom/google/android/gms/ads/internal/util/zzci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzci;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzci;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzci;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private static f(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 2
    :cond_8
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 3
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method

.method private final g()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->c:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->b:Landroid/app/Activity;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzci;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzci;->f(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    :cond_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->z()Lcom/google/android/gms/internal/ads/zzcaa;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzci;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcaa;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->c:Z

    :cond_20
    return-void
.end method

.method private final h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->b:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzci;->c:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzci;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzci;->f(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->c:Z

    :cond_17
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->e:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzci;->h()V

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->d:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzci;->g()V

    :cond_a
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->d:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->e:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzci;->g()V

    :cond_a
    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->d:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzci;->h()V

    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzci;->b:Landroid/app/Activity;

    return-void
.end method
