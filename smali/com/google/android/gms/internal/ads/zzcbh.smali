###### Class com.google.android.gms.internal.ads.zzcbh (com.google.android.gms.internal.ads.zzcbh)
.class public final Lcom/google/android/gms/internal/ads/zzcbh;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/internal/ads/zzcbf;


# static fields
.field private static final P:[F


# instance fields
.field private A:I

.field private B:Landroid/graphics/SurfaceTexture;

.field private C:Landroid/graphics/SurfaceTexture;

.field private D:I

.field private E:I

.field private F:I

.field private final G:Ljava/nio/FloatBuffer;

.field private final H:Ljava/util/concurrent/CountDownLatch;

.field private final I:Ljava/lang/Object;

.field private J:Ljavax/microedition/khronos/egl/EGL10;

.field private K:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private L:Ljavax/microedition/khronos/egl/EGLContext;

.field private M:Ljavax/microedition/khronos/egl/EGLSurface;

.field private volatile N:Z

.field private volatile O:Z

.field private final o:Lcom/google/android/gms/internal/ads/zzcbg;

.field private final p:[F

.field private final q:[F

.field private final r:[F

.field private final s:[F

.field private final t:[F

.field private final u:[F

.field private final v:[F

.field private w:F

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcbh;->P:[F

    return-void

    :array_a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "SphericalVideoProcessor"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbh;->P:[F

    .line 2
    array-length v1, v0

    const/16 v1, 0x30

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->G:Ljava/nio/FloatBuffer;

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->p:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->q:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->r:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->s:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->t:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->u:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->v:[F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->w:F

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->o:Lcom/google/android/gms/internal/ads/zzcbg;

    .line 8
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcbg;->a(Lcom/google/android/gms/internal/ads/zzcbf;)V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->H:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    return-void
.end method

.method private static final g(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SphericalVideoRenderer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method private static final h([F[F[F)V
    .registers 16

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    aget v2, p2, v0

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x3

    aget v5, p2, v4

    mul-float v3, v3, v5

    const/4 v5, 0x2

    aget v6, p1, v5

    const/4 v7, 0x6

    aget v8, p2, v7

    mul-float v6, v6, v8

    add-float/2addr v1, v3

    add-float/2addr v1, v6

    aput v1, p0, v0

    .line 2
    aget v1, p1, v0

    aget v3, p2, v2

    mul-float v1, v1, v3

    aget v3, p1, v2

    const/4 v6, 0x4

    aget v8, p2, v6

    mul-float v3, v3, v8

    aget v8, p1, v5

    const/4 v9, 0x7

    aget v10, p2, v9

    mul-float v8, v8, v10

    add-float/2addr v1, v3

    add-float/2addr v1, v8

    aput v1, p0, v2

    .line 3
    aget v1, p1, v0

    aget v3, p2, v5

    mul-float v1, v1, v3

    aget v3, p1, v2

    const/4 v8, 0x5

    aget v10, p2, v8

    mul-float v3, v3, v10

    aget v10, p1, v5

    const/16 v11, 0x8

    aget v12, p2, v11

    mul-float v10, v10, v12

    add-float/2addr v1, v3

    add-float/2addr v1, v10

    aput v1, p0, v5

    .line 4
    aget v1, p1, v4

    aget v3, p2, v0

    mul-float v1, v1, v3

    aget v3, p1, v6

    aget v10, p2, v4

    mul-float v3, v3, v10

    aget v10, p1, v8

    aget v12, p2, v7

    mul-float v10, v10, v12

    add-float/2addr v1, v3

    add-float/2addr v1, v10

    aput v1, p0, v4

    .line 5
    aget v1, p1, v4

    aget v3, p2, v2

    mul-float v1, v1, v3

    aget v3, p1, v6

    aget v10, p2, v6

    mul-float v3, v3, v10

    aget v10, p1, v8

    aget v12, p2, v9

    mul-float v10, v10, v12

    add-float/2addr v1, v3

    add-float/2addr v1, v10

    aput v1, p0, v6

    .line 6
    aget v1, p1, v4

    aget v3, p2, v5

    mul-float v1, v1, v3

    aget v3, p1, v6

    aget v10, p2, v8

    mul-float v3, v3, v10

    aget v10, p1, v8

    aget v12, p2, v11

    mul-float v10, v10, v12

    add-float/2addr v1, v3

    add-float/2addr v1, v10

    aput v1, p0, v8

    .line 7
    aget v1, p1, v7

    aget v0, p2, v0

    mul-float v1, v1, v0

    aget v0, p1, v9

    aget v3, p2, v4

    mul-float v0, v0, v3

    aget v3, p1, v11

    aget v4, p2, v7

    mul-float v3, v3, v4

    add-float/2addr v1, v0

    add-float/2addr v1, v3

    aput v1, p0, v7

    .line 8
    aget v0, p1, v7

    aget v1, p2, v2

    mul-float v0, v0, v1

    aget v1, p1, v9

    aget v2, p2, v6

    mul-float v1, v1, v2

    aget v2, p1, v11

    add-float/2addr v0, v1

    aget v1, p2, v9

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    aput v0, p0, v9

    .line 9
    aget v0, p1, v7

    aget v1, p2, v5

    mul-float v0, v0, v1

    aget v1, p1, v9

    aget v2, p2, v8

    mul-float v1, v1, v2

    aget p1, p1, v11

    aget p2, p2, v11

    mul-float p1, p1, p2

    add-float/2addr v0, v1

    add-float/2addr v0, p1

    aput v0, p0, v11

    return-void
.end method

.method private static final i([FF)V
    .registers 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    aput v1, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    aput v1, p0, v0

    const/4 v0, 0x2

    .line 3
    aput v1, p0, v0

    const/4 v0, 0x3

    .line 4
    aput v1, p0, v0

    float-to-double v2, p1

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p1, v4

    const/4 v0, 0x4

    aput p1, p0, v0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float p1, v4

    const/4 v0, 0x5

    aput p1, p0, v0

    const/4 p1, 0x6

    .line 7
    aput v1, p0, p1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x7

    aput p1, p0, v0

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/16 v0, 0x8

    aput p1, p0, v0

    return-void
.end method

.method private static final j([FF)V
    .registers 7

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    const/4 v2, 0x0

    aput p1, p0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float p1, v2

    const/4 v2, 0x1

    aput p1, p0, v2

    const/4 p1, 0x2

    const/4 v2, 0x0

    .line 3
    aput v2, p0, p1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p1, v3

    const/4 v3, 0x3

    aput p1, p0, v3

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x4

    aput p1, p0, v0

    const/4 p1, 0x5

    .line 6
    aput v2, p0, p1

    const/4 p1, 0x6

    .line 7
    aput v2, p0, p1

    const/4 p1, 0x7

    .line 8
    aput v2, p0, p1

    const/16 p1, 0x8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    aput v0, p0, p1

    return-void
.end method

.method private static final k(ILjava/lang/String;)I
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const-string v1, "createShader"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    if-eqz v0, :cond_59

    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string p1, "shaderSource"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string p1, "compileShader"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    const p1, 0x8b81

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 7
    invoke-static {v0, p1, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string p1, "getShaderiv"

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    aget p1, v1, v2

    if-nez p1, :cond_59

    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not compile shader "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SphericalVideoRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "deleteShader"

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    return v2

    :cond_59
    return v0
.end method


# virtual methods
.method public final a()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->C:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->H:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_b

    :catch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final b(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->A:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->z:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->N:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final c(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->A:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcbh;->z:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->C:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->O:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->C:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final e(FF)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->A:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->z:I

    const v2, 0x3fdf66f3

    mul-float p1, p1, v2

    mul-float p2, p2, v2

    if-le v0, v1, :cond_f

    int-to-float v0, v0

    goto :goto_10

    :cond_f
    int-to-float v0, v1

    :goto_10
    div-float/2addr p2, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->x:F

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->y:F

    const p2, -0x4036f025

    cmpg-float v0, p1, p2

    if-gez v0, :cond_28

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->y:F

    const p1, -0x4036f025

    :cond_28
    const p2, 0x3fc90fdb

    cmpl-float p1, p1, p2

    if-lez p1, :cond_31

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->y:F

    :cond_31
    return-void
.end method

.method final f()Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->M:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v3, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcbh;->M:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 2
    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    or-int/2addr v1, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->M:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->L:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_30

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 3
    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    or-int/2addr v1, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->L:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_3e

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    .line 4
    invoke-interface {v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    or-int/2addr v0, v1

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    return v0

    :cond_3e
    return v1
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->F:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->F:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    monitor-enter p1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final run()V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->C:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_39b

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_20

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    goto/16 :goto_87

    :cond_20
    new-array v1, v3, [I

    .line 3
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    .line 4
    invoke-interface {v7, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_1d

    :cond_2b
    new-array v0, v5, [I

    new-array v1, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v7, 0xb

    new-array v9, v7, [I

    fill-array-data v9, :array_3a6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v11, 0x1

    move-object v10, v1

    move-object v12, v0

    .line 5
    invoke-interface/range {v7 .. v12}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-nez v7, :cond_45

    :cond_43
    move-object v0, v4

    goto :goto_4b

    .line 6
    :cond_45
    aget v0, v0, v6

    if-lez v0, :cond_43

    aget-object v0, v1, v6

    :goto_4b
    if-nez v0, :cond_4e

    goto :goto_1d

    :cond_4e
    new-array v1, v2, [I

    .line 7
    fill-array-data v1, :array_3c0

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 8
    invoke-interface {v7, v8, v0, v9, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->L:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1d

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v7, :cond_66

    goto :goto_1d

    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->C:Landroid/graphics/SurfaceTexture;

    .line 9
    invoke-interface {v1, v7, v0, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->M:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1d

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_79

    goto :goto_1d

    :cond_79
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->L:Ljavax/microedition/khronos/egl/EGLContext;

    .line 10
    invoke-interface {v1, v7, v0, v0, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_1d

    :cond_86
    const/4 v0, 0x1

    .line 11
    :goto_87
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->c1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v7

    .line 13
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaj;->m()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a8

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    goto :goto_aa

    :cond_a8
    const-string v1, "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}"

    :goto_aa
    const v7, 0x8b31

    .line 16
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzcbh;->k(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b6

    :goto_b3
    const/4 v9, 0x0

    goto/16 :goto_138

    .line 17
    :cond_b6
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbar;->d1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v8

    .line 19
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbaj;->m()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d7

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v7

    .line 21
    check-cast v7, Ljava/lang/String;

    goto :goto_d9

    :cond_d7
    const-string v7, "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}"

    :goto_d9
    const v8, 0x8b30

    .line 22
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzcbh;->k(ILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e3

    goto :goto_b3

    :cond_e3
    const-string v8, "createProgram"

    .line 23
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v9

    .line 24
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    if-eqz v9, :cond_138

    .line 25
    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v1, "attachShader"

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    .line 27
    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v1, "attachShader"

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    .line 29
    invoke-static {v9}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v1, "linkProgram"

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    const v1, 0x8b82

    new-array v7, v5, [I

    .line 31
    invoke-static {v9, v1, v7, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v1, "getProgramiv"

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    aget v1, v7, v6

    if-eq v1, v5, :cond_130

    const-string v1, "SphericalVideoRenderer"

    const-string v7, "Could not link program: "

    .line 33
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {v9}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "SphericalVideoRenderer"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v1, "deleteProgram"

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    goto :goto_b3

    .line 37
    :cond_130
    invoke-static {v9}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const-string v1, "validateProgram"

    .line 38
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    .line 39
    :cond_138
    :goto_138
    iput v9, p0, Lcom/google/android/gms/internal/ads/zzcbh;->D:I

    .line 40
    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "useProgram"

    .line 41
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->D:I

    const-string v7, "aPosition"

    .line 42
    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0xc

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzcbh;->G:Ljava/nio/FloatBuffer;

    move v8, v1

    .line 43
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v7, "vertexAttribPointer"

    .line 44
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    .line 45
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "enableVertexAttribArray"

    .line 46
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    new-array v1, v5, [I

    .line 47
    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v7, "genTextures"

    .line 48
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    aget v1, v1, v6

    const v7, 0x8d65

    .line 49
    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v8, "bindTextures"

    .line 50
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    const/16 v8, 0x2800

    const/16 v9, 0x2601

    .line 51
    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    .line 52
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    const/16 v8, 0x2801

    .line 53
    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    .line 54
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    const/16 v8, 0x2802

    const v9, 0x812f

    .line 55
    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    .line 56
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    const/16 v8, 0x2803

    .line 57
    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v7, "texParameteri"

    .line 58
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->D:I

    const-string v8, "uVMat"

    .line 59
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->E:I

    const/16 v8, 0x9

    new-array v8, v8, [F

    fill-array-data v8, :array_3ca

    .line 60
    invoke-static {v7, v5, v6, v8, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->D:I

    if-eqz v0, :cond_36d

    if-nez v7, :cond_1c3

    goto/16 :goto_36d

    .line 61
    :cond_1c3
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 62
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 63
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->H:Ljava/util/concurrent/CountDownLatch;

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->o:Lcom/google/android/gms/internal/ads/zzcbg;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbg;->b()V

    :try_start_1d7
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzcbh;->N:Z

    :catch_1d9
    :goto_1d9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->O:Z

    if-nez v0, :cond_318

    :goto_1dd
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->F:I

    if-lez v0, :cond_1ed

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 66
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->F:I

    goto :goto_1dd

    :cond_1ed
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->o:Lcom/google/android/gms/internal/ads/zzcbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->p:[F

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbg;->d([F)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v7, 0x4

    const v8, -0x4036f025

    if-eqz v0, :cond_267

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->w:F

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_25c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->p:[F

    new-array v9, v2, [F

    const/4 v10, 0x0

    aput v10, v9, v6

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v5

    aput v10, v9, v3

    new-array v10, v2, [F

    .line 69
    aget v11, v0, v6

    aget v12, v9, v6

    mul-float v11, v11, v12

    aget v13, v0, v5

    aget v14, v9, v5

    mul-float v13, v13, v14

    add-float/2addr v11, v13

    aget v13, v0, v3

    aget v9, v9, v3

    mul-float v13, v13, v9

    add-float/2addr v11, v13

    aput v11, v10, v6

    aget v11, v0, v2

    mul-float v11, v11, v12

    aget v13, v0, v7

    mul-float v13, v13, v14

    add-float/2addr v11, v13

    aget v13, v0, v1

    mul-float v13, v13, v9

    add-float/2addr v11, v13

    aput v11, v10, v5

    const/4 v11, 0x6

    aget v11, v0, v11

    mul-float v11, v11, v12

    const/4 v12, 0x7

    aget v12, v0, v12

    mul-float v12, v12, v14

    add-float/2addr v11, v12

    const/16 v12, 0x8

    aget v0, v0, v12

    mul-float v0, v0, v9

    add-float/2addr v11, v0

    aput v11, v10, v3

    aget v0, v10, v5

    float-to-double v11, v0

    aget v0, v10, v6

    float-to-double v9, v0

    .line 70
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v0, v9

    add-float/2addr v0, v8

    neg-float v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->w:F

    :cond_25c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->u:[F

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->w:F

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzcbh;->x:F

    add-float/2addr v8, v9

    .line 71
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzcbh;->j([FF)V

    goto :goto_273

    .line 72
    :cond_267
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->p:[F

    .line 73
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzcbh;->i([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->u:[F

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->x:F

    .line 74
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzcbh;->j([FF)V

    .line 75
    :goto_273
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->q:[F

    const v8, 0x3fc90fdb

    .line 76
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzcbh;->i([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->r:[F

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->u:[F

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcbh;->q:[F

    .line 77
    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzcbh;->h([F[F[F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->s:[F

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->p:[F

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcbh;->r:[F

    .line 78
    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzcbh;->h([F[F[F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->t:[F

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->y:F

    .line 79
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzcbh;->i([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->v:[F

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->t:[F

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcbh;->s:[F

    .line 80
    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzcbh;->h([F[F[F)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->E:I

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->v:[F

    .line 81
    invoke-static {v0, v5, v6, v8, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 82
    invoke-static {v1, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "drawArrays"

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->K:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->M:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 85
    invoke-interface {v0, v1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->N:Z

    if-eqz v0, :cond_2fe

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->A:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->z:I

    .line 86
    invoke-static {v6, v6, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "viewport"

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbh;->g(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->D:I

    const-string v1, "uFOVx"

    .line 88
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->D:I

    const-string v7, "uFOVy"

    .line 89
    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->A:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzcbh;->z:I

    const v9, 0x3f5f66f3

    if-le v7, v8, :cond_2f1

    .line 90
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->z:I

    int-to-float v0, v0

    mul-float v0, v0, v9

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcbh;->A:I

    int-to-float v7, v7

    div-float/2addr v0, v7

    .line 91
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_2fc

    :cond_2f1
    int-to-float v7, v7

    mul-float v7, v7, v9

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 92
    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 93
    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 94
    :goto_2fc
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzcbh;->N:Z
    :try_end_2fe
    .catch Ljava/lang/IllegalStateException; {:try_start_1d7 .. :try_end_2fe} :catch_347
    .catchall {:try_start_1d7 .. :try_end_2fe} :catchall_328

    :cond_2fe
    :try_start_2fe
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    .line 95
    monitor-enter v0
    :try_end_301
    .catch Ljava/lang/InterruptedException; {:try_start_2fe .. :try_end_301} :catch_1d9
    .catch Ljava/lang/IllegalStateException; {:try_start_2fe .. :try_end_301} :catch_347
    .catchall {:try_start_2fe .. :try_end_301} :catchall_328

    :try_start_301
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->O:Z

    if-nez v1, :cond_312

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->N:Z

    if-nez v1, :cond_312

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->F:I

    if-nez v1, :cond_312

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 97
    :cond_312
    monitor-exit v0

    goto/16 :goto_1d9

    :catchall_315
    move-exception v1

    monitor-exit v0
    :try_end_317
    .catchall {:try_start_301 .. :try_end_317} :catchall_315

    :try_start_317
    throw v1
    :try_end_318
    .catch Ljava/lang/InterruptedException; {:try_start_317 .. :try_end_318} :catch_1d9
    .catch Ljava/lang/IllegalStateException; {:try_start_317 .. :try_end_318} :catch_347
    .catchall {:try_start_317 .. :try_end_318} :catchall_328

    .line 98
    :cond_318
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->o:Lcom/google/android/gms/internal/ads/zzcbg;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbg;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 100
    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcbh;->f()Z

    return-void

    :catchall_328
    move-exception v0

    :try_start_329
    const-string v1, "SphericalVideoProcessor died."

    .line 102
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    const-string v2, "SphericalVideoProcessor.run.2"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_337
    .catchall {:try_start_329 .. :try_end_337} :catchall_35c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->o:Lcom/google/android/gms/internal/ads/zzcbg;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbg;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 105
    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcbh;->f()Z

    return-void

    :catch_347
    :try_start_347
    const-string v0, "SphericalVideoProcessor halted unexpectedly."

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_34c
    .catchall {:try_start_347 .. :try_end_34c} :catchall_35c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->o:Lcom/google/android/gms/internal/ads/zzcbg;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbg;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 109
    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcbh;->f()Z

    return-void

    :catchall_35c
    move-exception v0

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->o:Lcom/google/android/gms/internal/ads/zzcbg;

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbg;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 113
    invoke-virtual {v1, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcbh;->B:Landroid/graphics/SurfaceTexture;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcbh;->f()Z

    .line 115
    throw v0

    .line 116
    :cond_36d
    :goto_36d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->J:Ljavax/microedition/khronos/egl/EGL10;

    .line 117
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGL initialization failed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "SphericalVideoProcessor.run.1"

    .line 120
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcbh;->f()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->H:Ljava/util/concurrent/CountDownLatch;

    .line 122
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_39b
    const-string v0, "SphericalVideoProcessor started with no output texture."

    .line 123
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->H:Ljava/util/concurrent/CountDownLatch;

    .line 124
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :array_3a6
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3038
    .end array-data

    :array_3c0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_3ca
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->I:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
