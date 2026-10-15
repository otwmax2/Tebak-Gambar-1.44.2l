###### Class com.google.android.gms.internal.ads.zzxv (com.google.android.gms.internal.ads.zzxv)
.class public final Lcom/google/android/gms/internal/ads/zzxv;
.super Landroid/view/Surface;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static r:I

.field private static s:Z


# instance fields
.field public final o:Z

.field private final p:Lcom/google/android/gms/internal/ads/zzxt;

.field private q:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxt;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzxu;)V
    .registers 5

    .line 1
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxv;->p:Lcom/google/android/gms/internal/ads/zzxt;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxv;->o:Z

    return-void
.end method

.method public static h(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzxv;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzxv;->t(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxt;-><init>()V

    if-eqz p1, :cond_18

    sget v0, Lcom/google/android/gms/internal/ads/zzxv;->r:I

    .line 3
    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzxt;->a(I)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized t(Landroid/content/Context;)Z
    .registers 9

    const-class v0, Lcom/google/android/gms/internal/ads/zzxv;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzxv;->s:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_65

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v4, 0x18

    const/4 v5, 0x2

    if-ge v1, v4, :cond_12

    :cond_10
    :goto_10
    const/4 v5, 0x0

    goto :goto_61

    :cond_12
    const/16 v4, 0x1a

    if-ge v1, v4, :cond_2b

    const-string v6, "samsung"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzew;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "XT1650"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_10

    :cond_2b
    if-ge v1, v4, :cond_3a

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.vr.high_performance"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_10

    .line 5
    :cond_3a
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v1, 0x3055

    .line 6
    invoke-static {p0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const-string v4, "EGL_EXT_protected_content"

    .line 7
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 8
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    .line 9
    invoke-static {p0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_61

    const-string v1, "EGL_KHR_surfaceless_context"

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_61

    const/4 v5, 0x1

    .line 11
    :cond_61
    :goto_61
    sput v5, Lcom/google/android/gms/internal/ads/zzxv;->r:I

    sput-boolean v2, Lcom/google/android/gms/internal/ads/zzxv;->s:Z

    :cond_65
    sget p0, Lcom/google/android/gms/internal/ads/zzxv;->r:I
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_6c

    monitor-exit v0

    if-eqz p0, :cond_6b

    return v2

    :cond_6b
    return v3

    :catchall_6c
    move-exception p0

    monitor-exit v0

    goto :goto_70

    :goto_6f
    throw p0

    :goto_70
    goto :goto_6f
.end method


# virtual methods
.method public final release()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->p:Lcom/google/android/gms/internal/ads/zzxt;

    .line 2
    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->q:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->p:Lcom/google/android/gms/internal/ads/zzxt;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxt;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->q:Z

    .line 4
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method
