###### Class com.google.android.gms.internal.ads.zzdhk (com.google.android.gms.internal.ads.zzdhk)
.class public final Lcom/google/android/gms/internal/ads/zzdhk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdgd;

.field private final b:Lcom/google/android/gms/internal/ads/zzdhe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdgd;Lcom/google/android/gms/internal/ads/zzdhe;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhk;->a:Lcom/google/android/gms/internal/ads/zzdgd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhk;->b:Lcom/google/android/gms/internal/ads/zzdhe;

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhk;->a:Lcom/google/android/gms/internal/ads/zzdgd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7d

    const/4 v1, 0x0

    if-nez v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    :try_start_8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, -0x1

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3e

    cmpl-float p4, p3, v5

    if-lez p4, :cond_2b

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    div-float/2addr p2, p3

    mul-float p2, p2, v4

    float-to-int p1, p2

    const/4 v3, 0x1

    goto :goto_66

    :cond_2b
    cmpg-float p4, p3, v5

    if-gez p4, :cond_65

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    div-float/2addr p2, p3

    mul-float p2, p2, v4

    float-to-int p1, p2

    const/4 v3, 0x2

    goto :goto_66

    :cond_3e
    cmpl-float p3, p4, v5

    if-lez p3, :cond_52

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    div-float/2addr p2, p4

    mul-float p2, p2, v4

    float-to-int p1, p2

    const/16 v3, 0x8

    goto :goto_66

    :cond_52
    cmpg-float p3, p4, v5

    if-gez p3, :cond_65

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    div-float/2addr p2, p4

    mul-float p2, p2, v4

    float-to-int p1, p2

    const/4 v3, 0x4

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    .line 6
    :goto_66
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhk;->a:Lcom/google/android/gms/internal/ads/zzdgd;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdgd;->H()I

    move-result p2
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_7d

    if-eq v3, p2, :cond_70

    monitor-exit p0

    return v1

    :cond_70
    :try_start_70
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhk;->a:Lcom/google/android/gms/internal/ads/zzdgd;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhk;->b:Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdhe;->Ta()Landroid/widget/FrameLayout;

    move-result-object p3

    .line 8
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdgd;->k(Landroid/view/View;I)V
    :try_end_7b
    .catchall {:try_start_70 .. :try_end_7b} :catchall_7d

    monitor-exit p0

    return v1

    :catchall_7d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method
