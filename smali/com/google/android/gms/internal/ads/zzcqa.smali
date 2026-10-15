###### Class com.google.android.gms.internal.ads.zzcqa (com.google.android.gms.internal.ads.zzcqa)
.class public final Lcom/google/android/gms/internal/ads/zzcqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final d:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqa;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqa;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqa;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqa;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqa;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqa;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcpf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcpf;->a()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqa;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcrc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcrc;->a()Lcom/google/android/gms/internal/ads/zzeyc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcqa;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgu;->a()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcpz;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcpz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzbzg;)V

    return-object v4
.end method
