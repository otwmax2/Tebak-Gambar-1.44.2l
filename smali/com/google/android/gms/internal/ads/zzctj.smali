###### Class com.google.android.gms.internal.ads.zzctj (com.google.android.gms.internal.ads.zzctj)
.class public final Lcom/google/android/gms/internal/ads/zzctj;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctj;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctj;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctj;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctj;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctj;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgu;->a()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctj;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcuf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcuf;->a()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcti;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcti;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzeyx;)V

    return-object v3
.end method

###### Class com.google.android.gms.internal.ads.zzcti (com.google.android.gms.internal.ads.zzcti)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbzg;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzeyx;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzeyx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcti;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcti;->b:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcti;->c:Lcom/google/android/gms/internal/ads/zzeyx;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcti;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcti;->b:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcti;->c:Lcom/google/android/gms/internal/ads/zzeyx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeyc;

    .line 1
    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzas;

    invoke-direct {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzas;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyc;->C:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/util/zzas;->p(Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->D:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzas;->q(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzas;->o(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, p1}, Lcom/google/android/gms/ads/internal/util/zzas;->n(Ljava/lang/String;)V

    return-object v3
.end method
