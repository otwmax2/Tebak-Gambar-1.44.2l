###### Class com.google.android.gms.internal.ads.zzdms (com.google.android.gms.internal.ads.zzdms)
.class public final Lcom/google/android/gms/internal/ads/zzdms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final d:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final e:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final f:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final g:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final h:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdms;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdms;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdms;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdms;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdms;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdms;->f:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdms;->g:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdms;->h:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 11

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzceu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzceu;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdms;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdms;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzapw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdms;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbbt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdms;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgu;->a()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zza;->a()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdms;->g:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzawe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdms;->h:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzcxd;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzdmq;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzdmq;-><init>(Lcom/google/android/gms/internal/ads/zzceu;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzcxd;)V

    return-object v9
.end method
