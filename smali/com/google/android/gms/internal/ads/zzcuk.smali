###### Class com.google.android.gms.internal.ads.zzcuk (com.google.android.gms.internal.ads.zzcuk)
.class public final Lcom/google/android/gms/internal/ads/zzcuk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcuj;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final d:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final e:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcuj;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->a:Lcom/google/android/gms/internal/ads/zzcuj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuk;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuk;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcuk;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgu;->a()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrc;->a()Lcom/google/android/gms/internal/ads/zzeyc;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbvx;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbvx;-><init>()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeyc;->B:Lcom/google/android/gms/internal/ads/zzbvy;

    const/4 v4, 0x0

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeyc;->t:Lcom/google/android/gms/internal/ads/zzeyh;

    if-nez v1, :cond_29

    move-object v5, v4

    goto :goto_2c

    .line 2
    :cond_29
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyh;->b:Ljava/lang/String;

    move-object v5, v1

    :goto_2c
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbvw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeyc;->B:Lcom/google/android/gms/internal/ads/zzbvy;

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbvw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzbvy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvx;[B)V

    move-object v4, v8

    :cond_36
    return-object v4
.end method
