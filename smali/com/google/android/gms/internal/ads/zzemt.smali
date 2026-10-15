###### Class com.google.android.gms.internal.ads.zzemt (com.google.android.gms.internal.ads.zzemt)
.class public final Lcom/google/android/gms/internal/ads/zzemt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Lcom/google/android/gms/internal/ads/zzdsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzdsf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemt;->b:Lcom/google/android/gms/internal/ads/zzdsf;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/zzemu;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemt;->b:Lcom/google/android/gms/internal/ads/zzdsf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsf;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzemt;->b:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdsf;->p()Z

    move-result v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->u()Lcom/google/android/gms/ads/internal/util/zzaw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/util/zzaw;->l()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzemt;->b:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdsf;->n()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzemu;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x17

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemt;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzems;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzems;-><init>(Lcom/google/android/gms/internal/ads/zzemt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzems (com.google.android.gms.internal.ads.zzems)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzems;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzemt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzemt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzems;->a:Lcom/google/android/gms/internal/ads/zzemt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzems;->a:Lcom/google/android/gms/internal/ads/zzemt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzemt;->a()Lcom/google/android/gms/internal/ads/zzemu;

    move-result-object v0

    return-object v0
.end method
