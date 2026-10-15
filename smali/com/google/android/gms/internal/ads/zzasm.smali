###### Class com.google.android.gms.internal.ads.zzasm (com.google.android.gms.internal.ads.zzasm)
.class public abstract Lcom/google/android/gms/internal/ads/zzasm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/google/android/gms/internal/ads/zzaqx;

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Lcom/google/android/gms/internal/ads/zzamv;

.field protected f:Ljava/lang/reflect/Method;

.field protected final g:I

.field protected final h:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasm;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzasm;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzasm;->g:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzasm;->h:I

    return-void
.end method


# virtual methods
.method protected abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public b()Ljava/lang/Void;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasm;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasm;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqx;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    if-nez v3, :cond_14

    return-object v0

    .line 3
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasm;->a()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaqx;->d()Lcom/google/android/gms/internal/ads/zzapr;

    move-result-object v4

    if-eqz v4, :cond_34

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzasm;->g:I

    const/high16 v3, -0x80000000

    if-eq v6, v3, :cond_34

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzasm;->h:I

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v7, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzapr;->c(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_34} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasm;->b()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
