###### Class com.google.android.gms.internal.ads.zzciu (com.google.android.gms.internal.ads.zzciu)
.class public final Lcom/google/android/gms/internal/ads/zzciu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzcgg;

.field private b:Lcom/google/android/gms/internal/ads/zzckh;

.field private c:Lcom/google/android/gms/internal/ads/zzfde;

.field private d:Lcom/google/android/gms/internal/ads/zzcku;

.field private e:Lcom/google/android/gms/internal/ads/zzezy;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcit;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzcgd;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->a:Lcom/google/android/gms/internal/ads/zzcgg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcgg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->b:Lcom/google/android/gms/internal/ads/zzckh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzckh;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->c:Lcom/google/android/gms/internal/ads/zzfde;

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfde;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfde;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->c:Lcom/google/android/gms/internal/ads/zzfde;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->d:Lcom/google/android/gms/internal/ads/zzcku;

    if-nez v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcku;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcku;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->d:Lcom/google/android/gms/internal/ads/zzcku;

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->e:Lcom/google/android/gms/internal/ads/zzezy;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzezy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzezy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciu;->e:Lcom/google/android/gms/internal/ads/zzezy;

    :cond_2f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciu;->a:Lcom/google/android/gms/internal/ads/zzcgg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzciu;->b:Lcom/google/android/gms/internal/ads/zzckh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzciu;->c:Lcom/google/android/gms/internal/ads/zzfde;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzciu;->d:Lcom/google/android/gms/internal/ads/zzcku;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzciu;->e:Lcom/google/android/gms/internal/ads/zzezy;

    const/4 v7, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzchy;-><init>(Lcom/google/android/gms/internal/ads/zzcgg;Lcom/google/android/gms/internal/ads/zzckh;Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzcku;Lcom/google/android/gms/internal/ads/zzezy;Lcom/google/android/gms/internal/ads/zzchx;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzcgg;)Lcom/google/android/gms/internal/ads/zzciu;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciu;->a:Lcom/google/android/gms/internal/ads/zzcgg;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzckh;)Lcom/google/android/gms/internal/ads/zzciu;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciu;->b:Lcom/google/android/gms/internal/ads/zzckh;

    return-object p0
.end method
