###### Class com.google.android.gms.internal.ads.zzfkz (com.google.android.gms.internal.ads.zzfkz)
.class public final Lcom/google/android/gms/internal/ads/zzfkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfky;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfva;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfkx;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzfkx;-><init>(Lcom/google/android/gms/internal/ads/zzfky;)V

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzfkx (com.google.android.gms.internal.ads.zzfkx)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfky;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfky;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkx;->a:Lcom/google/android/gms/internal/ads/zzfky;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkx;->a:Lcom/google/android/gms/internal/ads/zzfky;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->cancel(Z)Z

    return-void

    .line 3
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfky;->h(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfky;->i(Ljava/lang/Throwable;)Z

    return-void

    .line 7
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
