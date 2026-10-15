###### Class com.google.android.gms.internal.ads.zzcpe (com.google.android.gms.internal.ads.zzcpe)
.class public final Lcom/google/android/gms/internal/ads/zzcpe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcor;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcor;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpe;->a:Lcom/google/android/gms/internal/ads/zzcor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpe;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpe;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqh;->a()Lcom/google/android/gms/internal/ads/zzcxd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcoq;

    .line 2
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcoq;-><init>(Lcom/google/android/gms/internal/ads/zzcxd;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdbu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzcoq (com.google.android.gms.internal.ads.zzcoq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcoq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczb;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcxd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcxd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoq;->o:Lcom/google/android/gms/internal/ads/zzcxd;

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->o:Lcom/google/android/gms/internal/ads/zzcxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxd;->zza()V

    return-void
.end method
