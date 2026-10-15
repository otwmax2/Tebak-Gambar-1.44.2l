###### Class com.google.android.gms.internal.ads.zzdek (com.google.android.gms.internal.ads.zzdek)
.class public final Lcom/google/android/gms/internal/ads/zzdek;
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


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdek;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdek;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdek;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdek;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdek;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdek;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzddm;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddm;->a()Lcom/google/android/gms/internal/ads/zzbwn;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdek;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdek;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbxf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdek;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzddd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddd;->a()Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdek;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzawo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdej;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdej;-><init>(Lcom/google/android/gms/internal/ads/zzbwn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbxf;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawo;)V

    return-object v0
.end method
