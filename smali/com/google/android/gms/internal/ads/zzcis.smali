###### Class com.google.android.gms.internal.ads.zzcis (com.google.android.gms.internal.ads.zzcis)
.class final Lcom/google/android/gms/internal/ads/zzcis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeur;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/zzchy;

.field private final e:Lcom/google/android/gms/internal/ads/zzcis;

.field private final f:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final g:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final h:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final i:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final j:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final k:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchy;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzcir;)V
    .registers 15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcis;->e:Lcom/google/android/gms/internal/ads/zzcis;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcis;->d:Lcom/google/android/gms/internal/ads/zzchy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcis;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcis;->b:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcis;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgwz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcis;->f:Lcom/google/android/gms/internal/ads/zzgxl;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgwz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcis;->g:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->w0(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeic;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;)V

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcis;->h:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeih;->a()Lcom/google/android/gms/internal/ads/zzeih;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzcis;->i:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczm;->a()Lcom/google/android/gms/internal/ads/zzczm;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzcis;->j:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->M(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->I(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeyz;->a()Lcom/google/android/gms/internal/ads/zzeyz;

    move-result-object v7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeup;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzeup;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcis;->k:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzehh;
    .registers 9

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzehh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcis;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcis;->b:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcis;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->k:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeuo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->h:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeib;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->d:Lcom/google/android/gms/internal/ads/zzchy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchy;->D(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzcgg;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgg;->d()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzehh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeuo;Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzbzg;)V

    return-object v7
.end method
