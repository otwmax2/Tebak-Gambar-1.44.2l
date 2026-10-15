###### Class com.google.android.gms.internal.ads.zzcox (com.google.android.gms.internal.ads.zzcox)
.class public final Lcom/google/android/gms/internal/ads/zzcox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcor;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final d:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final e:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcor;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->a:Lcom/google/android/gms/internal/ads/zzcor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcox;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcox;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcox;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcox;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcox;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgu;->a()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcox;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcrc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcrc;->a()Lcom/google/android/gms/internal/ads/zzeyc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcox;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcuf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcuf;->a()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object v3

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcor;->f(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyx;)Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    return-object v0
.end method
