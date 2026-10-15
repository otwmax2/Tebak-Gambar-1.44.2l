###### Class com.google.android.gms.internal.ads.zzdto (com.google.android.gms.internal.ads.zzdto)
.class public final Lcom/google/android/gms/internal/ads/zzdto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdto;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdto;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgj;->a()Landroid/content/Context;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdtl;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtl;-><init>(Lcom/google/android/gms/internal/ads/zzapw;Landroid/content/Context;)V

    .line 4
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdtl (com.google.android.gms.internal.ads.zzdtl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdtl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzapw;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzapw;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtl;->a:Lcom/google/android/gms/internal/ads/zzapw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtl;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtl;->a:Lcom/google/android/gms/internal/ads/zzapw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapw;->c()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaps;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
