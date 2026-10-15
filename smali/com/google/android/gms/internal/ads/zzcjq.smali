###### Class com.google.android.gms.internal.ads.zzcjq (com.google.android.gms.internal.ads.zzcjq)
.class final Lcom/google/android/gms/internal/ads/zzcjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzewi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzchy;

.field private final b:Lcom/google/android/gms/internal/ads/zzcjq;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final d:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final e:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final f:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final g:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final h:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final i:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchy;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzcjp;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcjq;->b:Lcom/google/android/gms/internal/ads/zzcjq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjq;->a:Lcom/google/android/gms/internal/ads/zzchy;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgwz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjq;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgwz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjq;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgwz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjq;->e:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->w0(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object p5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeic;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcjq;->f:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->Y(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzexg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzexg;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcjq;->g:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->M(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->I(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeyz;->a()Lcom/google/android/gms/internal/ads/zzeyz;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzewg;

    move-object v0, v8

    move-object v1, p2

    move-object v4, p5

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzewg;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjq;->h:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->c0(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object v8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchy;->s0(Lcom/google/android/gms/internal/ads/zzchy;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object p1

    new-instance v9, Lcom/google/android/gms/internal/ads/zzeik;

    move-object v0, v9

    move-object v2, p4

    move-object v3, p3

    move-object v5, p5

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzeik;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V

    .line 7
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgwx;->b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjq;->i:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeij;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjq;->i:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeij;

    return-object v0
.end method
