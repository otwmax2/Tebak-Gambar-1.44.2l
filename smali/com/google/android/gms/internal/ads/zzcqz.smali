###### Class com.google.android.gms.internal.ads.zzcqz (com.google.android.gms.internal.ads.zzcqz)
.class final Lcom/google/android/gms/internal/ads/zzcqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfuf;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzcra;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcra;Lcom/google/android/gms/internal/ads/zzfuf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqz;->b:Lcom/google/android/gms/internal/ads/zzcra;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqz;->a:Lcom/google/android/gms/internal/ads/zzfuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqz;->b:Lcom/google/android/gms/internal/ads/zzcra;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcra;->c(Lcom/google/android/gms/internal/ads/zzcra;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqz;->a:Lcom/google/android/gms/internal/ads/zzfuf;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfuf;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcqm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqz;->b:Lcom/google/android/gms/internal/ads/zzcra;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcra;->c(Lcom/google/android/gms/internal/ads/zzcra;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqz;->a:Lcom/google/android/gms/internal/ads/zzfuf;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfuf;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcqx (com.google.android.gms.internal.ads.zzcqx)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcra;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcra;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqx;->o:Lcom/google/android/gms/internal/ads/zzcra;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqx;->o:Lcom/google/android/gms/internal/ads/zzcra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->d()V

    return-void
.end method
