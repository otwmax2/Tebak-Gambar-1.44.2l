###### Class com.google.android.gms.internal.ads.zzcna (com.google.android.gms.internal.ads.zzcna)
.class final Lcom/google/android/gms/internal/ads/zzcna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzcnb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcnb;->g(Lcom/google/android/gms/internal/ads/zzcnb;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnb;->b(Lcom/google/android/gms/internal/ads/zzcnb;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcmz;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcmz;-><init>(Lcom/google/android/gms/internal/ads/zzcna;)V

    .line 2
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcmz (com.google.android.gms.internal.ads.zzcmz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcmz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcna;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcna;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmz;->o:Lcom/google/android/gms/internal/ads/zzcna;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmz;->o:Lcom/google/android/gms/internal/ads/zzcna;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcna;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnb;->a(Lcom/google/android/gms/internal/ads/zzcnb;)Lcom/google/android/gms/internal/ads/zzcng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcng;->f()V

    return-void
.end method
