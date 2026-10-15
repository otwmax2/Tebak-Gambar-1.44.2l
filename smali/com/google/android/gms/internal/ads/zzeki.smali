###### Class com.google.android.gms.internal.ads.zzeki (com.google.android.gms.internal.ads.zzeki)
.class public final Lcom/google/android/gms/internal/ads/zzeki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final c:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final d:Lcom/google/android/gms/internal/ads/zzbyn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzbyn;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeki;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeki;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeki;->c:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeki;->d:Lcom/google/android/gms/internal/ads/zzbyn;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/zzekj;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzekj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeki;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->j:Lcom/google/android/gms/ads/internal/client/zzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeki;->c:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeki;->d:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyn;->i()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzekj;-><init>(Lcom/google/android/gms/ads/internal/client/zzw;Lcom/google/android/gms/internal/ads/zzbzg;Z)V

    return-object v0
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeki;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzekh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>(Lcom/google/android/gms/internal/ads/zzeki;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzekh (com.google.android.gms.internal.ads.zzekh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzekh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeki;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeki;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekh;->a:Lcom/google/android/gms/internal/ads/zzeki;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh;->a:Lcom/google/android/gms/internal/ads/zzeki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeki;->a()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object v0

    return-object v0
.end method
