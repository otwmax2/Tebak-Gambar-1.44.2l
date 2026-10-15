###### Class com.google.android.gms.internal.ads.zzbsd (com.google.android.gms.internal.ads.zzbsd)
.class final Lcom/google/android/gms/internal/ads/zzbsd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbsf;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lcom/google/android/gms/internal/ads/zzbsf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsd;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lcom/google/android/gms/internal/ads/zzbsf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsf;->g(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsd;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_d
    :try_start_d
    const-string v0, "AdMob exception reporter failed reporting the exception."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsd;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsd;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v1, :cond_20

    goto :goto_23

    :cond_20
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 5
    :goto_23
    throw v0
.end method
