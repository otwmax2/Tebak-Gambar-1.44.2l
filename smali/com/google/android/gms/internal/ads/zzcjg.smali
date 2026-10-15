###### Class com.google.android.gms.internal.ads.zzcjg (com.google.android.gms.internal.ads.zzcjg)
.class final Lcom/google/android/gms/internal/ads/zzcjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqr;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzbim;

.field private final c:Lcom/google/android/gms/internal/ads/zzchy;

.field private final d:Lcom/google/android/gms/internal/ads/zzcjg;

.field private final e:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final f:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final g:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final h:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchy;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbim;Lcom/google/android/gms/internal/ads/zzcjf;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->d:Lcom/google/android/gms/internal/ads/zzcjg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->c:Lcom/google/android/gms/internal/ads/zzchy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjg;->b:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgwz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgwz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->f:Lcom/google/android/gms/internal/ads/zzgxl;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdqn;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzdqn;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjg;->g:Lcom/google/android/gms/internal/ads/zzgxl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdqp;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->h:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzcjg;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/zzcjg;)Lcom/google/android/gms/internal/ads/zzdqm;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->b:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqn;->b(Lcom/google/android/gms/internal/ads/zzbim;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d()Lcom/google/android/gms/internal/ads/zzdqo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->h:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqo;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdqi;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcja;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->c:Lcom/google/android/gms/internal/ads/zzchy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->d:Lcom/google/android/gms/internal/ads/zzcjg;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcja;-><init>(Lcom/google/android/gms/internal/ads/zzchy;Lcom/google/android/gms/internal/ads/zzcjg;Lcom/google/android/gms/internal/ads/zzciz;)V

    return-object v0
.end method
