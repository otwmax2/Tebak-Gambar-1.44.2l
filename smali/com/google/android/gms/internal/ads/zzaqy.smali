###### Class com.google.android.gms.internal.ads.zzaqy (com.google.android.gms.internal.ads.zzaqy)
.class public final Lcom/google/android/gms/internal/ads/zzaqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->h:J

    return-void
.end method

.method private static l(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 2

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/util/DisplayMetrics;

    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    :try_start_11
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_18

    .line 5
    :catch_15
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_18
    return-object v0
.end method

.method private static m(Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DebugGestureViewWrapper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 3
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAdConfiguration"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "adType"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "adTypeToString"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "INTERSTITIAL"

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "APP_OPEN"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "REWARDED"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_73} :catch_78
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_73} :catch_78

    if-eqz p0, :cond_76

    goto :goto_77

    :cond_76
    return v0

    :cond_77
    :goto_77
    return v3

    :catch_78
    return v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->g:J

    return-wide v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->e:J

    return-wide v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->a:J

    return-wide v0
.end method

.method public final d()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->c:J

    return-wide v0
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->h:J

    return-wide v0
.end method

.method public final f()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->f:J

    return-wide v0
.end method

.method public final g()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->b:J

    return-wide v0
.end method

.method public final h()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->d:J

    return-wide v0
.end method

.method public final i()V
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->h:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->g:J

    return-void
.end method

.method public final j()V
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->b:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->a:J

    return-void
.end method

.method public final k(Landroid/content/Context;Landroid/view/View;)V
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->c:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->f:J

    .line 2
    :cond_14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqy;->l(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 3
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v0, v0, v1

    if-nez p2, :cond_21

    goto :goto_49

    .line 4
    :cond_21
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int v1, v1, p1

    add-int p1, v1, v1

    if-lt p1, v0, :cond_3c

    goto :goto_44

    :cond_3c
    if-nez v1, :cond_49

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaqy;->m(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 7
    :goto_44
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqy;->c:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqy;->e:J

    return-void

    .line 8
    :cond_49
    :goto_49
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqy;->e:J

    return-void
.end method
